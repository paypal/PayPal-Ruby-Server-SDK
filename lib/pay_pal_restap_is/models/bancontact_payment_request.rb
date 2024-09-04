# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Information needed to pay using Bancontact.
  class BancontactPaymentRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The full name representation like Mr J Smith.
    # @return [String]
    attr_accessor :name

    # The [two-character ISO 3166-1 code](/api/rest/reference/country-codes/)
    # that identifies the country or region.<blockquote><strong>Note:</strong>
    # The country code for Great Britain is <code>GB</code> and not
    # <code>UK</code> as used in the top-level domain names for that country.
    # Use the `C2` country code for China worldwide for comparable uncontrolled
    # price (CUP) method, bank card, and cross-border transactions.</blockquote>
    # @return [String]
    attr_accessor :country_code

    # Customizes the payer experience during the approval process for the
    # payment.
    # @return [ExperienceContext]
    attr_accessor :experience_context

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['country_code'] = 'country_code'
      @_hash['experience_context'] = 'experience_context'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        experience_context
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name:, country_code:, experience_context: SKIP)
      @name = name
      @country_code = country_code
      @experience_context = experience_context unless experience_context == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      country_code = hash.key?('country_code') ? hash['country_code'] : nil
      experience_context = ExperienceContext.from_hash(hash['experience_context']) if
        hash['experience_context']

      # Create object from extracted values.
      BancontactPaymentRequest.new(name: name,
                                   country_code: country_code,
                                   experience_context: experience_context)
    end
  end
end
