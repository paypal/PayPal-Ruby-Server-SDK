# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The customer type associated with the PayPal payment token. This is to
  # indicate whether the customer acting on the merchant / platform is either a
  # business or a consumer.
  class PayPalPaymentTokenCustomerType
    PAY_PAL_PAYMENT_TOKEN_CUSTOMER_TYPE = [
      # TODO: Write general description for CONSUMER
      CONSUMER = 'CONSUMER'.freeze,

      # TODO: Write general description for BUSINESS
      BUSINESS = 'BUSINESS'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
