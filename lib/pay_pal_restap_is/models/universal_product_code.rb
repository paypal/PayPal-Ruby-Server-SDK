# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The Universal Product Code of the item.
  class UniversalProductCode < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Universal Product Code type.
    # @return [UPCType]
    attr_accessor :type

    # The UPC product code of the item.
    # @return [String]
    attr_accessor :code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['code'] = 'code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type:, code:)
      @type = type
      @code = code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : nil
      code = hash.key?('code') ? hash['code'] : nil

      # Create object from extracted values.
      UniversalProductCode.new(type: type,
                               code: code)
    end
  end
end