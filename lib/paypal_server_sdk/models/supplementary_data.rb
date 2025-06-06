# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Supplementary data about a payment. This object passes information that can
  # be used to improve risk assessments and processing costs, for example, by
  # providing Level 2 and Level 3 payment data.
  class SupplementaryData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Merchants and partners can add Level 2 and 3 data to payments to reduce
    # risk and payment processing costs. For more information about processing
    # payments, see checkout or multiparty checkout.
    # @return [CardSupplementaryData]
    attr_accessor :card

    # Additional information necessary to evaluate the risk profile of a
    # transaction.
    # @return [RiskSupplementaryData]
    attr_accessor :risk

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card'] = 'card'
      @_hash['risk'] = 'risk'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card
        risk
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card: SKIP, risk: SKIP)
      @card = card unless card == SKIP
      @risk = risk unless risk == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card = CardSupplementaryData.from_hash(hash['card']) if hash['card']
      risk = RiskSupplementaryData.from_hash(hash['risk']) if hash['risk']

      # Create object from extracted values.
      SupplementaryData.new(card: card,
                            risk: risk)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card: #{@card}, risk: #{@risk}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card: #{@card.inspect}, risk: #{@risk.inspect}>"
    end
  end
end
