# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Refunds a captured payment, by ID. For a full refund, include an empty
  # request body. For a partial refund, include an <code>amount</code> object in
  # the request body.
  class RefundRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :amount

    # The API caller-provided external ID. Used to reconcile API
    # caller-initiated transactions with PayPal transactions. Appears in
    # transaction and settlement reports. The pattern is defined by an external
    # party and supports Unicode.
    # @return [String]
    attr_accessor :custom_id

    # The API caller-provided external invoice ID for this order. The pattern is
    # defined by an external party and supports Unicode.
    # @return [String]
    attr_accessor :invoice_id

    # The reason for the refund. Appears in both the payer's transaction history
    # and the emails that the payer receives. The pattern is defined by an
    # external party and supports Unicode.
    # @return [String]
    attr_accessor :note_to_payer

    # Any additional payments instructions during refund payment processing.
    # This object is only applicable to merchants that have been enabled for
    # PayPal Commerce Platform for Marketplaces and Platforms capability. Please
    # speak to your account manager if you want to use this capability.
    # @return [RefundPaymentInstruction]
    attr_accessor :payment_instruction

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['custom_id'] = 'custom_id'
      @_hash['invoice_id'] = 'invoice_id'
      @_hash['note_to_payer'] = 'note_to_payer'
      @_hash['payment_instruction'] = 'payment_instruction'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        custom_id
        invoice_id
        note_to_payer
        payment_instruction
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount: SKIP, custom_id: SKIP, invoice_id: SKIP,
                   note_to_payer: SKIP, payment_instruction: SKIP)
      @amount = amount unless amount == SKIP
      @custom_id = custom_id unless custom_id == SKIP
      @invoice_id = invoice_id unless invoice_id == SKIP
      @note_to_payer = note_to_payer unless note_to_payer == SKIP
      @payment_instruction = payment_instruction unless payment_instruction == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = Money.from_hash(hash['amount']) if hash['amount']
      custom_id = hash.key?('custom_id') ? hash['custom_id'] : SKIP
      invoice_id = hash.key?('invoice_id') ? hash['invoice_id'] : SKIP
      note_to_payer = hash.key?('note_to_payer') ? hash['note_to_payer'] : SKIP
      payment_instruction = RefundPaymentInstruction.from_hash(hash['payment_instruction']) if
        hash['payment_instruction']

      # Create object from extracted values.
      RefundRequest.new(amount: amount,
                        custom_id: custom_id,
                        invoice_id: invoice_id,
                        note_to_payer: note_to_payer,
                        payment_instruction: payment_instruction)
    end
  end
end