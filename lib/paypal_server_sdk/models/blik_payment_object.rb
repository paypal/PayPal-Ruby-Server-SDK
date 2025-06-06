# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Information used to pay using BLIK.
  class BlikPaymentObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The full name representation like Mr J Smith.
    # @return [String]
    attr_accessor :name

    # The [two-character ISO 3166-1 code](/api/rest/reference/country-codes/)
    # that identifies the country or region. Note: The country code for Great
    # Britain is GB and not UK as used in the top-level domain names for that
    # country. Use the `C2` country code for China worldwide for comparable
    # uncontrolled price (CUP) method, bank card, and cross-border transactions.
    # @return [String]
    attr_accessor :country_code

    # The internationalized email address. Note: Up to 64 characters are allowed
    # before and 255 characters are allowed after the @ sign. However, the
    # generally accepted maximum length for an email address is 254 characters.
    # The pattern verifies that an unquoted @ sign exists.
    # @return [String]
    attr_accessor :email

    # Information used to pay using BLIK one-click flow.
    # @return [BlikOneClickPaymentObject]
    attr_accessor :one_click

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['country_code'] = 'country_code'
      @_hash['email'] = 'email'
      @_hash['one_click'] = 'one_click'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        country_code
        email
        one_click
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name: SKIP, country_code: SKIP, email: SKIP, one_click: SKIP)
      @name = name unless name == SKIP
      @country_code = country_code unless country_code == SKIP
      @email = email unless email == SKIP
      @one_click = one_click unless one_click == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      country_code = hash.key?('country_code') ? hash['country_code'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      one_click = BlikOneClickPaymentObject.from_hash(hash['one_click']) if hash['one_click']

      # Create object from extracted values.
      BlikPaymentObject.new(name: name,
                            country_code: country_code,
                            email: email,
                            one_click: one_click)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, country_code: #{@country_code}, email: #{@email},"\
      " one_click: #{@one_click}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, country_code: #{@country_code.inspect}, email:"\
      " #{@email.inspect}, one_click: #{@one_click.inspect}>"
    end
  end
end
