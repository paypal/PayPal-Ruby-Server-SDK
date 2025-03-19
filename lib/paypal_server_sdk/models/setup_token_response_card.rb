# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # SetupTokenResponseCard Model.
  class SetupTokenResponseCard < BaseModel
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

    # The year and month, in ISO-8601 `YYYY-MM` date format. See [Internet date
    # and time format](https://tools.ietf.org/html/rfc3339#section-5.6).
    # @return [String]
    attr_accessor :expiry

    # Address request details.
    # @return [CardResponseAddress]
    attr_accessor :billing_address

    # Verification status of Card.
    # @return [CardVerificationStatus]
    attr_accessor :verification_status

    # Card Verification details including the authorization details and 3D
    # SECURE details.
    # @return [CardVerificationDetails]
    attr_accessor :verification

    # Previous network transaction reference including id in response.
    # @return [NetworkTransactionReferenceEntity]
    attr_accessor :network_transaction_reference

    # Results of Authentication such as 3D Secure.
    # @return [CardAuthenticationResponse]
    attr_accessor :authentication_result

    # Bank Identification Number (BIN) details used to fund a payment.
    # @return [BinDetails]
    attr_accessor :bin_details

    # Type of card. i.e Credit, Debit and so on.
    # @return [CardType]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['last_digits'] = 'last_digits'
      @_hash['brand'] = 'brand'
      @_hash['expiry'] = 'expiry'
      @_hash['billing_address'] = 'billing_address'
      @_hash['verification_status'] = 'verification_status'
      @_hash['verification'] = 'verification'
      @_hash['network_transaction_reference'] =
        'network_transaction_reference'
      @_hash['authentication_result'] = 'authentication_result'
      @_hash['bin_details'] = 'bin_details'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        last_digits
        brand
        expiry
        billing_address
        verification_status
        verification
        network_transaction_reference
        authentication_result
        bin_details
        type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name: SKIP, last_digits: SKIP, brand: SKIP, expiry: SKIP,
                   billing_address: SKIP, verification_status: SKIP,
                   verification: SKIP, network_transaction_reference: SKIP,
                   authentication_result: SKIP, bin_details: SKIP, type: SKIP)
      @name = name unless name == SKIP
      @last_digits = last_digits unless last_digits == SKIP
      @brand = brand unless brand == SKIP
      @expiry = expiry unless expiry == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @verification_status = verification_status unless verification_status == SKIP
      @verification = verification unless verification == SKIP
      unless network_transaction_reference == SKIP
        @network_transaction_reference =
          network_transaction_reference
      end
      @authentication_result = authentication_result unless authentication_result == SKIP
      @bin_details = bin_details unless bin_details == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      last_digits = hash.key?('last_digits') ? hash['last_digits'] : SKIP
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      expiry = hash.key?('expiry') ? hash['expiry'] : SKIP
      billing_address = CardResponseAddress.from_hash(hash['billing_address']) if
        hash['billing_address']
      verification_status =
        hash.key?('verification_status') ? hash['verification_status'] : SKIP
      verification = CardVerificationDetails.from_hash(hash['verification']) if
        hash['verification']
      if hash['network_transaction_reference']
        network_transaction_reference = NetworkTransactionReferenceEntity.from_hash(hash['network_transaction_reference'])
      end
      authentication_result = CardAuthenticationResponse.from_hash(hash['authentication_result']) if
        hash['authentication_result']
      bin_details = BinDetails.from_hash(hash['bin_details']) if hash['bin_details']
      type = hash.key?('type') ? hash['type'] : SKIP

      # Create object from extracted values.
      SetupTokenResponseCard.new(name: name,
                                 last_digits: last_digits,
                                 brand: brand,
                                 expiry: expiry,
                                 billing_address: billing_address,
                                 verification_status: verification_status,
                                 verification: verification,
                                 network_transaction_reference: network_transaction_reference,
                                 authentication_result: authentication_result,
                                 bin_details: bin_details,
                                 type: type)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, last_digits: #{@last_digits}, brand: #{@brand}, expiry:"\
      " #{@expiry}, billing_address: #{@billing_address}, verification_status:"\
      " #{@verification_status}, verification: #{@verification}, network_transaction_reference:"\
      " #{@network_transaction_reference}, authentication_result: #{@authentication_result},"\
      " bin_details: #{@bin_details}, type: #{@type}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, last_digits: #{@last_digits.inspect}, brand:"\
      " #{@brand.inspect}, expiry: #{@expiry.inspect}, billing_address:"\
      " #{@billing_address.inspect}, verification_status: #{@verification_status.inspect},"\
      " verification: #{@verification.inspect}, network_transaction_reference:"\
      " #{@network_transaction_reference.inspect}, authentication_result:"\
      " #{@authentication_result.inspect}, bin_details: #{@bin_details.inspect}, type:"\
      " #{@type.inspect}>"
    end
  end
end
