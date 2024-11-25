# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The shipping details.
  class ShippingDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of the party.
    # @return [ShippingName]
    attr_accessor :name

    # The phone number in its canonical international [E.164 numbering plan
    # format](https://www.itu.int/rec/T-REC-E.164/en).
    # @return [PhoneNumberWithCountryCode]
    attr_accessor :phone_number

    # A classification for the method of purchase fulfillment (e.g shipping,
    # in-store pickup, etc). Either `type` or `options` may be present, but not
    # both.
    # @return [FulfillmentType]
    attr_accessor :type

    # An array of shipping options that the payee or merchant offers to the
    # payer to ship or pick up their items.
    # @return [Array[ShippingOption]]
    attr_accessor :options

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
      @_hash['phone_number'] = 'phone_number'
      @_hash['type'] = 'type'
      @_hash['options'] = 'options'
      @_hash['address'] = 'address'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        phone_number
        type
        options
        address
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name: SKIP, phone_number: SKIP, type: SKIP, options: SKIP,
                   address: SKIP)
      @name = name unless name == SKIP
      @phone_number = phone_number unless phone_number == SKIP
      @type = type unless type == SKIP
      @options = options unless options == SKIP
      @address = address unless address == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = ShippingName.from_hash(hash['name']) if hash['name']
      phone_number = PhoneNumberWithCountryCode.from_hash(hash['phone_number']) if
        hash['phone_number']
      type = hash.key?('type') ? hash['type'] : SKIP
      # Parameter is an array, so we need to iterate through it
      options = nil
      unless hash['options'].nil?
        options = []
        hash['options'].each do |structure|
          options << (ShippingOption.from_hash(structure) if structure)
        end
      end

      options = SKIP unless hash.key?('options')
      address = Address.from_hash(hash['address']) if hash['address']

      # Create object from extracted values.
      ShippingDetails.new(name: name,
                          phone_number: phone_number,
                          type: type,
                          options: options,
                          address: address)
    end
  end
end
