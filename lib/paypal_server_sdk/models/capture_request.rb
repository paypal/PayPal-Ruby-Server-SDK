# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # CaptureRequest Model.
  class CaptureRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The API caller-provided external invoice number for this order. Appears in
    # both the payer's transaction history and the emails that the payer
    # receives.
    # @return [String]
    attr_accessor :invoice_id

    # An informational note about this settlement. Appears in both the payer's
    # transaction history and the emails that the payer receives.
    # @return [String]
    attr_accessor :note_to_payer

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :amount

    # Indicates whether you can make additional captures against the authorized
    # payment. Set to `true` if you do not intend to capture additional payments
    # against the authorization. Set to `false` if you intend to capture
    # additional payments against the authorization.
    # @return [TrueClass | FalseClass]
    attr_accessor :final_capture

    # Any additional payment instructions to be consider during payment
    # processing. This processing instruction is applicable for Capturing an
    # order or Authorizing an Order.
    # @return [CapturePaymentInstruction]
    attr_accessor :payment_instruction

    # The payment descriptor on the payer's account statement.
    # @return [String]
    attr_accessor :soft_descriptor

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['invoice_id'] = 'invoice_id'
      @_hash['note_to_payer'] = 'note_to_payer'
      @_hash['amount'] = 'amount'
      @_hash['final_capture'] = 'final_capture'
      @_hash['payment_instruction'] = 'payment_instruction'
      @_hash['soft_descriptor'] = 'soft_descriptor'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        invoice_id
        note_to_payer
        amount
        final_capture
        payment_instruction
        soft_descriptor
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(invoice_id: SKIP, note_to_payer: SKIP, amount: SKIP,
                   final_capture: false, payment_instruction: SKIP,
                   soft_descriptor: SKIP)
      @invoice_id = invoice_id unless invoice_id == SKIP
      @note_to_payer = note_to_payer unless note_to_payer == SKIP
      @amount = amount unless amount == SKIP
      @final_capture = final_capture unless final_capture == SKIP
      @payment_instruction = payment_instruction unless payment_instruction == SKIP
      @soft_descriptor = soft_descriptor unless soft_descriptor == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      invoice_id = hash.key?('invoice_id') ? hash['invoice_id'] : SKIP
      note_to_payer = hash.key?('note_to_payer') ? hash['note_to_payer'] : SKIP
      amount = Money.from_hash(hash['amount']) if hash['amount']
      final_capture = hash['final_capture'] ||= false
      payment_instruction = CapturePaymentInstruction.from_hash(hash['payment_instruction']) if
        hash['payment_instruction']
      soft_descriptor =
        hash.key?('soft_descriptor') ? hash['soft_descriptor'] : SKIP

      # Create object from extracted values.
      CaptureRequest.new(invoice_id: invoice_id,
                         note_to_payer: note_to_payer,
                         amount: amount,
                         final_capture: final_capture,
                         payment_instruction: payment_instruction,
                         soft_descriptor: soft_descriptor)
    end
  end
end
