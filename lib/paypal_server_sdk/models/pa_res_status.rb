# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Transactions status result identifier. The outcome of the issuer's
  # authentication.
  class PaResStatus
    PA_RES_STATUS = [
      # Successful authentication.
      SUCCESSFULAUTHENTICATION = 'Y'.freeze,

      # Failed authentication / account not verified / transaction denied.
      FAILEDAUTHENTICATION = 'N'.freeze,

      # Unable to complete authentication.
      UNABLETOCOMPLETEAUTHENTICATION = 'U'.freeze,

      # Successful attempts transaction.
      SUCCESSFULATTEMPTSTRANSACTION = 'A'.freeze,

      # Challenge required for authentication.
      CHALLENGEREQUIRED = 'C'.freeze,

      # Authentication rejected (merchant must not submit for authorization).
      AUTHENTICATIONREJECTED = 'R'.freeze,

      # Challenge required; decoupled authentication confirmed.
      DECOUPLEDAUTHENTICATION = 'D'.freeze,

      # Informational only; 3DS requestor challenge preference acknowledged.
      INFORMATIONALONLY = 'I'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
