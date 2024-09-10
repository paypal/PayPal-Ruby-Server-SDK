# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Expected business/pricing model for the billing agreement.
  class PayPalPaymentTokenUsagePattern
    PAY_PAL_PAYMENT_TOKEN_USAGE_PATTERN = [
      # TODO: Write general description for IMMEDIATE
      IMMEDIATE = 'IMMEDIATE'.freeze,

      # TODO: Write general description for DEFERRED
      DEFERRED = 'DEFERRED'.freeze,

      # TODO: Write general description for RECURRING_PREPAID
      RECURRING_PREPAID = 'RECURRING_PREPAID'.freeze,

      # TODO: Write general description for RECURRING_POSTPAID
      RECURRING_POSTPAID = 'RECURRING_POSTPAID'.freeze,

      # TODO: Write general description for THRESHOLD_PREPAID
      THRESHOLD_PREPAID = 'THRESHOLD_PREPAID'.freeze,

      # TODO: Write general description for THRESHOLD_POSTPAID
      THRESHOLD_POSTPAID = 'THRESHOLD_POSTPAID'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
