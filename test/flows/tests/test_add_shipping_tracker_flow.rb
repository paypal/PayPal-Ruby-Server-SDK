require_relative '../flow_test_base'
require 'securerandom'

class AddShippingTrackerFlowTest < FlowTestBase

  def setup
    setup_class
    @orders_controller = @client.orders
  end

  def test_add_shipping_tracker_flow
    request = {
      'body' => OrderRequest.new(
        intent: CheckoutPaymentIntent::CAPTURE,
        purchase_units: [
          PurchaseUnitRequest.new(
            amount: AmountWithBreakdown.new(
              currency_code: 'USD',
              value: '10.00',
              breakdown: AmountBreakdown.new(
                item_total: Money.new(currency_code: 'USD', value: '10.0'),
                shipping: Money.new(currency_code: 'USD', value: '0.0'),
                tax_total: Money.new(currency_code: 'USD', value: '0'))
            ),
            description: 'Camera Shop',
            items: [
              Item.new(
                name: 'Levis 501 Selvedge STF',
                unit_amount: Money.new(currency_code: 'USD', value: '5.00'),
                quantity: '1',
                tax: Money.new(currency_code: 'USD', value: '0.00'),
                sku: '5158936'),
              Item.new(
                name: 'T-Shirt',
                unit_amount: Money.new(currency_code: 'USD', value: '5.00'),
                quantity: '1',
                tax: Money.new(currency_code: 'USD', value: '0.00'),
                sku: '1457432')
            ],
            shipping: ShippingDetails.new(
              address: Address.new(
                country_code: 'US',
                address_line_1: '123 Main Street',
                admin_area_1: 'CA',
                admin_area_2: 'San Jose',
                postal_code: '95131'))
          )
        ],
        payment_source: PaymentSource.new(
          paypal: PayPalWallet.new(
            experience_context: PayPalWalletExperienceContext.new(
              locale: 'en-US',
              return_url: 'https://example.com/returnUrl',
              cancel_url: 'https://example.com/cancelUrl')))
      ),
      'prefer' => 'return=representation'
    }
    order_api_response = @orders_controller.orders_create(request)
    assert_equal(200, order_api_response.status_code)

    current_path = @ui_flow_executor.complete_payment(url: order_api_response.data.links.at(1).href)
    assert_equal '/returnUrl', current_path

    request = {
      'id' => order_api_response.data.id,
      'prefer' => 'return=representation'
    }
    captured_order_api_response = @orders_controller.orders_capture(request)
    assert_equal(201, captured_order_api_response.status_code)

    request = {
      'id' => order_api_response.data.id,
      'body' => OrderTrackerRequest.new(
        capture_id: captured_order_api_response.data.purchase_units.at(0).payments.captures.at(0).id,
        tracking_number: '443844607820',
        carrier: ShipmentCarrier::FEDEX,
        notify_payer: false,
        items: [
          OrderTrackerItem.new(
            name: 'T-Shirt',
            quantity: '1',
            sku: 'sku02',
            url: 'https://www.example.com/example',
            image_url: 'https://www.example.com/example.jpg',
            upc: UniversalProductCode.new(
              type: UPCType::UPCA,
              code: 'upc001'))
        ])
    }
    tracked_order_api_response = @orders_controller.orders_track_create(request)
    assert_equal(201, tracked_order_api_response.status_code)

    request = {
      'id' => order_api_response.data.id,
      'tracker_id' => tracked_order_api_response.data.purchase_units.at(0).shipping.trackers.at(0).id,
      'body' => [Patch.new(op: PatchOp::REPLACE, path: '/notify_payer', value: true)]
    }
    order_tracker_api_response = @orders_controller.orders_trackers_patch(request)
    assert_equal(204, order_tracker_api_response.status_code)

    teardown
  end

  def teardown
    @ui_flow_executor.reset_browser_session
  end

end