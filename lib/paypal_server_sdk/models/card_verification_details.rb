# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Card Verification details including the authorization details and 3D SECURE
  # details.
  class CardVerificationDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # DEPRECATED. This field is DEPRECATED. Please find the network transaction
    # id data in the 'id' field under the 'network_transaction_reference' object
    # instead of the 'verification' object.
    # @return [String]
    attr_accessor :network_transaction_id

    # DEPRECATED. This field is DEPRECATED. Please find the date data in the
    # 'date' field under the 'network_transaction_reference' object instead of
    # the 'verification' object.
    # @return [String]
    attr_accessor :date

    # The card network or brand. Applies to credit, debit, gift, and payment
    # cards.
    # @return [CardBrand]
    attr_accessor :network

    # The date and time, in [Internet date and time
    # format](https://tools.ietf.org/html/rfc3339#section-5.6). Seconds are
    # required while fractional seconds are optional. Note: The regular
    # expression provides guidance but does not reject all invalid dates.
    # @return [String]
    attr_accessor :time

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :amount

    # The processor response information for payment requests, such as direct
    # credit card transactions.
    # @return [CardVerificationProcessorResponse]
    attr_accessor :processor_response

    # DEPRECATED. This field is DEPRECATED. Please find the 3D secure
    # authentication data in the 'three_d_secure' object under the
    # 'authentication_result' object instead of the 'verification' object.
    # @return [Object]
    attr_accessor :three_d_secure

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['network_transaction_id'] = 'network_transaction_id'
      @_hash['date'] = 'date'
      @_hash['network'] = 'network'
      @_hash['time'] = 'time'
      @_hash['amount'] = 'amount'
      @_hash['processor_response'] = 'processor_response'
      @_hash['three_d_secure'] = 'three_d_secure'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        network_transaction_id
        date
        network
        time
        amount
        processor_response
        three_d_secure
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(network_transaction_id: SKIP, date: SKIP, network: SKIP,
                   time: SKIP, amount: SKIP, processor_response: SKIP,
                   three_d_secure: SKIP)
      @network_transaction_id = network_transaction_id unless network_transaction_id == SKIP
      @date = date unless date == SKIP
      @network = network unless network == SKIP
      @time = time unless time == SKIP
      @amount = amount unless amount == SKIP
      @processor_response = processor_response unless processor_response == SKIP
      @three_d_secure = three_d_secure unless three_d_secure == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      network_transaction_id =
        hash.key?('network_transaction_id') ? hash['network_transaction_id'] : SKIP
      date = hash.key?('date') ? hash['date'] : SKIP
      network = hash.key?('network') ? hash['network'] : SKIP
      time = hash.key?('time') ? hash['time'] : SKIP
      amount = Money.from_hash(hash['amount']) if hash['amount']
      if hash['processor_response']
        processor_response = CardVerificationProcessorResponse.from_hash(hash['processor_response'])
      end
      three_d_secure =
        hash.key?('three_d_secure') ? hash['three_d_secure'] : SKIP

      # Create object from extracted values.
      CardVerificationDetails.new(network_transaction_id: network_transaction_id,
                                  date: date,
                                  network: network,
                                  time: time,
                                  amount: amount,
                                  processor_response: processor_response,
                                  three_d_secure: three_d_secure)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} network_transaction_id: #{@network_transaction_id}, date: #{@date},"\
      " network: #{@network}, time: #{@time}, amount: #{@amount}, processor_response:"\
      " #{@processor_response}, three_d_secure: #{@three_d_secure}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} network_transaction_id: #{@network_transaction_id.inspect}, date:"\
      " #{@date.inspect}, network: #{@network.inspect}, time: #{@time.inspect}, amount:"\
      " #{@amount.inspect}, processor_response: #{@processor_response.inspect}, three_d_secure:"\
      " #{@three_d_secure.inspect}>"
    end
  end
end
