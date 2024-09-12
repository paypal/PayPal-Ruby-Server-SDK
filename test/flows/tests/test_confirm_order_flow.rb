require_relative '../flow_test_base'
require 'securerandom'

class ConfirmOrderFlowTest < FlowTestBase

  def setup
    setup_class
    @orders_controller = @client.orders
  end

  def test_confirm_order_flow
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
      'prefer' => 'return=representation'
    }
    order_api_response = @orders_controller.orders_create(request)
    assert_equal(200, order_api_response.status_code)

    current_path = @ui_flow_executor.complete_payment(url: order_api_response.data.links.at(1).href)
    assert_equal '/returnUrl', current_path

    request = {
      'id' => order_api_response.data.id,
      'body' => ConfirmOrderRequest.new(
        payment_source: PaymentSource.new(
          paypal: PayPalWallet.new(
            email_address: 'customer@example.com',
            name: Name.new(given_name: 'John', surname: 'Doe'),
            experience_context: PayPalWalletExperienceContext.new(
              brand_name: 'EXAMPLE INC',
              locale: 'en-US',
              shipping_preference: ShippingPreference::SET_PROVIDED_ADDRESS,
              return_url: 'https://example.com/returnUrl',
              cancel_url: 'https://example.com/cancelUrl',
              landing_page: PayPalExperienceLandingPage::LOGIN,
              user_action: PayPalExperienceUserAction::PAY_NOW,
              payment_method_preference: PayeePaymentMethodPreference::IMMEDIATE_PAYMENT_REQUIRED)))),
      'prefer' => 'return=representation'
    }
    order_api_response = @orders_controller.orders_confirm(request)
    assert_equal(200, order_api_response.status_code)

    teardown
  end

  def teardown
    @ui_flow_executor.reset_browser_session
  end

end