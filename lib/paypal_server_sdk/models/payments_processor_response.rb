# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The processor response information for payment requests, such as direct
  # credit card transactions.
  class PaymentsProcessorResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The address verification code for Visa, Discover, Mastercard, or American
    # Express transactions.
    # @return [AvsCode]
    attr_accessor :avs_code

    # The card verification value code for for Visa, Discover, Mastercard, or
    # American Express.
    # @return [CvvCode]
    attr_accessor :cvv_code

    # Processor response code for the non-PayPal payment processor errors.
    # @return [ProcessorResponseCode]
    attr_accessor :response_code

    # The declined payment transactions might have payment advice codes. The
    # card networks, like Visa and Mastercard, return payment advice codes.
    # @return [PaymentsPaymentAdviceCode]
    attr_accessor :payment_advice_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['avs_code'] = 'avs_code'
      @_hash['cvv_code'] = 'cvv_code'
      @_hash['response_code'] = 'response_code'
      @_hash['payment_advice_code'] = 'payment_advice_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        avs_code
        cvv_code
        response_code
        payment_advice_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(avs_code: SKIP, cvv_code: SKIP, response_code: SKIP,
                   payment_advice_code: SKIP)
      @avs_code = avs_code unless avs_code == SKIP
      @cvv_code = cvv_code unless cvv_code == SKIP
      @response_code = response_code unless response_code == SKIP
      @payment_advice_code = payment_advice_code unless payment_advice_code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      avs_code = hash.key?('avs_code') ? hash['avs_code'] : SKIP
      cvv_code = hash.key?('cvv_code') ? hash['cvv_code'] : SKIP
      response_code = hash.key?('response_code') ? hash['response_code'] : SKIP
      payment_advice_code =
        hash.key?('payment_advice_code') ? hash['payment_advice_code'] : SKIP

      # Create object from extracted values.
      PaymentsProcessorResponse.new(avs_code: avs_code,
                                    cvv_code: cvv_code,
                                    response_code: response_code,
                                    payment_advice_code: payment_advice_code)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} avs_code: #{@avs_code}, cvv_code: #{@cvv_code}, response_code:"\
      " #{@response_code}, payment_advice_code: #{@payment_advice_code}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} avs_code: #{@avs_code.inspect}, cvv_code: #{@cvv_code.inspect},"\
      " response_code: #{@response_code.inspect}, payment_advice_code:"\
      " #{@payment_advice_code.inspect}>"
    end
  end
end
