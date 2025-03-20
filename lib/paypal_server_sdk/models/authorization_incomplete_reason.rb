# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The reason why the authorized status is `PENDING`.
  class AuthorizationIncompleteReason
    AUTHORIZATION_INCOMPLETE_REASON = [
      # Authorization is pending manual review.
      PENDING_REVIEW = 'PENDING_REVIEW'.freeze,

      # Risk Filter set by the payee failed for the transaction.
      DECLINED_BY_RISK_FRAUD_FILTERS = 'DECLINED_BY_RISK_FRAUD_FILTERS'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
