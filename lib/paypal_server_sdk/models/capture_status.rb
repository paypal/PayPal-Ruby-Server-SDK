# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The status of the captured payment.
  class CaptureStatus
    CAPTURE_STATUS = [
      # TODO: Write general description for COMPLETED
      COMPLETED = 'COMPLETED'.freeze,

      # TODO: Write general description for DECLINED
      DECLINED = 'DECLINED'.freeze,

      # TODO: Write general description for PARTIALLY_REFUNDED
      PARTIALLY_REFUNDED = 'PARTIALLY_REFUNDED'.freeze,

      # TODO: Write general description for PENDING
      PENDING = 'PENDING'.freeze,

      # TODO: Write general description for REFUNDED
      REFUNDED = 'REFUNDED'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'FAILED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
