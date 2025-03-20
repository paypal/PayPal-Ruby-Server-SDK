# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # PaypalPaymentToken Model.
  class PaypalPaymentToken < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The description displayed to the consumer on the approval flow for a
    # digital wallet, as well as on the merchant view of the payment token
    # management experience. exp: PayPal.com.
    # @return [String]
    attr_accessor :description

    # Expected business/charge model for the billing agreement.
    # @return [UsagePattern]
    attr_accessor :usage_pattern

    # The shipping details.
    # @return [VaultedDigitalWalletShippingDetails]
    attr_accessor :shipping

    # Create multiple payment tokens for the same payer, merchant/platform
    # combination. Use this when the customer has not logged in at
    # merchant/platform. The payment token thus generated, can then also be used
    # to create the customer account at merchant/platform. Use this also when
    # multiple payment tokens are required for the same payer, different
    # customer at merchant/platform. This helps to identify customers distinctly
    # even though they may share the same PayPal account. This only applies to
    # PayPal payment source.
    # @return [TrueClass | FalseClass]
    attr_accessor :permit_multiple_payment_tokens

    # The usage type associated with a digital wallet payment token.
    # @return [PaypalPaymentTokenUsageType]
    attr_accessor :usage_type

    # The customer type associated with a digital wallet payment token. This is
    # to indicate whether the customer acting on the merchant / platform is
    # either a business or a consumer.
    # @return [PaypalPaymentTokenCustomerType]
    attr_accessor :customer_type

    # The internationalized email address. Note: Up to 64 characters are allowed
    # before and 255 characters are allowed after the @ sign. However, the
    # generally accepted maximum length for an email address is 254 characters.
    # The pattern verifies that an unquoted @ sign exists.
    # @return [String]
    attr_accessor :email_address

    # The account identifier for a PayPal account.
    # @return [String]
    attr_accessor :payer_id

    # The name of the party.
    # @return [Name]
    attr_accessor :name

    # The phone information.
    # @return [PhoneWithType]
    attr_accessor :phone

    # The portable international postal address. Maps to
    # [AddressValidationMetadata](https://github.com/googlei18n/libaddressinput/
    # wiki/AddressValidationMetadata) and HTML 5.1 [Autofilling form controls:
    # the autocomplete
    # attribute](https://www.w3.org/TR/html51/sec-forms.html#autofilling-form-co
    # ntrols-the-autocomplete-attribute).
    # @return [Address]
    attr_accessor :address

    # The account identifier for a PayPal account.
    # @return [String]
    attr_accessor :account_id

    # The phone number, in its canonical international [E.164 numbering plan
    # format](https://www.itu.int/rec/T-REC-E.164/en).
    # @return [Phone]
    attr_accessor :phone_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['description'] = 'description'
      @_hash['usage_pattern'] = 'usage_pattern'
      @_hash['shipping'] = 'shipping'
      @_hash['permit_multiple_payment_tokens'] =
        'permit_multiple_payment_tokens'
      @_hash['usage_type'] = 'usage_type'
      @_hash['customer_type'] = 'customer_type'
      @_hash['email_address'] = 'email_address'
      @_hash['payer_id'] = 'payer_id'
      @_hash['name'] = 'name'
      @_hash['phone'] = 'phone'
      @_hash['address'] = 'address'
      @_hash['account_id'] = 'account_id'
      @_hash['phone_number'] = 'phone_number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        description
        usage_pattern
        shipping
        permit_multiple_payment_tokens
        usage_type
        customer_type
        email_address
        payer_id
        name
        phone
        address
        account_id
        phone_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(description: SKIP, usage_pattern: SKIP, shipping: SKIP,
                   permit_multiple_payment_tokens: false, usage_type: SKIP,
                   customer_type: SKIP, email_address: SKIP, payer_id: SKIP,
                   name: SKIP, phone: SKIP, address: SKIP, account_id: SKIP,
                   phone_number: SKIP)
      @description = description unless description == SKIP
      @usage_pattern = usage_pattern unless usage_pattern == SKIP
      @shipping = shipping unless shipping == SKIP
      unless permit_multiple_payment_tokens == SKIP
        @permit_multiple_payment_tokens =
          permit_multiple_payment_tokens
      end
      @usage_type = usage_type unless usage_type == SKIP
      @customer_type = customer_type unless customer_type == SKIP
      @email_address = email_address unless email_address == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @name = name unless name == SKIP
      @phone = phone unless phone == SKIP
      @address = address unless address == SKIP
      @account_id = account_id unless account_id == SKIP
      @phone_number = phone_number unless phone_number == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      description = hash.key?('description') ? hash['description'] : SKIP
      usage_pattern = hash.key?('usage_pattern') ? hash['usage_pattern'] : SKIP
      shipping = VaultedDigitalWalletShippingDetails.from_hash(hash['shipping']) if
        hash['shipping']
      permit_multiple_payment_tokens =
        hash['permit_multiple_payment_tokens'] ||= false
      usage_type = hash.key?('usage_type') ? hash['usage_type'] : SKIP
      customer_type = hash.key?('customer_type') ? hash['customer_type'] : SKIP
      email_address = hash.key?('email_address') ? hash['email_address'] : SKIP
      payer_id = hash.key?('payer_id') ? hash['payer_id'] : SKIP
      name = Name.from_hash(hash['name']) if hash['name']
      phone = PhoneWithType.from_hash(hash['phone']) if hash['phone']
      address = Address.from_hash(hash['address']) if hash['address']
      account_id = hash.key?('account_id') ? hash['account_id'] : SKIP
      phone_number = Phone.from_hash(hash['phone_number']) if hash['phone_number']

      # Create object from extracted values.
      PaypalPaymentToken.new(description: description,
                             usage_pattern: usage_pattern,
                             shipping: shipping,
                             permit_multiple_payment_tokens: permit_multiple_payment_tokens,
                             usage_type: usage_type,
                             customer_type: customer_type,
                             email_address: email_address,
                             payer_id: payer_id,
                             name: name,
                             phone: phone,
                             address: address,
                             account_id: account_id,
                             phone_number: phone_number)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} description: #{@description}, usage_pattern: #{@usage_pattern}, shipping:"\
      " #{@shipping}, permit_multiple_payment_tokens: #{@permit_multiple_payment_tokens},"\
      " usage_type: #{@usage_type}, customer_type: #{@customer_type}, email_address:"\
      " #{@email_address}, payer_id: #{@payer_id}, name: #{@name}, phone: #{@phone}, address:"\
      " #{@address}, account_id: #{@account_id}, phone_number: #{@phone_number}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} description: #{@description.inspect}, usage_pattern:"\
      " #{@usage_pattern.inspect}, shipping: #{@shipping.inspect}, permit_multiple_payment_tokens:"\
      " #{@permit_multiple_payment_tokens.inspect}, usage_type: #{@usage_type.inspect},"\
      " customer_type: #{@customer_type.inspect}, email_address: #{@email_address.inspect},"\
      " payer_id: #{@payer_id.inspect}, name: #{@name.inspect}, phone: #{@phone.inspect}, address:"\
      " #{@address.inspect}, account_id: #{@account_id.inspect}, phone_number:"\
      " #{@phone_number.inspect}>"
    end
  end
end
