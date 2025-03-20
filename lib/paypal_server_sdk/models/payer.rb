# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Payer Model.
  class Payer < BaseModel
    SKIP = Object.new
    private_constant :SKIP

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

    # The stand-alone date, in [Internet date and time
    # format](https://tools.ietf.org/html/rfc3339#section-5.6). To represent
    # special legal values, such as a date of birth, you should use dates with
    # no associated time or time-zone data. Whenever possible, use the standard
    # `date_time` type. This regular expression does not validate all dates. For
    # example, February 31 is valid and nothing is known about leap years.
    # @return [String]
    attr_accessor :birth_date

    # The tax ID of the customer. The customer is also known as the payer. Both
    # `tax_id` and `tax_id_type` are required.
    # @return [TaxInfo]
    attr_accessor :tax_info

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
      @_hash['email_address'] = 'email_address'
      @_hash['payer_id'] = 'payer_id'
      @_hash['name'] = 'name'
      @_hash['phone'] = 'phone'
      @_hash['birth_date'] = 'birth_date'
      @_hash['tax_info'] = 'tax_info'
      @_hash['address'] = 'address'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        email_address
        payer_id
        name
        phone
        birth_date
        tax_info
        address
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(email_address: SKIP, payer_id: SKIP, name: SKIP, phone: SKIP,
                   birth_date: SKIP, tax_info: SKIP, address: SKIP)
      @email_address = email_address unless email_address == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @name = name unless name == SKIP
      @phone = phone unless phone == SKIP
      @birth_date = birth_date unless birth_date == SKIP
      @tax_info = tax_info unless tax_info == SKIP
      @address = address unless address == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      email_address = hash.key?('email_address') ? hash['email_address'] : SKIP
      payer_id = hash.key?('payer_id') ? hash['payer_id'] : SKIP
      name = Name.from_hash(hash['name']) if hash['name']
      phone = PhoneWithType.from_hash(hash['phone']) if hash['phone']
      birth_date = hash.key?('birth_date') ? hash['birth_date'] : SKIP
      tax_info = TaxInfo.from_hash(hash['tax_info']) if hash['tax_info']
      address = Address.from_hash(hash['address']) if hash['address']

      # Create object from extracted values.
      Payer.new(email_address: email_address,
                payer_id: payer_id,
                name: name,
                phone: phone,
                birth_date: birth_date,
                tax_info: tax_info,
                address: address)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} email_address: #{@email_address}, payer_id: #{@payer_id}, name: #{@name},"\
      " phone: #{@phone}, birth_date: #{@birth_date}, tax_info: #{@tax_info}, address:"\
      " #{@address}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} email_address: #{@email_address.inspect}, payer_id: #{@payer_id.inspect},"\
      " name: #{@name.inspect}, phone: #{@phone.inspect}, birth_date: #{@birth_date.inspect},"\
      " tax_info: #{@tax_info.inspect}, address: #{@address.inspect}>"
    end
  end
end
