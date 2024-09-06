# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v3.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class VaultControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.vault
  end

  def test_create_setup_token_400_status_code
    request = {
      'pay_pal_request_id' => '',
      'body' => SetupTokenRequest.new(payment_source: SetupTokenRequestPaymentSource.new)
    }
    exception = assert_raises ErrorException do
      @controller.setup_tokens_create(request)
    end

    refute_nil(exception.response)
    assert_equal(400, exception.response_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, exception.response.headers))
  end

  def test_create_payment_token_404_status_code
    request = {
      'pay_pal_request_id' => '',
      'body' => PaymentTokenRequest.new(payment_source: PaymentTokenRequestPaymentSource.new)
    }
    exception = assert_raises ErrorException do
      @controller.payment_tokens_create(request)
    end

    refute_nil(exception.response)
    assert_equal(404, exception.response_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, exception.response.headers))
  end

  def test_create_payment_token_400_status_code
    request = {
      'pay_pal_request_id' => '',
      'body' => PaymentTokenRequest.new(
        payment_source: PaymentTokenRequestPaymentSource.new(
          token: VaultTokenRequest.new(id: 'id0', type: TokenType::BILLING_AGREEMENT)
        )
      )
    }
    exception = assert_raises ErrorException do
      @controller.payment_tokens_create(request)
    end

    refute_nil(exception.response)
    assert_equal(400, exception.response_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, exception.response.headers))
  end

  def test_get_setup_token_400_status_code
    exception = assert_raises APIException do
      @controller.setup_tokens_get('\'id0')
    end

    refute_nil(exception.response)
    assert_equal(400, exception.response_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, exception.response.headers))
  end

  def test_get_setup_token_404_status_code
    exception = assert_raises APIException do
      @controller.setup_tokens_get('payment-1')
    end

    refute_nil(exception.response)
    assert_equal(404, exception.response_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, exception.response.headers))
  end

  def test_get_payment_token_400_status_code
    exception = assert_raises APIException do
      @controller.payment_tokens_get("'dw")
    end

    refute_nil(exception.response)
    assert_equal(400, exception.response_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, exception.response.headers))
  end

  def test_get_payment_token_404_status_code
    exception = assert_raises APIException do
      @controller.payment_tokens_get('payment-1')
    end

    refute_nil(exception.response)
    assert_equal(404, exception.response_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, exception.response.headers))
  end

  def test_get_customer_payment_token_404_status_code
    request = {
      'customer_id' => 'customer-1',
      'page_size' => 5,
      'page' => 1,
      'total_required' => false
    }

    exception = assert_raises APIException do
      @controller.customer_payment_tokens_get(request)
    end

    refute_nil(exception.response)
    assert_equal(404, exception.response_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, exception.response.headers))
  end

  def test_get_customer_payment_token_400_status_code
    request = {
      'customer_id' => "'dw",
      'page_size' => 5,
      'page' => 1,
      'total_required' => false
    }

    exception = assert_raises ErrorException do
      @controller.customer_payment_tokens_get(request)
    end

    refute_nil(exception.response)
    assert_equal(400, exception.response_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, exception.response.headers))
  end

  def test_delete_payment_token_204_status_code
    api_response = @controller.payment_tokens_delete('payment-1')

    refute_nil(api_response)
    assert_equal(204, api_response.status_code)
  end
end