# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # VaultController
  class VaultController < BaseController
    # Creates a Payment Token from the given payment source and adds it to the
    # Vault of the associated customer.
    # @param [String] pay_pal_request_id Required parameter: The server stores
    # keys for 3 hours.
    # @param [PaymentTokenRequest] body Required parameter: Payment Token
    # creation with a financial instrument and an optional customer_id.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def payment_tokens_create(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v3/vault/payment-tokens',
                                     Server::DEFAULT)
                   .header_param(new_parameter(options['pay_pal_request_id'], key: 'PayPal-Request-Id'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(options['body']))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentTokenResponse.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Request is not well-formed, syntactically incorrect, or'\
                                  ' violates schema.',
                                 ErrorException)
                    .local_error('403',
                                 'Authorization failed due to insufficient permissions.',
                                 ErrorException)
                    .local_error('404',
                                 'Request contains reference to resources that do not exist.',
                                 ErrorException)
                    .local_error('422',
                                 'The requested action could not be performed, semantically'\
                                  ' incorrect, or failed business validation.',
                                 ErrorException)
                    .local_error('500',
                                 'An internal server error has occurred.',
                                 ErrorException))
        .execute
    end

    # Returns all payment tokens for a customer.
    # @param [String] customer_id Required parameter: A unique identifier
    # representing a specific customer in merchant's/partner's system or
    # records.
    # @param [Integer] page_size Optional parameter: A non-negative, non-zero
    # integer indicating the maximum number of results to return at one time.
    # @param [Integer] page Optional parameter: A non-negative, non-zero integer
    # representing the page of the results.
    # @param [TrueClass | FalseClass] total_required Optional parameter: A
    # boolean indicating total number of items (total_items) and pages
    # (total_pages) are expected to be returned in the response.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def customer_payment_tokens_get(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v3/vault/payment-tokens',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['customer_id'], key: 'customer_id'))
                   .query_param(new_parameter(options['page_size'], key: 'page_size'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['total_required'], key: 'total_required'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CustomerVaultPaymentTokensResponse.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Request is not well-formed, syntactically incorrect, or'\
                                  ' violates schema.',
                                 ErrorException)
                    .local_error('403',
                                 'Authorization failed due to insufficient permissions.',
                                 ErrorException)
                    .local_error('500',
                                 'An internal server error has occurred.',
                                 ErrorException))
        .execute
    end

    # Returns a readable representation of vaulted payment source associated
    # with the payment token id.
    # @param [String] id Required parameter: ID of the payment token.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def payment_tokens_get(id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v3/vault/payment-tokens/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentTokenResponse.method(:from_hash))
                    .is_api_response(true)
                    .local_error('403',
                                 'Authorization failed due to insufficient permissions.',
                                 ErrorException)
                    .local_error('404',
                                 'The specified resource does not exist.',
                                 ErrorException)
                    .local_error('422',
                                 'The requested action could not be performed, semantically'\
                                  ' incorrect, or failed business validation.',
                                 ErrorException)
                    .local_error('500',
                                 'An internal server error has occurred.',
                                 ErrorException))
        .execute
    end

    # Delete the payment token associated with the payment token id.
    # @param [String] id Required parameter: ID of the payment token.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def payment_tokens_delete(id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/v3/vault/payment-tokens/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
                                    .should_encode(true))
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .is_response_void(true)
                    .is_api_response(true)
                    .local_error('400',
                                 'Request is not well-formed, syntactically incorrect, or'\
                                  ' violates schema.',
                                 ErrorException)
                    .local_error('403',
                                 'Authorization failed due to insufficient permissions.',
                                 ErrorException)
                    .local_error('500',
                                 'An internal server error has occurred.',
                                 ErrorException))
        .execute
    end

    # Creates a Setup Token from the given payment source and adds it to the
    # Vault of the associated customer.
    # @param [String] pay_pal_request_id Required parameter: The server stores
    # keys for 3 hours.
    # @param [SetupTokenRequest] body Required parameter: Setup Token creation
    # with a instrument type optional financial instrument details and
    # customer_id.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def setup_tokens_create(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v3/vault/setup-tokens',
                                     Server::DEFAULT)
                   .header_param(new_parameter(options['pay_pal_request_id'], key: 'PayPal-Request-Id'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(options['body']))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SetupTokenResponse.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Request is not well-formed, syntactically incorrect, or'\
                                  ' violates schema.',
                                 ErrorException)
                    .local_error('403',
                                 'Authorization failed due to insufficient permissions.',
                                 ErrorException)
                    .local_error('422',
                                 'The requested action could not be performed, semantically'\
                                  ' incorrect, or failed business validation.',
                                 ErrorException)
                    .local_error('500',
                                 'An internal server error has occurred.',
                                 ErrorException))
        .execute
    end

    # Returns a readable representation of temporarily vaulted payment source
    # associated with the setup token id.
    # @param [String] id Required parameter: ID of the setup token.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def setup_tokens_get(id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v3/vault/setup-tokens/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(id, key: 'id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SetupTokenResponse.method(:from_hash))
                    .is_api_response(true)
                    .local_error('403',
                                 'Authorization failed due to insufficient permissions.',
                                 ErrorException)
                    .local_error('404',
                                 'The specified resource does not exist.',
                                 ErrorException)
                    .local_error('422',
                                 'The requested action could not be performed, semantically'\
                                  ' incorrect, or failed business validation.',
                                 ErrorException)
                    .local_error('500',
                                 'An internal server error has occurred.',
                                 ErrorException))
        .execute
    end
  end
end