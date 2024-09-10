# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The funds that are held on behalf of the merchant.
  class DisbursementMode
    DISBURSEMENT_MODE = [
      # TODO: Write general description for INSTANT
      INSTANT = 'INSTANT'.freeze,

      # TODO: Write general description for DELAYED
      DELAYED = 'DELAYED'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
