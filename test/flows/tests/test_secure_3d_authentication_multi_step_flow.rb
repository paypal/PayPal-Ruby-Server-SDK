require_relative '../flow_test_base'
require 'securerandom'

class Secure3DAuthenticationMultiStepFlowTest < FlowTestBase

  def setup
    setup_class
    @orders_controller = @client.orders
  end

  def test_secure_3d_authentication_multi_step
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
                item_total: Money.new(currency_code: 'USD', value: '10.0'))
            ),
            description: 'Camera Shop',
            custom_id: 'testcustom_id',
            invoice_id: "invoic_number#{guid}",
            items: [
              Item.new(name: 'Levis 501 Selvedge STF',
                       unit_amount: Money.new(currency_code: 'USD', value: '5.00'),
                       quantity: '1',
                       tax: Money.new(currency_code: 'USD', value: '0.00'),
                       sku: '5158936'),
              Item.new(name: 'T-Shirt',
                       unit_amount: Money.new(currency_code: 'USD', value: '5.00'),
                       quantity: '1',
                       tax: Money.new(currency_code: 'USD', value: '0.00'),
                       sku: '1457432')
            ]
          )
        ]
      ),
      'pay_pal_request_id' => guid,
      'pay_pal_partner_attribution_id' => 'PayPal-Partner-Attribution-Id',
      'pay_pal_client_metadata_id' => 'PayPal-Client-Metadata-Id',
      'prefer' => 'return=representation'
    }

    order_api_response = @orders_controller.orders_create(request)
    assert_equal(201, order_api_response.status_code)

    request = {
      'id' => order_api_response.data.id,
      'prefer' => 'return=representation',
      'pay_pal_request_id' => guid,
      'pay_pal_client_metadata_id' => 'PayPal-Client-Metadata-Id',
      'body' => OrderCaptureRequest.new(
        payment_source: OrderCaptureRequestPaymentSource.new(
          card: CardRequest.new(
            name: 'John Doe',
            number: '4868719460707704',
            expiry: '2027-02',
            billing_address: Address.new(
              country_code: 'US',
              address_line_1: '2211 N First Street',
              admin_area_1: 'CA',
              admin_area_2: 'San Jose',
              postal_code: '95131'),
            attributes: CardAttributes.new(
              verification: CardVerification.new(
                method: CardVerificationMethod::SCA_ALWAYS)),
            experience_context: CardExperienceContext.new(
              return_url: 'https://example.com/returnUrl',
              cancel_url: 'https://example.com/cancelUrl'))
        )
      )
    }
    exception = assert_raises ErrorException do
      @orders_controller.orders_capture(request)
    end

    assert_equal(422, exception.response_code)

    current_path = @ui_flow_executor.complete_helios_verification(url: exception.links.at(0).href,
                                                                  submit_verification_form: false)
    assert_equal '/returnUrl', current_path

    request = {
      'id' => order_api_response.data.id,
      'prefer' => 'return=representation'
    }
    captured_order_api_response = @orders_controller.orders_capture(request)
    assert_equal(201, captured_order_api_response.status_code)

    order_api_response = @orders_controller.orders_get({'id' => order_api_response.data.id})
    assert_equal(200, order_api_response.status_code)
    refute_nil(order_api_response.data.payment_source)
    assert_equal(OrderStatus::COMPLETED, order_api_response.data.status)
    teardown
  end

  def teardown
    @ui_flow_executor.reset_browser_session
  end

end