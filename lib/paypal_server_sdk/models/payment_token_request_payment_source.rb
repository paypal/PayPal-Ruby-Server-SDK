# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The payment method to vault with the instrument details.
  class PaymentTokenRequestPaymentSource < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A Resource representing a request to vault a Card.
    # @return [PaymentTokenRequestCard]
    attr_accessor :card

    # The Tokenized Payment Source representing a Request to Vault a Token.
    # @return [VaultTokenRequest]
    attr_accessor :token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card'] = 'card'
      @_hash['token'] = 'token'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card
        token
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card: SKIP, token: SKIP)
      @card = card unless card == SKIP
      @token = token unless token == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card = PaymentTokenRequestCard.from_hash(hash['card']) if hash['card']
      token = VaultTokenRequest.from_hash(hash['token']) if hash['token']

      # Create object from extracted values.
      PaymentTokenRequestPaymentSource.new(card: card,
                                           token: token)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card: #{@card}, token: #{@token}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card: #{@card.inspect}, token: #{@token.inspect}>"
    end
  end
end
