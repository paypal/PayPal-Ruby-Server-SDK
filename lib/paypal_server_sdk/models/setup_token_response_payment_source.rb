# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The setup payment method details.
  class SetupTokenResponsePaymentSource < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [SetupTokenResponseCard]
    attr_accessor :card

    # TODO: Write general description for this method
    # @return [PayPalPaymentToken]
    attr_accessor :paypal

    # TODO: Write general description for this method
    # @return [VenmoPaymentToken]
    attr_accessor :venmo

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card'] = 'card'
      @_hash['paypal'] = 'paypal'
      @_hash['venmo'] = 'venmo'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card
        paypal
        venmo
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card: SKIP, paypal: SKIP, venmo: SKIP)
      @card = card unless card == SKIP
      @paypal = paypal unless paypal == SKIP
      @venmo = venmo unless venmo == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card = SetupTokenResponseCard.from_hash(hash['card']) if hash['card']
      paypal = PayPalPaymentToken.from_hash(hash['paypal']) if hash['paypal']
      venmo = VenmoPaymentToken.from_hash(hash['venmo']) if hash['venmo']

      # Create object from extracted values.
      SetupTokenResponsePaymentSource.new(card: card,
                                          paypal: paypal,
                                          venmo: venmo)
    end
  end
end
