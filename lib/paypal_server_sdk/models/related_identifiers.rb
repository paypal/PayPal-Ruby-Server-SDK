# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Identifiers related to a specific resource.
  class RelatedIdentifiers < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Order ID related to the resource.
    # @return [String]
    attr_accessor :order_id

    # Authorization ID related to the resource.
    # @return [String]
    attr_accessor :authorization_id

    # Capture ID related to the resource.
    # @return [String]
    attr_accessor :capture_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['order_id'] = 'order_id'
      @_hash['authorization_id'] = 'authorization_id'
      @_hash['capture_id'] = 'capture_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        order_id
        authorization_id
        capture_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(order_id: SKIP, authorization_id: SKIP, capture_id: SKIP)
      @order_id = order_id unless order_id == SKIP
      @authorization_id = authorization_id unless authorization_id == SKIP
      @capture_id = capture_id unless capture_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      order_id = hash.key?('order_id') ? hash['order_id'] : SKIP
      authorization_id =
        hash.key?('authorization_id') ? hash['authorization_id'] : SKIP
      capture_id = hash.key?('capture_id') ? hash['capture_id'] : SKIP

      # Create object from extracted values.
      RelatedIdentifiers.new(order_id: order_id,
                             authorization_id: authorization_id,
                             capture_id: capture_id)
    end
  end
end
