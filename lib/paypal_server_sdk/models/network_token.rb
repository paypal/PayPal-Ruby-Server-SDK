# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The Third Party Network token used to fund a payment.
  class NetworkToken < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Third party network token number.
    # @return [String]
    attr_accessor :number

    # The year and month, in ISO-8601 `YYYY-MM` date format. See [Internet date
    # and time format](https://tools.ietf.org/html/rfc3339#section-5.6).
    # @return [String]
    attr_accessor :expiry

    # An Encrypted one-time use value that's sent along with Network Token. This
    # field is not required to be present for recurring transactions.
    # @return [String]
    attr_accessor :cryptogram

    # Electronic Commerce Indicator (ECI). The ECI value is part of the 2 data
    # elements that indicate the transaction was processed electronically. This
    # should be passed on the authorization transaction to the
    # Gateway/Processor.
    # @return [ECIFlag]
    attr_accessor :eci_flag

    # A TRID, or a Token Requestor ID, is an identifier used by merchants to
    # request network tokens from card networks. A TRID is a precursor to
    # obtaining a network token for a credit card primary account number (PAN),
    # and will aid in enabling secure card on file (COF) payments and reducing
    # fraud.
    # @return [String]
    attr_accessor :token_requestor_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number'] = 'number'
      @_hash['expiry'] = 'expiry'
      @_hash['cryptogram'] = 'cryptogram'
      @_hash['eci_flag'] = 'eci_flag'
      @_hash['token_requestor_id'] = 'token_requestor_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        cryptogram
        eci_flag
        token_requestor_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(number:, expiry:, cryptogram: SKIP, eci_flag: SKIP,
                   token_requestor_id: SKIP)
      @number = number
      @expiry = expiry
      @cryptogram = cryptogram unless cryptogram == SKIP
      @eci_flag = eci_flag unless eci_flag == SKIP
      @token_requestor_id = token_requestor_id unless token_requestor_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number = hash.key?('number') ? hash['number'] : nil
      expiry = hash.key?('expiry') ? hash['expiry'] : nil
      cryptogram = hash.key?('cryptogram') ? hash['cryptogram'] : SKIP
      eci_flag = hash.key?('eci_flag') ? hash['eci_flag'] : SKIP
      token_requestor_id =
        hash.key?('token_requestor_id') ? hash['token_requestor_id'] : SKIP

      # Create object from extracted values.
      NetworkToken.new(number: number,
                       expiry: expiry,
                       cryptogram: cryptogram,
                       eci_flag: eci_flag,
                       token_requestor_id: token_requestor_id)
    end
  end
end