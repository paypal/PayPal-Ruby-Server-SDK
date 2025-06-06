# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Results of Authentication such as 3D Secure.
  class CardAuthenticationResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Results of 3D Secure Authentication.
    # @return [ThreeDSecureCardAuthenticationResponse]
    attr_accessor :three_d_secure

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['three_d_secure'] = 'three_d_secure'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        three_d_secure
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(three_d_secure: SKIP)
      @three_d_secure = three_d_secure unless three_d_secure == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      three_d_secure = ThreeDSecureCardAuthenticationResponse.from_hash(hash['three_d_secure']) if
        hash['three_d_secure']

      # Create object from extracted values.
      CardAuthenticationResponse.new(three_d_secure: three_d_secure)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} three_d_secure: #{@three_d_secure}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} three_d_secure: #{@three_d_secure.inspect}>"
    end
  end
end
