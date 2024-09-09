# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The payment method to vault with the instrument details.
  class SetupTokenRequestPaymentSource < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A Resource representing a request to vault a Card.
    # @return [SetupTokenRequestCard]
    attr_accessor :card

    # A resource representing a request to vault PayPal Wallet.
    # @return [VaultPayPalWalletRequest]
    attr_accessor :paypal

    # A resource representing a request to vault PayPal Wallet.
    # @return [VaultVenmoRequest]
    attr_accessor :venmo

    # The Tokenized Payment Source representing a Request to Vault a Token.
    # @return [VaultTokenRequest]
    attr_accessor :token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card'] = 'card'
      @_hash['paypal'] = 'paypal'
      @_hash['venmo'] = 'venmo'
      @_hash['token'] = 'token'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card
        paypal
        venmo
        token
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card: SKIP, paypal: SKIP, venmo: SKIP, token: SKIP)
      @card = card unless card == SKIP
      @paypal = paypal unless paypal == SKIP
      @venmo = venmo unless venmo == SKIP
      @token = token unless token == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card = SetupTokenRequestCard.from_hash(hash['card']) if hash['card']
      paypal = VaultPayPalWalletRequest.from_hash(hash['paypal']) if hash['paypal']
      venmo = VaultVenmoRequest.from_hash(hash['venmo']) if hash['venmo']
      token = VaultTokenRequest.from_hash(hash['token']) if hash['token']

      # Create object from extracted values.
      SetupTokenRequestPaymentSource.new(card: card,
                                         paypal: paypal,
                                         venmo: venmo,
                                         token: token)
    end
  end
end
