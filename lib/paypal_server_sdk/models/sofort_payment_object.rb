# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Information used to pay using Sofort.
  class SofortPaymentObject < BaseModel
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

    # The business identification code (BIC). In payments systems, a BIC is used
    # to identify a specific business, most commonly a bank.
    # @return [String]
    attr_accessor :bic

    # The last characters of the IBAN used to pay.
    # @return [String]
    attr_accessor :iban_last_chars

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['country_code'] = 'country_code'
      @_hash['bic'] = 'bic'
      @_hash['iban_last_chars'] = 'iban_last_chars'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        country_code
        bic
        iban_last_chars
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name: SKIP, country_code: SKIP, bic: SKIP,
                   iban_last_chars: SKIP)
      @name = name unless name == SKIP
      @country_code = country_code unless country_code == SKIP
      @bic = bic unless bic == SKIP
      @iban_last_chars = iban_last_chars unless iban_last_chars == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      country_code = hash.key?('country_code') ? hash['country_code'] : SKIP
      bic = hash.key?('bic') ? hash['bic'] : SKIP
      iban_last_chars =
        hash.key?('iban_last_chars') ? hash['iban_last_chars'] : SKIP

      # Create object from extracted values.
      SofortPaymentObject.new(name: name,
                              country_code: country_code,
                              bic: bic,
                              iban_last_chars: iban_last_chars)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, country_code: #{@country_code}, bic: #{@bic},"\
      " iban_last_chars: #{@iban_last_chars}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, country_code: #{@country_code.inspect}, bic:"\
      " #{@bic.inspect}, iban_last_chars: #{@iban_last_chars.inspect}>"
    end
  end
end
