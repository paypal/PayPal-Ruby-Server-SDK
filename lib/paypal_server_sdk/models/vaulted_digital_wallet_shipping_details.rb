# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The shipping details.
  class VaultedDigitalWalletShippingDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of the party.
    # @return [ShippingName]
    attr_accessor :name

    # A classification for the method of purchase fulfillment (e.g shipping,
    # in-store pickup, etc). Either `type` or `options` may be present, but not
    # both.
    # @return [FullfillmentType]
    attr_accessor :type

    # The portable international postal address. Maps to
    # [AddressValidationMetadata](https://github.com/googlei18n/libaddressinput/
    # wiki/AddressValidationMetadata) and HTML 5.1 [Autofilling form controls:
    # the autocomplete
    # attribute](https://www.w3.org/TR/html51/sec-forms.html#autofilling-form-co
    # ntrols-the-autocomplete-attribute).
    # @return [Address]
    attr_accessor :address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['type'] = 'type'
      @_hash['address'] = 'address'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        type
        address
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name: SKIP, type: SKIP, address: SKIP)
      @name = name unless name == SKIP
      @type = type unless type == SKIP
      @address = address unless address == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = ShippingName.from_hash(hash['name']) if hash['name']
      type = hash.key?('type') ? hash['type'] : SKIP
      address = Address.from_hash(hash['address']) if hash['address']

      # Create object from extracted values.
      VaultedDigitalWalletShippingDetails.new(name: name,
                                              type: type,
                                              address: address)
    end
  end
end
