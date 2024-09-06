# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # VaultVenmoRequest Model.
  class VaultVenmoRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The description displayed to the consumer on the approval flow for a
    # digital wallet, as well as on the merchant view of the payment token
    # management experience. exp: PayPal.com.
    # @return [String]
    attr_accessor :description

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
    # @return [String]
    attr_accessor :usage_type

    # The customer type associated with a digital wallet payment token. This is
    # to indicate whether the customer acting on the merchant / platform is
    # either a business or a consumer.
    # @return [String]
    attr_accessor :customer_type

    # Customizes the Vault creation flow experience for your customers.
    # @return [VaultVenmoExperienceContext]
    attr_accessor :experience_context

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['description'] = 'description'
      @_hash['shipping'] = 'shipping'
      @_hash['permit_multiple_payment_tokens'] =
        'permit_multiple_payment_tokens'
      @_hash['usage_type'] = 'usage_type'
      @_hash['customer_type'] = 'customer_type'
      @_hash['experience_context'] = 'experience_context'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        description
        shipping
        permit_multiple_payment_tokens
        usage_type
        customer_type
        experience_context
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(description: SKIP, shipping: SKIP,
                   permit_multiple_payment_tokens: false, usage_type: SKIP,
                   customer_type: SKIP, experience_context: SKIP)
      @description = description unless description == SKIP
      @shipping = shipping unless shipping == SKIP
      unless permit_multiple_payment_tokens == SKIP
        @permit_multiple_payment_tokens =
          permit_multiple_payment_tokens
      end
      @usage_type = usage_type unless usage_type == SKIP
      @customer_type = customer_type unless customer_type == SKIP
      @experience_context = experience_context unless experience_context == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      description = hash.key?('description') ? hash['description'] : SKIP
      shipping = VaultedDigitalWalletShippingDetails.from_hash(hash['shipping']) if
        hash['shipping']
      permit_multiple_payment_tokens =
        hash['permit_multiple_payment_tokens'] ||= false
      usage_type = hash.key?('usage_type') ? hash['usage_type'] : SKIP
      customer_type = hash.key?('customer_type') ? hash['customer_type'] : SKIP
      experience_context = VaultVenmoExperienceContext.from_hash(hash['experience_context']) if
        hash['experience_context']

      # Create object from extracted values.
      VaultVenmoRequest.new(description: description,
                            shipping: shipping,
                            permit_multiple_payment_tokens: permit_multiple_payment_tokens,
                            usage_type: usage_type,
                            customer_type: customer_type,
                            experience_context: experience_context)
    end
  end
end
