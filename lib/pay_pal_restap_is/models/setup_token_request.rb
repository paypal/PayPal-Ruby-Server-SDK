# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Setup Token Request where the `source` defines the type of instrument to be
  # stored.
  class SetupTokenRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Customer in merchant's or partner's system of records.
    # @return [CustomerRequest]
    attr_accessor :customer

    # The payment method to vault with the instrument details.
    # @return [SetupTokenRequestPaymentSource]
    attr_accessor :payment_source

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer'] = 'customer'
      @_hash['payment_source'] = 'payment_source'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(payment_source:, customer: SKIP)
      @customer = customer unless customer == SKIP
      @payment_source = payment_source
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_source = SetupTokenRequestPaymentSource.from_hash(hash['payment_source']) if
        hash['payment_source']
      customer = CustomerRequest.from_hash(hash['customer']) if hash['customer']

      # Create object from extracted values.
      SetupTokenRequest.new(payment_source: payment_source,
                            customer: customer)
    end
  end
end
