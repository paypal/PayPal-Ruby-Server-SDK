# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Information needed to pay using Venmo.
  class VenmoWalletRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The PayPal-generated ID for the vaulted payment source. This ID should be
    # stored on the merchant's server so the saved payment source can be used
    # for future transactions.
    # @return [String]
    attr_accessor :vault_id

    # The internationalized email address. Note: Up to 64 characters are allowed
    # before and 255 characters are allowed after the @ sign. However, the
    # generally accepted maximum length for an email address is 254 characters.
    # The pattern verifies that an unquoted @ sign exists.
    # @return [String]
    attr_accessor :email_address

    # Customizes the buyer experience during the approval process for payment
    # with Venmo. Note: Partners and Marketplaces might configure
    # shipping_preference during partner account setup, which overrides the
    # request values.
    # @return [VenmoWalletExperienceContext]
    attr_accessor :experience_context

    # Additional attributes associated with the use of this Venmo Wallet.
    # @return [VenmoWalletAdditionalAttributes]
    attr_accessor :attributes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['vault_id'] = 'vault_id'
      @_hash['email_address'] = 'email_address'
      @_hash['experience_context'] = 'experience_context'
      @_hash['attributes'] = 'attributes'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        vault_id
        email_address
        experience_context
        attributes
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(vault_id: SKIP, email_address: SKIP,
                   experience_context: SKIP, attributes: SKIP)
      @vault_id = vault_id unless vault_id == SKIP
      @email_address = email_address unless email_address == SKIP
      @experience_context = experience_context unless experience_context == SKIP
      @attributes = attributes unless attributes == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      vault_id = hash.key?('vault_id') ? hash['vault_id'] : SKIP
      email_address = hash.key?('email_address') ? hash['email_address'] : SKIP
      experience_context = VenmoWalletExperienceContext.from_hash(hash['experience_context']) if
        hash['experience_context']
      attributes = VenmoWalletAdditionalAttributes.from_hash(hash['attributes']) if
        hash['attributes']

      # Create object from extracted values.
      VenmoWalletRequest.new(vault_id: vault_id,
                             email_address: email_address,
                             experience_context: experience_context,
                             attributes: attributes)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} vault_id: #{@vault_id}, email_address: #{@email_address},"\
      " experience_context: #{@experience_context}, attributes: #{@attributes}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} vault_id: #{@vault_id.inspect}, email_address: #{@email_address.inspect},"\
      " experience_context: #{@experience_context.inspect}, attributes: #{@attributes.inspect}>"
    end
  end
end
