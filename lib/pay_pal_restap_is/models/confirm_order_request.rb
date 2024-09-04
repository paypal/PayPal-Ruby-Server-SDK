# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Payer confirms the intent to pay for the Order using the provided payment
  # source.
  class ConfirmOrderRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The payment source definition.
    # @return [PaymentSource]
    attr_accessor :payment_source

    # The instruction to process an order.
    # @return [ProcessingInstruction]
    attr_accessor :processing_instruction

    # Customizes the payer confirmation experience.
    # @return [OrderConfirmApplicationContext]
    attr_accessor :application_context

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_source'] = 'payment_source'
      @_hash['processing_instruction'] = 'processing_instruction'
      @_hash['application_context'] = 'application_context'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        processing_instruction
        application_context
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(
      payment_source:,
      processing_instruction: ProcessingInstruction::NO_INSTRUCTION,
      application_context: SKIP
    )
      @payment_source = payment_source
      @processing_instruction = processing_instruction unless processing_instruction == SKIP
      @application_context = application_context unless application_context == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_source = PaymentSource.from_hash(hash['payment_source']) if hash['payment_source']
      processing_instruction =
        hash['processing_instruction'] ||= ProcessingInstruction::NO_INSTRUCTION
      application_context = OrderConfirmApplicationContext.from_hash(hash['application_context']) if
        hash['application_context']

      # Create object from extracted values.
      ConfirmOrderRequest.new(payment_source: payment_source,
                              processing_instruction: processing_instruction,
                              application_context: application_context)
    end
  end
end
