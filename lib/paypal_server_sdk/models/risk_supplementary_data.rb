# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Additional information necessary to evaluate the risk profile of a
  # transaction.
  class RiskSupplementaryData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Profile information of the sender or receiver.
    # @return [ParticipantMetadata]
    attr_accessor :customer

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer'] = 'customer'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customer: SKIP)
      @customer = customer unless customer == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer = ParticipantMetadata.from_hash(hash['customer']) if hash['customer']

      # Create object from extracted values.
      RiskSupplementaryData.new(customer: customer)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} customer: #{@customer}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} customer: #{@customer.inspect}>"
    end
  end
end
