# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Any additional payments instructions during refund payment processing. This
  # object is only applicable to merchants that have been enabled for PayPal
  # Commerce Platform for Marketplaces and Platforms capability. Please speak to
  # your account manager if you want to use this capability.
  class RefundPaymentInstruction < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Specifies the amount that the API caller will contribute to the refund
    # being processed. The amount needs to be lower than platform_fees amount
    # originally captured or the amount that is remaining if multiple refunds
    # have been processed. This field is only applicable to merchants that have
    # been enabled for PayPal Commerce Platform for Marketplaces and Platforms
    # capability. Please speak to your account manager if you want to use this
    # capability.
    # @return [Array[RefundPlatformFee]]
    attr_accessor :platform_fees

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['platform_fees'] = 'platform_fees'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        platform_fees
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(platform_fees: SKIP)
      @platform_fees = platform_fees unless platform_fees == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      platform_fees = nil
      unless hash['platform_fees'].nil?
        platform_fees = []
        hash['platform_fees'].each do |structure|
          platform_fees << (RefundPlatformFee.from_hash(structure) if structure)
        end
      end

      platform_fees = SKIP unless hash.key?('platform_fees')

      # Create object from extracted values.
      RefundPaymentInstruction.new(platform_fees: platform_fees)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} platform_fees: #{@platform_fees}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} platform_fees: #{@platform_fees.inspect}>"
    end
  end
end
