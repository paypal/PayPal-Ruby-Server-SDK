# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The customer and merchant payment preferences.
  class PaymentMethodPreference < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The merchant-preferred payment methods.
    # @return [PayeePaymentMethodPreference]
    attr_accessor :payee_preferred

    # NACHA (the regulatory body governing the ACH network) requires that API
    # callers (merchants, partners) obtain the consumer’s explicit authorization
    # before initiating a transaction. To stay compliant, you’ll need to make
    # sure that you retain a compliant authorization for each transaction that
    # you originate to the ACH Network using this API. ACH transactions are
    # categorized (using SEC codes) by how you capture authorization from the
    # Receiver (the person whose bank account is being debited or credited).
    # PayPal supports the following SEC codes.
    # @return [StandardEntryClassCode]
    attr_accessor :standard_entry_class_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payee_preferred'] = 'payee_preferred'
      @_hash['standard_entry_class_code'] = 'standard_entry_class_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payee_preferred
        standard_entry_class_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(payee_preferred: PayeePaymentMethodPreference::UNRESTRICTED,
                   standard_entry_class_code: StandardEntryClassCode::WEB)
      @payee_preferred = payee_preferred unless payee_preferred == SKIP
      unless standard_entry_class_code == SKIP
        @standard_entry_class_code =
          standard_entry_class_code
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payee_preferred =
        hash['payee_preferred'] ||= PayeePaymentMethodPreference::UNRESTRICTED
      standard_entry_class_code =
        hash['standard_entry_class_code'] ||= StandardEntryClassCode::WEB

      # Create object from extracted values.
      PaymentMethodPreference.new(payee_preferred: payee_preferred,
                                  standard_entry_class_code: standard_entry_class_code)
    end
  end
end
