# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Indicates the type of the stored payment_source payment.
  class StoredPaymentSourcePaymentType
    STORED_PAYMENT_SOURCE_PAYMENT_TYPE = [
      # TODO: Write general description for ONE_TIME
      ONE_TIME = 'ONE_TIME'.freeze,

      # TODO: Write general description for RECURRING
      RECURRING = 'RECURRING'.freeze,

      # TODO: Write general description for UNSCHEDULED
      UNSCHEDULED = 'UNSCHEDULED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end