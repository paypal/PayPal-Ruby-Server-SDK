# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The API caller can opt in to verify the card through PayPal offered
  # verification services (e.g. Smart Dollar Auth, 3DS).
  class CardVerification < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The method used for card verification.
    # @return [CardVerificationMethod]
    attr_accessor :method

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['method'] = 'method'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        method
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(method: CardVerificationMethod::SCA_WHEN_REQUIRED)
      @method = method unless method == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      method = hash['method'] ||= CardVerificationMethod::SCA_WHEN_REQUIRED

      # Create object from extracted values.
      CardVerification.new(method: method)
    end
  end
end
