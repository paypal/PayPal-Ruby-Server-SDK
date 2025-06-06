# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The customer who approves and pays for the order. The customer is also known
  # as the payer.
  class PayerBase < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The internationalized email address. Note: Up to 64 characters are allowed
    # before and 255 characters are allowed after the @ sign. However, the
    # generally accepted maximum length for an email address is 254 characters.
    # The pattern verifies that an unquoted @ sign exists.
    # @return [String]
    attr_accessor :email_address

    # The account identifier for a PayPal account.
    # @return [String]
    attr_accessor :payer_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['email_address'] = 'email_address'
      @_hash['payer_id'] = 'payer_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        email_address
        payer_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(email_address: SKIP, payer_id: SKIP)
      @email_address = email_address unless email_address == SKIP
      @payer_id = payer_id unless payer_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      email_address = hash.key?('email_address') ? hash['email_address'] : SKIP
      payer_id = hash.key?('payer_id') ? hash['payer_id'] : SKIP

      # Create object from extracted values.
      PayerBase.new(email_address: email_address,
                    payer_id: payer_id)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} email_address: #{@email_address}, payer_id: #{@payer_id}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} email_address: #{@email_address.inspect}, payer_id: #{@payer_id.inspect}>"
    end
  end
end
