# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The collection of payments, or transactions, for a purchase unit in an
  # order. For example, authorized payments, captured payments, and refunds.
  class PaymentCollection < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # An array of authorized payments for a purchase unit. A purchase unit can
    # have zero or more authorized payments.
    # @return [Array[AuthorizationWithAdditionalData]]
    attr_accessor :authorizations

    # An array of captured payments for a purchase unit. A purchase unit can
    # have zero or more captured payments.
    # @return [Array[Capture]]
    attr_accessor :captures

    # An array of refunds for a purchase unit. A purchase unit can have zero or
    # more refunds.
    # @return [Array[Refund]]
    attr_accessor :refunds

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['authorizations'] = 'authorizations'
      @_hash['captures'] = 'captures'
      @_hash['refunds'] = 'refunds'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        authorizations
        captures
        refunds
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(authorizations: SKIP, captures: SKIP, refunds: SKIP)
      @authorizations = authorizations unless authorizations == SKIP
      @captures = captures unless captures == SKIP
      @refunds = refunds unless refunds == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      authorizations = nil
      unless hash['authorizations'].nil?
        authorizations = []
        hash['authorizations'].each do |structure|
          authorizations << (AuthorizationWithAdditionalData.from_hash(structure) if structure)
        end
      end

      authorizations = SKIP unless hash.key?('authorizations')
      # Parameter is an array, so we need to iterate through it
      captures = nil
      unless hash['captures'].nil?
        captures = []
        hash['captures'].each do |structure|
          captures << (Capture.from_hash(structure) if structure)
        end
      end

      captures = SKIP unless hash.key?('captures')
      # Parameter is an array, so we need to iterate through it
      refunds = nil
      unless hash['refunds'].nil?
        refunds = []
        hash['refunds'].each do |structure|
          refunds << (Refund.from_hash(structure) if structure)
        end
      end

      refunds = SKIP unless hash.key?('refunds')

      # Create object from extracted values.
      PaymentCollection.new(authorizations: authorizations,
                            captures: captures,
                            refunds: refunds)
    end
  end
end
