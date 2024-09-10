# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The name of the party.
  class ShippingName < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # When the party is a person, the party's full name.
    # @return [String]
    attr_accessor :full_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['full_name'] = 'full_name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        full_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(full_name: SKIP)
      @full_name = full_name unless full_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      full_name = hash.key?('full_name') ? hash['full_name'] : SKIP

      # Create object from extracted values.
      ShippingName.new(full_name: full_name)
    end
  end
end
