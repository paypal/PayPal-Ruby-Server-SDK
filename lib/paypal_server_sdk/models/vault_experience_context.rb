# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Customizes the Vault creation flow experience for your customers.
  class VaultExperienceContext < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The label that overrides the business name in the PayPal account on the
    # PayPal site. The pattern is defined by an external party and supports
    # Unicode.
    # @return [String]
    attr_accessor :brand_name

    # The [language tag](https://tools.ietf.org/html/bcp47#section-2) for the
    # language in which to localize the error-related strings, such as messages,
    # issues, and suggested actions. The tag is made up of the [ISO 639-2
    # language code](https://www.loc.gov/standards/iso639-2/php/code_list.php),
    # the optional [ISO-15924 script
    # tag](https://www.unicode.org/iso15924/codelists.html), and the [ISO-3166
    # alpha-2 country code](/api/rest/reference/country-codes/) or [M49 region
    # code](https://unstats.un.org/unsd/methodology/m49/).
    # @return [String]
    attr_accessor :locale

    # The URL where the customer is redirected after customer approves leaves
    # the flow. It is a required field for contingency flows like PayPal wallet,
    # 3DS.
    # @return [String]
    attr_accessor :return_url

    # The URL where the customer is redirected after customer cancels or leaves
    # the flow. It is a required field for contingency flows like PayPal wallet,
    # 3DS.
    # @return [String]
    attr_accessor :cancel_url

    # The shipping preference. This only applies to PayPal payment source.
    # @return [String]
    attr_accessor :shipping_preference

    # Vault Instruction on action to be performed after a successful payer
    # approval.
    # @return [String]
    attr_accessor :vault_instruction

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand_name'] = 'brand_name'
      @_hash['locale'] = 'locale'
      @_hash['return_url'] = 'return_url'
      @_hash['cancel_url'] = 'cancel_url'
      @_hash['shipping_preference'] = 'shipping_preference'
      @_hash['vault_instruction'] = 'vault_instruction'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        brand_name
        locale
        return_url
        cancel_url
        shipping_preference
        vault_instruction
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(brand_name: SKIP, locale: SKIP, return_url: SKIP,
                   cancel_url: SKIP, shipping_preference: 'GET_FROM_FILE',
                   vault_instruction: 'ON_CREATE_PAYMENT_TOKENS')
      @brand_name = brand_name unless brand_name == SKIP
      @locale = locale unless locale == SKIP
      @return_url = return_url unless return_url == SKIP
      @cancel_url = cancel_url unless cancel_url == SKIP
      @shipping_preference = shipping_preference unless shipping_preference == SKIP
      @vault_instruction = vault_instruction unless vault_instruction == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand_name = hash.key?('brand_name') ? hash['brand_name'] : SKIP
      locale = hash.key?('locale') ? hash['locale'] : SKIP
      return_url = hash.key?('return_url') ? hash['return_url'] : SKIP
      cancel_url = hash.key?('cancel_url') ? hash['cancel_url'] : SKIP
      shipping_preference = hash['shipping_preference'] ||= 'GET_FROM_FILE'
      vault_instruction =
        hash['vault_instruction'] ||= 'ON_CREATE_PAYMENT_TOKENS'

      # Create object from extracted values.
      VaultExperienceContext.new(brand_name: brand_name,
                                 locale: locale,
                                 return_url: return_url,
                                 cancel_url: cancel_url,
                                 shipping_preference: shipping_preference,
                                 vault_instruction: vault_instruction)
    end
  end
end
