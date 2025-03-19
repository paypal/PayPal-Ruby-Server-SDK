# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Type of card. i.e Credit, Debit and so on.
  class CardType
    CARD_TYPE = [
      # A credit card.
      CREDIT = 'CREDIT'.freeze,

      # A debit card.
      DEBIT = 'DEBIT'.freeze,

      # A Prepaid card.
      PREPAID = 'PREPAID'.freeze,

      # A store card.
      STORE = 'STORE'.freeze,

      # Card type cannot be determined.
      UNKNOWN = 'UNKNOWN'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
