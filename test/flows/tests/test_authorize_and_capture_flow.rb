require_relative '../flow_test_base'
require 'securerandom'

class AuthorizeAndCaptureFlowTest < FlowTestBase

  def setup
    setup_class
    @orders_controller = @client.orders
    @payments_controller = @client.payments
  end

  def test_authorize_and_capture_flow
    guid = SecureRandom.uuid
    request = {
      'body' => OrderRequest.new(
        intent: CheckoutPaymentIntent::AUTHORIZE,
        purchase_units: [
          PurchaseUnitRequest.new(
            amount: AmountWithBreakdown.new(
              currency_code: 'USD',
              value: '25.00',
              breakdown: AmountBreakdown.new(
                item_total: Money.new(currency_code: 'USD', value: '25.0'),
                shipping: Money.new(currency_code: 'USD', value: '0.0'),
                tax_total: Money.new(currency_code: 'USD', value: '0'))
            ),
            description: 'Clothing Shop',
            items: [
              Item.new(
                name: 'Levis 501',
                unit_amount: Money.new(currency_code: 'USD', value: '25.00'),
                quantity: '1',
                tax: Money.new(currency_code: 'USD', value: '0.00'),
                sku: '5158936')
            ]
          )
        ],
        payment_source: PaymentSource.new(
          paypal: PayPalWallet.new(
            experience_context: PayPalWalletExperienceContext.new(
              locale: 'en-US',
              return_url: 'https://example.com/returnUrl',
              cancel_url: 'https://example.com/cancelUrl',
              landing_page: PayPalExperienceLandingPage::LOGIN)))
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
    authorized_order_api_response = @orders_controller.orders_authorize(request)
    assert_equal(201, authorized_order_api_response.status_code)

    request = {
      'authorization_id' => authorized_order_api_response.data.purchase_units.at(0).payments.authorizations.at(0).id,
      'prefer' => 'return=representation',
      'body' => CaptureRequest.new(final_capture: false)
    }
    captured_payment_api_response = @payments_controller.authorizations_capture(request)
    assert_equal(201, captured_payment_api_response.status_code)

    authorized_payment_api_response = @payments_controller.authorizations_get(
      authorized_order_api_response.data.purchase_units.at(0).payments.authorizations.at(0).id)
    assert_equal(200, authorized_payment_api_response.status_code)
    assert_equal(AuthorizationStatus::CAPTURED, authorized_payment_api_response.data.status)

    captured_api_response = @payments_controller.captures_get(captured_payment_api_response.data.id)
    assert_equal(200, captured_api_response.status_code)
    assert_equal(CaptureStatus::COMPLETED, captured_api_response.data.status)

    teardown
  end

  def teardown
    @ui_flow_executor.reset_browser_session
  end
end
