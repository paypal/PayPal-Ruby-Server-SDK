# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Customizes the Vault creation flow experience for your customers.
  class VaultVenmoExperienceContext < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The label that overrides the business name in the PayPal account on the
    # PayPal site. The pattern is defined by an external party and supports
    # Unicode.
    # @return [String]
    attr_accessor :brand_name

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
      @_hash['shipping_preference'] = 'shipping_preference'
      @_hash['vault_instruction'] = 'vault_instruction'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        brand_name
        shipping_preference
        vault_instruction
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(brand_name: SKIP, shipping_preference: 'GET_FROM_FILE',
                   vault_instruction: 'ON_CREATE_PAYMENT_TOKENS')
      @brand_name = brand_name unless brand_name == SKIP
      @shipping_preference = shipping_preference unless shipping_preference == SKIP
      @vault_instruction = vault_instruction unless vault_instruction == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand_name = hash.key?('brand_name') ? hash['brand_name'] : SKIP
      shipping_preference = hash['shipping_preference'] ||= 'GET_FROM_FILE'
      vault_instruction =
        hash['vault_instruction'] ||= 'ON_CREATE_PAYMENT_TOKENS'

      # Create object from extracted values.
      VaultVenmoExperienceContext.new(brand_name: brand_name,
                                      shipping_preference: shipping_preference,
                                      vault_instruction: vault_instruction)
    end
  end
end
