# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Information needed to pay using ApplePay.
  class ApplePayRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # ApplePay transaction identifier, this will be the unique identifier for
    # this transaction provided by Apple. The pattern is defined by an external
    # party and supports Unicode.
    # @return [String]
    attr_accessor :id

    # The full name representation like Mr J Smith.
    # @return [String]
    attr_accessor :name

    # The internationalized email address.<blockquote><strong>Note:</strong> Up
    # to 64 characters are allowed before and 255 characters are allowed after
    # the <code>@</code> sign. However, the generally accepted maximum length
    # for an email address is 254 characters. The pattern verifies that an
    # unquoted <code>@</code> sign exists.</blockquote>
    # @return [String]
    attr_accessor :email_address

    # The phone number in its canonical international [E.164 numbering plan
    # format](https://www.itu.int/rec/T-REC-E.164/en).
    # @return [PhoneNumber]
    attr_accessor :phone_number

    # Information about the Payment data obtained by decrypting Apple Pay token.
    # @return [ApplePayDecryptedTokenData]
    attr_accessor :decrypted_token

    # Provides additional details to process a payment using a `card` that has
    # been stored or is intended to be stored (also referred to as
    # stored_credential or card-on-file).<br/>Parameter
    # compatibility:<br/><ul><li>`payment_type=ONE_TIME` is compatible only with
    # `payment_initiator=CUSTOMER`.</li><li>`usage=FIRST` is compatible only
    # with
    # `payment_initiator=CUSTOMER`.</li><li>`previous_transaction_reference` or
    # `previous_network_transaction_reference` is compatible only with
    # `payment_initiator=MERCHANT`.</li><li>Only one of the parameters -
    # `previous_transaction_reference` and
    # `previous_network_transaction_reference` - can be present in the
    # request.</li></ul>
    # @return [CardStoredCredential]
    attr_accessor :stored_credential

    # The PayPal-generated ID for the vaulted payment source. This ID should be
    # stored on the merchant's server so the saved payment source can be used
    # for future transactions.
    # @return [String]
    attr_accessor :vault_id

    # Additional attributes associated with apple pay.
    # @return [ApplePayAttributes]
    attr_accessor :attributes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['email_address'] = 'email_address'
      @_hash['phone_number'] = 'phone_number'
      @_hash['decrypted_token'] = 'decrypted_token'
      @_hash['stored_credential'] = 'stored_credential'
      @_hash['vault_id'] = 'vault_id'
      @_hash['attributes'] = 'attributes'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        email_address
        phone_number
        decrypted_token
        stored_credential
        vault_id
        attributes
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, name: SKIP, email_address: SKIP,
                   phone_number: SKIP, decrypted_token: SKIP,
                   stored_credential: SKIP, vault_id: SKIP, attributes: SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @email_address = email_address unless email_address == SKIP
      @phone_number = phone_number unless phone_number == SKIP
      @decrypted_token = decrypted_token unless decrypted_token == SKIP
      @stored_credential = stored_credential unless stored_credential == SKIP
      @vault_id = vault_id unless vault_id == SKIP
      @attributes = attributes unless attributes == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      email_address = hash.key?('email_address') ? hash['email_address'] : SKIP
      phone_number = PhoneNumber.from_hash(hash['phone_number']) if hash['phone_number']
      decrypted_token = ApplePayDecryptedTokenData.from_hash(hash['decrypted_token']) if
        hash['decrypted_token']
      stored_credential = CardStoredCredential.from_hash(hash['stored_credential']) if
        hash['stored_credential']
      vault_id = hash.key?('vault_id') ? hash['vault_id'] : SKIP
      attributes = ApplePayAttributes.from_hash(hash['attributes']) if hash['attributes']

      # Create object from extracted values.
      ApplePayRequest.new(id: id,
                          name: name,
                          email_address: email_address,
                          phone_number: phone_number,
                          decrypted_token: decrypted_token,
                          stored_credential: stored_credential,
                          vault_id: vault_id,
                          attributes: attributes)
    end
  end
end