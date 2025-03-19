# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The type of the payment credential. Currently, only CARD is supported.
  class GooglePayPaymentMethod
    GOOGLE_PAY_PAYMENT_METHOD = [
      # CARD is the only value that Google Pay accepts.
      CARD = 'CARD'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
