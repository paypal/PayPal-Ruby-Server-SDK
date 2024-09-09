# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Defines how and when the payment source gets vaulted.
  class StoreInVaultInstruction
    STORE_IN_VAULT_INSTRUCTION = [
      # TODO: Write general description for ON_SUCCESS
      ON_SUCCESS = 'ON_SUCCESS'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
