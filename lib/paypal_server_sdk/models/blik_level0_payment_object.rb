# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Information used to pay using BLIK level_0 flow.
  class BlikLevel0PaymentObject < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The 6-digit code used to authenticate a consumer within BLIK.
    # @return [String]
    attr_accessor :auth_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['auth_code'] = 'auth_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(auth_code:)
      @auth_code = auth_code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      auth_code = hash.key?('auth_code') ? hash['auth_code'] : nil

      # Create object from extracted values.
      BlikLevel0PaymentObject.new(auth_code: auth_code)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} auth_code: #{@auth_code}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} auth_code: #{@auth_code.inspect}>"
    end
  end
end
