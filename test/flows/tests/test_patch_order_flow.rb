require_relative '../flow_test_base'
require 'securerandom'

class PatchOrderFlowTest < FlowTestBase

  def setup
    setup_class
    @orders_controller = @client.orders
    @payments_controller = @client.payments
  end

  def test_patch_order_flow
    guid = SecureRandom.uuid
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
      'pay_pal_request_id' => guid,
      'pay_pal_partner_attribution_id' => 'PayPal-Partner-Attribution-Id',
      'pay_pal_client_metadata_id' => 'PayPal-Client-Metadata-Id',
      'prefer' => 'return=representation'
    }

    order_api_response = @orders_controller.orders_create(request)
    assert_equal(200, order_api_response.status_code)

    current_path = @ui_flow_executor.complete_payment(url: order_api_response.data.links.at(1).href)
    assert_equal '/returnUrl', current_path

    request = {
      'id' => order_api_response.data.id,
      'body' => [
        Patch.new(
          op: PatchOp::REPLACE,
          path: "/purchase_units/@reference_id=='default'/shipping/address",
          value: {
            'address_line_1' => '1234 Main St',
            'address_line_2' => 'Floor 6',
            'admin_area_1' => 'CA',
            'admin_area_2' => 'San Francisco',
            'postal_code' => '94107',
            'country_code' => 'US'
          })
      ]
    }

    patched_order_api_response = @orders_controller.orders_patch(request)
    assert_equal(204, patched_order_api_response.status_code)

    order_api_response = @orders_controller.orders_get({'id' => order_api_response.data.id})
    assert_equal(200, order_api_response.status_code)
    assert_equal('1234 Main St', order_api_response.data.purchase_units.at(0).shipping.address.address_line_1)
    teardown
  end

  def teardown
    @ui_flow_executor.reset_browser_session
  end

end