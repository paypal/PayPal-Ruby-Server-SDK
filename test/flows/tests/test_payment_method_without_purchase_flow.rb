require_relative '../flow_test_base'
require 'securerandom'

class PaymentMethodWithoutPurchaseFlowTest < FlowTestBase

  def setup
    setup_class
    @orders_controller = @client.orders
    @vault_controller = @client.vault
  end

  def test_payment_method_without_purchase_flow
    guid = SecureRandom.uuid
    request = {
      'pay_pal_request_id' => guid,
      'body' => SetupTokenRequest.new(
        payment_source: SetupTokenRequestPaymentSource.new(
          paypal: VaultPayPalWalletRequest.new(
            description: "Description for PayPal to be shown to PayPal payer",
            permit_multiple_payment_tokens: true,
            usage_type: 'MERCHANT',
            customer_type: 'CONSUMER',
            experience_context: VaultExperienceContext.new(
              return_url: 'https://example.com/returnUrl',
              cancel_url: 'https://example.com/cancelUrl'))))
    }

    setup_token_api_response = @vault_controller.setup_tokens_create(request)
    assert_equal(201, setup_token_api_response.status_code)

    current_path = @ui_flow_executor.save_payment_method(
      url: setup_token_api_response.data.links.at(1).href)
    assert_equal '/returnUrl', current_path

    request = {
      'pay_pal_request_id' => guid,
      'body' => PaymentTokenRequest.new(
        payment_source: PaymentTokenRequestPaymentSource.new(
          token: VaultTokenRequest.new(
            id: setup_token_api_response.data.id,
            type: TokenType::SETUP_TOKEN
          )
        )
      )
    }
    payment_token_api_response = @vault_controller.payment_tokens_create(request)
    assert_equal(201, payment_token_api_response.status_code)

    request = {
      'body' => OrderRequest.new(
        intent: CheckoutPaymentIntent::CAPTURE,
        purchase_units: [
          PurchaseUnitRequest.new(
            amount: AmountWithBreakdown.new(
              currency_code: 'USD',
              value: '10.00'
            )
          )
        ],
        payment_source: PaymentSource.new(
          paypal: PayPalWallet.new(
            vault_id: payment_token_api_response.data.id
          )
        )
      ),
      'pay_pal_request_id' => guid,
      'prefer' => 'return=representation'
    }

    order_api_response = @orders_controller.orders_create(request)
    assert_equal(201, order_api_response.status_code)


    setup_token_api_response = @vault_controller.setup_tokens_get(setup_token_api_response.data.id)
    assert_equal(200, setup_token_api_response.status_code)
    assert_equal('VAULTED', setup_token_api_response.data.status)

    payment_token_api_response = @vault_controller.payment_tokens_get(payment_token_api_response.data.id)
    assert_equal(200, payment_token_api_response.status_code)
    refute_nil(payment_token_api_response)

    teardown
  end

  def teardown
    @ui_flow_executor.reset_browser_session
  end
end
