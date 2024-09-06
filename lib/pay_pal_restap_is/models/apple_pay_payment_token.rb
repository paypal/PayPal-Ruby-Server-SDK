# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # A resource representing a response for Apple Pay.
  class ApplePayPaymentToken < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The payment card to be used to fund a payment. Can be a credit or debit
    # card.
    # @return [ApplePayCard]
    attr_accessor :card

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card'] = 'card'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card: SKIP)
      @card = card unless card == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card = ApplePayCard.from_hash(hash['card']) if hash['card']

      # Create object from extracted values.
      ApplePayPaymentToken.new(card: card)
    end
  end
end
