# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Completes an capture payment for an order.
  class OrderCaptureRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The payment source definition.
    # @return [OrderCaptureRequestPaymentSource]
    attr_accessor :payment_source

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_source'] = 'payment_source'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payment_source
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(payment_source: SKIP)
      @payment_source = payment_source unless payment_source == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_source = OrderCaptureRequestPaymentSource.from_hash(hash['payment_source']) if
        hash['payment_source']

      # Create object from extracted values.
      OrderCaptureRequest.new(payment_source: payment_source)
    end
  end
end
