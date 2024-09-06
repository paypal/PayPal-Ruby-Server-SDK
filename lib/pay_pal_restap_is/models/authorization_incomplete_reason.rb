# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The reason why the authorized status is `PENDING`.
  class AuthorizationIncompleteReason
    AUTHORIZATION_INCOMPLETE_REASON = [
      # TODO: Write general description for PENDING_REVIEW
      PENDING_REVIEW = 'PENDING_REVIEW'.freeze,

      # TODO: Write general description for DECLINED_BY_RISK_FRAUD_FILTERS
      DECLINED_BY_RISK_FRAUD_FILTERS = 'DECLINED_BY_RISK_FRAUD_FILTERS'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end