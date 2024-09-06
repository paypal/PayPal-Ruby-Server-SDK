# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The payment card to use to fund a payment. Can be a credit or debit card.
  class ApplePayTokenizedCard < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The card holder's name as it appears on the card.
    # @return [String]
    attr_accessor :name

    # The primary account number (PAN) for the payment card.
    # @return [String]
    attr_accessor :number

    # The year and month, in ISO-8601 `YYYY-MM` date format. See [Internet date
    # and time format](https://tools.ietf.org/html/rfc3339#section-5.6).
    # @return [String]
    attr_accessor :expiry

    # The card network or brand. Applies to credit, debit, gift, and payment
    # cards.
    # @return [CardBrand]
    attr_accessor :card_type

    # Type of card. i.e Credit, Debit and so on.
    # @return [CardType]
    attr_accessor :type

    # The card network or brand. Applies to credit, debit, gift, and payment
    # cards.
    # @return [CardBrand]
    attr_accessor :brand

    # The portable international postal address. Maps to
    # [AddressValidationMetadata](https://github.com/googlei18n/libaddressinput/
    # wiki/AddressValidationMetadata) and HTML 5.1 [Autofilling form controls:
    # the autocomplete
    # attribute](https://www.w3.org/TR/html51/sec-forms.html#autofilling-form-co
    # ntrols-the-autocomplete-attribute).
    # @return [Address]
    attr_accessor :billing_address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['number'] = 'number'
      @_hash['expiry'] = 'expiry'
      @_hash['card_type'] = 'card_type'
      @_hash['type'] = 'type'
      @_hash['brand'] = 'brand'
      @_hash['billing_address'] = 'billing_address'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        number
        expiry
        card_type
        type
        brand
        billing_address
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name: SKIP, number: SKIP, expiry: SKIP, card_type: SKIP,
                   type: SKIP, brand: SKIP, billing_address: SKIP)
      @name = name unless name == SKIP
      @number = number unless number == SKIP
      @expiry = expiry unless expiry == SKIP
      @card_type = card_type unless card_type == SKIP
      @type = type unless type == SKIP
      @brand = brand unless brand == SKIP
      @billing_address = billing_address unless billing_address == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      number = hash.key?('number') ? hash['number'] : SKIP
      expiry = hash.key?('expiry') ? hash['expiry'] : SKIP
      card_type = hash.key?('card_type') ? hash['card_type'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      billing_address = Address.from_hash(hash['billing_address']) if hash['billing_address']

      # Create object from extracted values.
      ApplePayTokenizedCard.new(name: name,
                                number: number,
                                expiry: expiry,
                                card_type: card_type,
                                type: type,
                                brand: brand,
                                billing_address: billing_address)
    end
  end
end
