# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The Card from Apple Pay Wallet used to fund the payment.
  class ApplePayCardResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The card holder's name as it appears on the card.
    # @return [String]
    attr_accessor :name

    # The last digits of the payment card.
    # @return [String]
    attr_accessor :last_digits

    # The card network or brand. Applies to credit, debit, gift, and payment
    # cards.
    # @return [CardBrand]
    attr_accessor :brand

    # Array of brands or networks associated with the card.
    # @return [Array[CardBrand]]
    attr_accessor :available_networks

    # Type of card. i.e Credit, Debit and so on.
    # @return [CardType]
    attr_accessor :type

    # Results of Authentication such as 3D Secure.
    # @return [AuthenticationResponse]
    attr_accessor :authentication_result

    # Additional attributes associated with the use of this card.
    # @return [CardAttributesResponse]
    attr_accessor :attributes

    # Representation of card details as received in the request.
    # @return [CardFromRequest]
    attr_accessor :from_request

    # The year and month, in ISO-8601 `YYYY-MM` date format. See [Internet date
    # and time format](https://tools.ietf.org/html/rfc3339#section-5.6).
    # @return [String]
    attr_accessor :expiry

    # Bank Identification Number (BIN) details used to fund a payment.
    # @return [BinDetails]
    attr_accessor :bin_details

    # The portable international postal address. Maps to
    # [AddressValidationMetadata](https://github.com/googlei18n/libaddressinput/
    # wiki/AddressValidationMetadata) and HTML 5.1 [Autofilling form controls:
    # the autocomplete
    # attribute](https://www.w3.org/TR/html51/sec-forms.html#autofilling-form-co
    # ntrols-the-autocomplete-attribute).
    # @return [Address]
    attr_accessor :billing_address

    # The [two-character ISO 3166-1 code](/api/rest/reference/country-codes/)
    # that identifies the country or region.<blockquote><strong>Note:</strong>
    # The country code for Great Britain is <code>GB</code> and not
    # <code>UK</code> as used in the top-level domain names for that country.
    # Use the `C2` country code for China worldwide for comparable uncontrolled
    # price (CUP) method, bank card, and cross-border transactions.</blockquote>
    # @return [String]
    attr_accessor :country_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['last_digits'] = 'last_digits'
      @_hash['brand'] = 'brand'
      @_hash['available_networks'] = 'available_networks'
      @_hash['type'] = 'type'
      @_hash['authentication_result'] = 'authentication_result'
      @_hash['attributes'] = 'attributes'
      @_hash['from_request'] = 'from_request'
      @_hash['expiry'] = 'expiry'
      @_hash['bin_details'] = 'bin_details'
      @_hash['billing_address'] = 'billing_address'
      @_hash['country_code'] = 'country_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        last_digits
        brand
        available_networks
        type
        authentication_result
        attributes
        from_request
        expiry
        bin_details
        billing_address
        country_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name: SKIP, last_digits: SKIP, brand: SKIP,
                   available_networks: SKIP, type: SKIP,
                   authentication_result: SKIP, attributes: SKIP,
                   from_request: SKIP, expiry: SKIP, bin_details: SKIP,
                   billing_address: SKIP, country_code: SKIP)
      @name = name unless name == SKIP
      @last_digits = last_digits unless last_digits == SKIP
      @brand = brand unless brand == SKIP
      @available_networks = available_networks unless available_networks == SKIP
      @type = type unless type == SKIP
      @authentication_result = authentication_result unless authentication_result == SKIP
      @attributes = attributes unless attributes == SKIP
      @from_request = from_request unless from_request == SKIP
      @expiry = expiry unless expiry == SKIP
      @bin_details = bin_details unless bin_details == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @country_code = country_code unless country_code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      last_digits = hash.key?('last_digits') ? hash['last_digits'] : SKIP
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      available_networks =
        hash.key?('available_networks') ? hash['available_networks'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      authentication_result = AuthenticationResponse.from_hash(hash['authentication_result']) if
        hash['authentication_result']
      attributes = CardAttributesResponse.from_hash(hash['attributes']) if hash['attributes']
      from_request = CardFromRequest.from_hash(hash['from_request']) if hash['from_request']
      expiry = hash.key?('expiry') ? hash['expiry'] : SKIP
      bin_details = BinDetails.from_hash(hash['bin_details']) if hash['bin_details']
      billing_address = Address.from_hash(hash['billing_address']) if hash['billing_address']
      country_code = hash.key?('country_code') ? hash['country_code'] : SKIP

      # Create object from extracted values.
      ApplePayCardResponse.new(name: name,
                               last_digits: last_digits,
                               brand: brand,
                               available_networks: available_networks,
                               type: type,
                               authentication_result: authentication_result,
                               attributes: attributes,
                               from_request: from_request,
                               expiry: expiry,
                               bin_details: bin_details,
                               billing_address: billing_address,
                               country_code: country_code)
    end
  end
end
