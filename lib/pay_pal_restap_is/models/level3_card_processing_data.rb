# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The level 3 card processing data collections, If your merchant account has
  # been configured for Level 3 processing this field will be passed to the
  # processor on your behalf. Please contact your PayPal Technical Account
  # Manager to define level 3 data for your business.
  class Level3CardProcessingData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :shipping_amount

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :duty_amount

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :discount_amount

    # The portable international postal address. Maps to
    # [AddressValidationMetadata](https://github.com/googlei18n/libaddressinput/
    # wiki/AddressValidationMetadata) and HTML 5.1 [Autofilling form controls:
    # the autocomplete
    # attribute](https://www.w3.org/TR/html51/sec-forms.html#autofilling-form-co
    # ntrols-the-autocomplete-attribute).
    # @return [Address]
    attr_accessor :shipping_address

    # Use this field to specify the postal code of the shipping location.
    # @return [String]
    attr_accessor :ships_from_postal_code

    # A list of the items that were purchased with this payment. If your
    # merchant account has been configured for Level 3 processing this field
    # will be passed to the processor on your behalf.
    # @return [Array[LineItem]]
    attr_accessor :line_items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['shipping_amount'] = 'shipping_amount'
      @_hash['duty_amount'] = 'duty_amount'
      @_hash['discount_amount'] = 'discount_amount'
      @_hash['shipping_address'] = 'shipping_address'
      @_hash['ships_from_postal_code'] = 'ships_from_postal_code'
      @_hash['line_items'] = 'line_items'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        shipping_amount
        duty_amount
        discount_amount
        shipping_address
        ships_from_postal_code
        line_items
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(shipping_amount: SKIP, duty_amount: SKIP,
                   discount_amount: SKIP, shipping_address: SKIP,
                   ships_from_postal_code: SKIP, line_items: SKIP)
      @shipping_amount = shipping_amount unless shipping_amount == SKIP
      @duty_amount = duty_amount unless duty_amount == SKIP
      @discount_amount = discount_amount unless discount_amount == SKIP
      @shipping_address = shipping_address unless shipping_address == SKIP
      @ships_from_postal_code = ships_from_postal_code unless ships_from_postal_code == SKIP
      @line_items = line_items unless line_items == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      shipping_amount = Money.from_hash(hash['shipping_amount']) if hash['shipping_amount']
      duty_amount = Money.from_hash(hash['duty_amount']) if hash['duty_amount']
      discount_amount = Money.from_hash(hash['discount_amount']) if hash['discount_amount']
      shipping_address = Address.from_hash(hash['shipping_address']) if hash['shipping_address']
      ships_from_postal_code =
        hash.key?('ships_from_postal_code') ? hash['ships_from_postal_code'] : SKIP
      # Parameter is an array, so we need to iterate through it
      line_items = nil
      unless hash['line_items'].nil?
        line_items = []
        hash['line_items'].each do |structure|
          line_items << (LineItem.from_hash(structure) if structure)
        end
      end

      line_items = SKIP unless hash.key?('line_items')

      # Create object from extracted values.
      Level3CardProcessingData.new(shipping_amount: shipping_amount,
                                   duty_amount: duty_amount,
                                   discount_amount: discount_amount,
                                   shipping_address: shipping_address,
                                   ships_from_postal_code: ships_from_postal_code,
                                   line_items: line_items)
    end
  end
end
