# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # PaymentsController
  class PaymentsController < BaseController
    # Shows details for an authorized payment, by ID.
    # @param [String] authorization_id Required parameter: The ID of the
    # authorized payment for which to show details.
    # @param [String] paypal_auth_assertion Optional parameter: An
    # API-caller-provided JSON Web Token (JWT) assertion that identifies the
    # merchant. For details, see
    # [PayPal-Auth-Assertion](/docs/api/reference/api-requests/#paypal-auth-asse
    # rtion).<blockquote><strong>Note:</strong>For three party transactions in
    # which a partner is managing the API calls on behalf of a merchant, the
    # partner must identify the merchant using either a PayPal-Auth-Assertion
    # header or an access token with target_subject.</blockquote>
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def authorizations_get(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v2/payments/authorizations/{authorization_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['authorization_id'], key: 'authorization_id')
                                    .should_encode(true))
                   .header_param(new_parameter(options['paypal_auth_assertion'], key: 'PayPal-Auth-Assertion'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentAuthorization.method(:from_hash))
                    .is_api_response(true)
                    .local_error('401',
                                 'Authentication failed due to missing authorization header, or'\
                                  ' invalid authentication credentials.',
                                 ErrorException)
                    .local_error('404',
                                 'The request failed because the resource does not exist.',
                                 ErrorException)
                    .local_error('500',
                                 'The request failed because an internal server error occurred.',
                                 APIException)
                    .local_error('default',
                                 'The error response.',
                                 ErrorException))
        .execute
    end

    # Captures an authorized payment, by ID.
    # @param [String] authorization_id Required parameter: The PayPal-generated
    # ID for the authorized payment to capture.
    # @param [String] paypal_request_id Optional parameter: The server stores
    # keys for 45 days.
    # @param [String] prefer Optional parameter: The preferred server response
    # upon successful completion of the request. Value
    # is:<ul><li><code>return=minimal</code>. The server returns a minimal
    # response to optimize communication between the API caller and the server.
    # A minimal response includes the <code>id</code>, <code>status</code> and
    # HATEOAS links.</li><li><code>return=representation</code>. The server
    # returns a complete resource representation, including the current state of
    # the resource.</li></ul>
    # @param [String] paypal_auth_assertion Optional parameter: An
    # API-caller-provided JSON Web Token (JWT) assertion that identifies the
    # merchant. For details, see
    # [PayPal-Auth-Assertion](/docs/api/reference/api-requests/#paypal-auth-asse
    # rtion).<blockquote><strong>Note:</strong>For three party transactions in
    # which a partner is managing the API calls on behalf of a merchant, the
    # partner must identify the merchant using either a PayPal-Auth-Assertion
    # header or an access token with target_subject.</blockquote>
    # @param [CaptureRequest] body Optional parameter: Example:
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def authorizations_capture(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/payments/authorizations/{authorization_id}/capture',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['authorization_id'], key: 'authorization_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(options['paypal_request_id'], key: 'PayPal-Request-Id'))
                   .header_param(new_parameter(options['prefer'], key: 'Prefer'))
                   .header_param(new_parameter(options['paypal_auth_assertion'], key: 'PayPal-Auth-Assertion'))
                   .body_param(new_parameter(options['body']))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CapturedPayment.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'The request failed because it is not well-formed or is'\
                                  ' syntactically incorrect or violates schema.',
                                 ErrorException)
                    .local_error('401',
                                 'Authentication failed due to missing authorization header, or'\
                                  ' invalid authentication credentials.',
                                 ErrorException)
                    .local_error('403',
                                 'The request failed because the caller has insufficient'\
                                  ' permissions.',
                                 ErrorException)
                    .local_error('404',
                                 'The request failed because the resource does not exist.',
                                 ErrorException)
                    .local_error('409',
                                 'The server has detected a conflict while processing this'\
                                  ' request.',
                                 ErrorException)
                    .local_error('422',
                                 'The request failed because it is semantically incorrect or'\
                                  ' failed business validation.',
                                 ErrorException)
                    .local_error('500',
                                 'The request failed because an internal server error occurred.',
                                 APIException)
                    .local_error('default',
                                 'The error response.',
                                 ErrorException))
        .execute
    end

    # Reauthorizes an authorized PayPal account payment, by ID. To ensure that
    # funds are still available, reauthorize a payment after its initial
    # three-day honor period expires. Within the 29-day authorization period,
    # you can issue multiple re-authorizations after the honor period
    # expires.<br/><br/>If 30 days have transpired since the date of the
    # original authorization, you must create an authorized payment instead of
    # reauthorizing the original authorized payment.<br/><br/>A reauthorized
    # payment itself has a new honor period of three days.<br/><br/>You can
    # reauthorize an authorized payment from 4 to 29 days after the 3-day honor
    # period. The allowed amount depends on context and geography, for example
    # in US it is up to 115% of the original authorized amount, not to exceed an
    # increase of $75 USD.<br/><br/>Supports only the `amount` request
    # parameter.<blockquote><strong>Note:</strong> This request is currently not
    # supported for Partner use cases.</blockquote>
    # @param [String] authorization_id Required parameter: The PayPal-generated
    # ID for the authorized payment to reauthorize.
    # @param [String] paypal_request_id Optional parameter: The server stores
    # keys for 45 days.
    # @param [String] prefer Optional parameter: The preferred server response
    # upon successful completion of the request. Value
    # is:<ul><li><code>return=minimal</code>. The server returns a minimal
    # response to optimize communication between the API caller and the server.
    # A minimal response includes the <code>id</code>, <code>status</code> and
    # HATEOAS links.</li><li><code>return=representation</code>. The server
    # returns a complete resource representation, including the current state of
    # the resource.</li></ul>
    # @param [String] paypal_auth_assertion Optional parameter: An
    # API-caller-provided JSON Web Token (JWT) assertion that identifies the
    # merchant. For details, see
    # [PayPal-Auth-Assertion](/docs/api/reference/api-requests/#paypal-auth-asse
    # rtion).<blockquote><strong>Note:</strong>For three party transactions in
    # which a partner is managing the API calls on behalf of a merchant, the
    # partner must identify the merchant using either a PayPal-Auth-Assertion
    # header or an access token with target_subject.</blockquote>
    # @param [ReauthorizeRequest] body Optional parameter: Example:
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def authorizations_reauthorize(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/payments/authorizations/{authorization_id}/reauthorize',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['authorization_id'], key: 'authorization_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(options['paypal_request_id'], key: 'PayPal-Request-Id'))
                   .header_param(new_parameter(options['prefer'], key: 'Prefer'))
                   .header_param(new_parameter(options['paypal_auth_assertion'], key: 'PayPal-Auth-Assertion'))
                   .body_param(new_parameter(options['body']))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentAuthorization.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'The request failed because it is not well-formed or is'\
                                  ' syntactically incorrect or violates schema.',
                                 ErrorException)
                    .local_error('401',
                                 'Authentication failed due to missing authorization header, or'\
                                  ' invalid authentication credentials.',
                                 ErrorException)
                    .local_error('404',
                                 'The request failed because the resource does not exist.',
                                 ErrorException)
                    .local_error('422',
                                 'The request failed because it either is semantically incorrect'\
                                  ' or failed business validation.',
                                 ErrorException)
                    .local_error('500',
                                 'The request failed because an internal server error occurred.',
                                 APIException)
                    .local_error('default',
                                 'The error response.',
                                 ErrorException))
        .execute
    end

    # Voids, or cancels, an authorized payment, by ID. You cannot void an
    # authorized payment that has been fully captured.
    # @param [String] authorization_id Required parameter: The PayPal-generated
    # ID for the authorized payment to void.
    # @param [String] paypal_auth_assertion Optional parameter: An
    # API-caller-provided JSON Web Token (JWT) assertion that identifies the
    # merchant. For details, see
    # [PayPal-Auth-Assertion](/docs/api/reference/api-requests/#paypal-auth-asse
    # rtion).<blockquote><strong>Note:</strong>For three party transactions in
    # which a partner is managing the API calls on behalf of a merchant, the
    # partner must identify the merchant using either a PayPal-Auth-Assertion
    # header or an access token with target_subject.</blockquote>
    # @param [String] paypal_request_id Optional parameter: The server stores
    # keys for 45 days.
    # @param [String] prefer Optional parameter: The preferred server response
    # upon successful completion of the request. Value
    # is:<ul><li><code>return=minimal</code>. The server returns a minimal
    # response to optimize communication between the API caller and the server.
    # A minimal response includes the <code>id</code>, <code>status</code> and
    # HATEOAS links.</li><li><code>return=representation</code>. The server
    # returns a complete resource representation, including the current state of
    # the resource.</li></ul>
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def authorizations_void(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/payments/authorizations/{authorization_id}/void',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['authorization_id'], key: 'authorization_id')
                                    .should_encode(true))
                   .header_param(new_parameter(options['paypal_auth_assertion'], key: 'PayPal-Auth-Assertion'))
                   .header_param(new_parameter(options['paypal_request_id'], key: 'PayPal-Request-Id'))
                   .header_param(new_parameter(options['prefer'], key: 'Prefer'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .is_nullable_response(true)
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(PaymentAuthorization.method(:from_hash))
                    .is_api_response(true)
                    .local_error('401',
                                 'Authentication failed due to missing authorization header, or'\
                                  ' invalid authentication credentials.',
                                 ErrorException)
                    .local_error('403',
                                 'The request failed because the caller has insufficient'\
                                  ' permissions.',
                                 ErrorException)
                    .local_error('404',
                                 'The request failed because the resource does not exist.',
                                 ErrorException)
                    .local_error('409',
                                 'The request failed because a previous call for the given'\
                                  ' resource is in progress.',
                                 ErrorException)
                    .local_error('422',
                                 'The request failed because it either is semantically incorrect'\
                                  ' or failed business validation.',
                                 ErrorException)
                    .local_error('500',
                                 'The request failed because an internal server error occurred.',
                                 APIException)
                    .local_error('default',
                                 'The error response.',
                                 ErrorException))
        .execute
    end

    # Shows details for a captured payment, by ID.
    # @param [String] capture_id Required parameter: The PayPal-generated ID for
    # the captured payment for which to show details.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def captures_get(capture_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v2/payments/captures/{capture_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(capture_id, key: 'capture_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CapturedPayment.method(:from_hash))
                    .is_api_response(true)
                    .local_error('401',
                                 'Authentication failed due to missing authorization header, or'\
                                  ' invalid authentication credentials.',
                                 ErrorException)
                    .local_error('403',
                                 'The request failed because the caller has insufficient'\
                                  ' permissions.',
                                 ErrorException)
                    .local_error('404',
                                 'The request failed because the resource does not exist.',
                                 ErrorException)
                    .local_error('500',
                                 'The request failed because an internal server error occurred.',
                                 APIException)
                    .local_error('default',
                                 'The error response.',
                                 ErrorException))
        .execute
    end

    # Refunds a captured payment, by ID. For a full refund, include an empty
    # payload in the JSON request body. For a partial refund, include an
    # <code>amount</code> object in the JSON request body.
    # @param [String] capture_id Required parameter: The PayPal-generated ID for
    # the captured payment to refund.
    # @param [String] paypal_request_id Optional parameter: The server stores
    # keys for 45 days.
    # @param [String] prefer Optional parameter: The preferred server response
    # upon successful completion of the request. Value
    # is:<ul><li><code>return=minimal</code>. The server returns a minimal
    # response to optimize communication between the API caller and the server.
    # A minimal response includes the <code>id</code>, <code>status</code> and
    # HATEOAS links.</li><li><code>return=representation</code>. The server
    # returns a complete resource representation, including the current state of
    # the resource.</li></ul>
    # @param [String] paypal_auth_assertion Optional parameter: An
    # API-caller-provided JSON Web Token (JWT) assertion that identifies the
    # merchant. For details, see
    # [PayPal-Auth-Assertion](/docs/api/reference/api-requests/#paypal-auth-asse
    # rtion).<blockquote><strong>Note:</strong>For three party transactions in
    # which a partner is managing the API calls on behalf of a merchant, the
    # partner must identify the merchant using either a PayPal-Auth-Assertion
    # header or an access token with target_subject.</blockquote>
    # @param [RefundRequest] body Optional parameter: Example:
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def captures_refund(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v2/payments/captures/{capture_id}/refund',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['capture_id'], key: 'capture_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(options['paypal_request_id'], key: 'PayPal-Request-Id'))
                   .header_param(new_parameter(options['prefer'], key: 'Prefer'))
                   .header_param(new_parameter(options['paypal_auth_assertion'], key: 'PayPal-Auth-Assertion'))
                   .body_param(new_parameter(options['body']))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Refund.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'The request failed because it is not well-formed or is'\
                                  ' syntactically incorrect or violates schema.',
                                 ErrorException)
                    .local_error('401',
                                 'Authentication failed due to missing authorization header, or'\
                                  ' invalid authentication credentials.',
                                 ErrorException)
                    .local_error('403',
                                 'The request failed because the caller has insufficient'\
                                  ' permissions.',
                                 ErrorException)
                    .local_error('404',
                                 'The request failed because the resource does not exist.',
                                 ErrorException)
                    .local_error('409',
                                 'The request failed because a previous call for the given'\
                                  ' resource is in progress.',
                                 ErrorException)
                    .local_error('422',
                                 'The request failed because it either is semantically incorrect'\
                                  ' or failed business validation.',
                                 ErrorException)
                    .local_error('500',
                                 'The request failed because an internal server error occurred.',
                                 APIException)
                    .local_error('default',
                                 'The error response.',
                                 ErrorException))
        .execute
    end

    # Shows details for a refund, by ID.
    # @param [String] refund_id Required parameter: The PayPal-generated ID for
    # the refund for which to show details.
    # @param [String] paypal_auth_assertion Optional parameter: An
    # API-caller-provided JSON Web Token (JWT) assertion that identifies the
    # merchant. For details, see
    # [PayPal-Auth-Assertion](/docs/api/reference/api-requests/#paypal-auth-asse
    # rtion).<blockquote><strong>Note:</strong>For three party transactions in
    # which a partner is managing the API calls on behalf of a merchant, the
    # partner must identify the merchant using either a PayPal-Auth-Assertion
    # header or an access token with target_subject.</blockquote>
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def refunds_get(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v2/payments/refunds/{refund_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['refund_id'], key: 'refund_id')
                                    .should_encode(true))
                   .header_param(new_parameter(options['paypal_auth_assertion'], key: 'PayPal-Auth-Assertion'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Oauth2')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Refund.method(:from_hash))
                    .is_api_response(true)
                    .local_error('401',
                                 'Authentication failed due to missing authorization header, or'\
                                  ' invalid authentication credentials.',
                                 ErrorException)
                    .local_error('403',
                                 'The request failed because the caller has insufficient'\
                                  ' permissions.',
                                 ErrorException)
                    .local_error('404',
                                 'The request failed because the resource does not exist.',
                                 ErrorException)
                    .local_error('500',
                                 'The request failed because an internal server error occurred.',
                                 APIException)
                    .local_error('default',
                                 'The error response.',
                                 ErrorException))
        .execute
    end
  end
end
