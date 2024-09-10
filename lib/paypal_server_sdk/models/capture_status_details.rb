# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The details of the captured payment status.
  class CaptureStatusDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The reason why the captured payment status is `PENDING` or `DENIED`.
    # @return [CaptureIncompleteReason]
    attr_accessor :reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reason'] = 'reason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        reason
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(reason: SKIP)
      @reason = reason unless reason == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      reason = hash.key?('reason') ? hash['reason'] : SKIP

      # Create object from extracted values.
      CaptureStatusDetails.new(reason: reason)
    end
  end
end
