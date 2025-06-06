# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Customizes the payer experience during the 3DS Approval for payment.
  class CardExperienceContext < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Describes the URL.
    # @return [String]
    attr_accessor :return_url

    # Describes the URL.
    # @return [String]
    attr_accessor :cancel_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['return_url'] = 'return_url'
      @_hash['cancel_url'] = 'cancel_url'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        return_url
        cancel_url
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(return_url: SKIP, cancel_url: SKIP)
      @return_url = return_url unless return_url == SKIP
      @cancel_url = cancel_url unless cancel_url == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      return_url = hash.key?('return_url') ? hash['return_url'] : SKIP
      cancel_url = hash.key?('cancel_url') ? hash['cancel_url'] : SKIP

      # Create object from extracted values.
      CardExperienceContext.new(return_url: return_url,
                                cancel_url: cancel_url)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} return_url: #{@return_url}, cancel_url: #{@cancel_url}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} return_url: #{@return_url.inspect}, cancel_url: #{@cancel_url.inspect}>"
    end
  end
end
