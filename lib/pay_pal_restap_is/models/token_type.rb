# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The tokenization method that generated the ID.
  class TokenType
    TOKEN_TYPE = [
      # TODO: Write general description for BILLING_AGREEMENT
      BILLING_AGREEMENT = 'BILLING_AGREEMENT'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
