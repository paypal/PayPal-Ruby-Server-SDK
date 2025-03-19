# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Payer confirms the intent to pay for the Order using the provided payment
  # source.
  class ConfirmOrderRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The payment source definition.
    # @return [PaymentSource]
    attr_accessor :payment_source

    # Customizes the payer confirmation experience.
    # @return [OrderConfirmApplicationContext]
    attr_accessor :application_context

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_source'] = 'payment_source'
      @_hash['application_context'] = 'application_context'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        application_context
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(payment_source:, application_context: SKIP)
      @payment_source = payment_source
      @application_context = application_context unless application_context == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_source = PaymentSource.from_hash(hash['payment_source']) if hash['payment_source']
      application_context = OrderConfirmApplicationContext.from_hash(hash['application_context']) if
        hash['application_context']

      # Create object from extracted values.
      ConfirmOrderRequest.new(payment_source: payment_source,
                              application_context: application_context)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_source: #{@payment_source}, application_context:"\
      " #{@application_context}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_source: #{@payment_source.inspect}, application_context:"\
      " #{@application_context.inspect}>"
    end
  end
end
