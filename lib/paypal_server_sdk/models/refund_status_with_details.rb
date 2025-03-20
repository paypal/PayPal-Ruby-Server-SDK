# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The refund status with details.
  class RefundStatusWithDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The status of the refund.
    # @return [RefundStatus]
    attr_accessor :status

    # The details of the refund status.
    # @return [RefundStatusDetails]
    attr_accessor :status_details

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash['status_details'] = 'status_details'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        status
        status_details
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(status: SKIP, status_details: SKIP)
      @status = status unless status == SKIP
      @status_details = status_details unless status_details == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('status') ? hash['status'] : SKIP
      status_details = RefundStatusDetails.from_hash(hash['status_details']) if
        hash['status_details']

      # Create object from extracted values.
      RefundStatusWithDetails.new(status: status,
                                  status_details: status_details)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} status: #{@status}, status_details: #{@status_details}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} status: #{@status.inspect}, status_details: #{@status_details.inspect}>"
    end
  end
end
