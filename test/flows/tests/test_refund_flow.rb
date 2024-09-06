require_relative '../flow_test_base'
require 'securerandom'

class RefundFlowTest < FlowTestBase

  def setup
    setup_class
    @orders_controller = @client.orders
    @payments_controller = @client.payments
  end

  def test_refund_flow
    guid = SecureRandom.uuid
    request = {
      'body' => OrderRequest.new(
        intent: CheckoutPaymentIntent::CAPTURE,
        purchase_units: [
          PurchaseUnitRequest.new(
            amount: AmountWithBreakdown.new(
              currency_code: 'USD',
              value: '100.00'
            ),
            reference_id: 'd9f80740-38f0-11e8-b467-0ed5f89f718b'
          )
        ],
        payment_source: PaymentSource.new(
          paypal: PayPalWallet.new(
            experience_context: PayPalWalletExperienceContext.new(
              locale: 'en-US',
              return_url: 'https://example.com/returnUrl',
              cancel_url: 'https://example.com/cancelUrl',
              landing_page: PayPalExperienceLandingPage::LOGIN))
        )
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
      'prefer' => 'return=representation'
    }
    captured_order_api_response = @orders_controller.orders_capture(request)
    assert_equal(201, captured_order_api_response.status_code)

    request = {
      'capture_id' => captured_order_api_response.data.purchase_units.at(0)
                                                 .payments.captures.at(0).id,
      'pay_pal_request_id' => guid,
      'prefer' => 'return=representation'
    }

    refund_api_response = @payments_controller.captures_refund(request)
    assert_equal(201, refund_api_response.status_code)


    refund_api_response = @payments_controller.refunds_get(refund_api_response.data.id)
    assert_equal(200, refund_api_response.status_code)
    assert_equal(RefundStatus::COMPLETED, refund_api_response.data.status)

    teardown
  end

  def teardown
    @ui_flow_executor.reset_browser_session
  end

end