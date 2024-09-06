# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Full representation of a Bank Payment Token.
  class BankPaymentToken < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A Resource representing a response of vaulted a ACH Debit Account.
    # @return [ACHDebitResponse]
    attr_accessor :ach_debit

    # A Resource representing a response of vaulted a ACH Debit Account.
    # @return [SEPADebitResponse]
    attr_accessor :sepa_debit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ach_debit'] = 'ach_debit'
      @_hash['sepa_debit'] = 'sepa_debit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        ach_debit
        sepa_debit
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(ach_debit: SKIP, sepa_debit: SKIP)
      @ach_debit = ach_debit unless ach_debit == SKIP
      @sepa_debit = sepa_debit unless sepa_debit == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ach_debit = ACHDebitResponse.from_hash(hash['ach_debit']) if hash['ach_debit']
      sepa_debit = SEPADebitResponse.from_hash(hash['sepa_debit']) if hash['sepa_debit']

      # Create object from extracted values.
      BankPaymentToken.new(ach_debit: ach_debit,
                           sepa_debit: sepa_debit)
    end
  end
end