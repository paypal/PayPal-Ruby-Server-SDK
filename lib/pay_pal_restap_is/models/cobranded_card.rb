# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Details about the merchant cobranded card used for order purchase.
  class CobrandedCard < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Array of labels for the cobranded card.
    # @return [Array[String]]
    attr_accessor :labels

    # The details for the merchant who receives the funds and fulfills the
    # order. The merchant is also known as the payee.
    # @return [PayeeBase]
    attr_accessor :payee

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['labels'] = 'labels'
      @_hash['payee'] = 'payee'
      @_hash['amount'] = 'amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        labels
        payee
        amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(labels: SKIP, payee: SKIP, amount: SKIP)
      @labels = labels unless labels == SKIP
      @payee = payee unless payee == SKIP
      @amount = amount unless amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      labels = hash.key?('labels') ? hash['labels'] : SKIP
      payee = PayeeBase.from_hash(hash['payee']) if hash['payee']
      amount = Money.from_hash(hash['amount']) if hash['amount']

      # Create object from extracted values.
      CobrandedCard.new(labels: labels,
                        payee: payee,
                        amount: amount)
    end
  end
end