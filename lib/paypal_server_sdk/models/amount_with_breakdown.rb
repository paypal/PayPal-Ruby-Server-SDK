# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The total order amount with an optional breakdown that provides details,
  # such as the total item amount, total tax amount, shipping, handling,
  # insurance, and discounts, if any. If you specify `amount.breakdown`, the
  # amount equals `item_total` plus `tax_total` plus `shipping` plus `handling`
  # plus `insurance` minus `shipping_discount` minus discount. The amount must
  # be a positive number. For listed of supported currencies and decimal
  # precision, see the PayPal REST APIs Currency Codes.
  class AmountWithBreakdown < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The [three-character ISO-4217 currency
    # code](/api/rest/reference/currency-codes/) that identifies the currency.
    # @return [String]
    attr_accessor :currency_code

    # The value, which might be: An integer for currencies like `JPY` that are
    # not typically fractional. A decimal fraction for currencies like `TND`
    # that are subdivided into thousandths. For the required number of decimal
    # places for a currency code, see [Currency
    # Codes](/api/rest/reference/currency-codes/).
    # @return [String]
    attr_accessor :value

    # The breakdown of the amount. Breakdown provides details such as total item
    # amount, total tax amount, shipping, handling, insurance, and discounts, if
    # any.
    # @return [AmountBreakdown]
    attr_accessor :breakdown

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['currency_code'] = 'currency_code'
      @_hash['value'] = 'value'
      @_hash['breakdown'] = 'breakdown'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        breakdown
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(currency_code:, value:, breakdown: SKIP)
      @currency_code = currency_code
      @value = value
      @breakdown = breakdown unless breakdown == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      currency_code = hash.key?('currency_code') ? hash['currency_code'] : nil
      value = hash.key?('value') ? hash['value'] : nil
      breakdown = AmountBreakdown.from_hash(hash['breakdown']) if hash['breakdown']

      # Create object from extracted values.
      AmountWithBreakdown.new(currency_code: currency_code,
                              value: value,
                              breakdown: breakdown)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} currency_code: #{@currency_code}, value: #{@value}, breakdown:"\
      " #{@breakdown}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} currency_code: #{@currency_code.inspect}, value: #{@value.inspect},"\
      " breakdown: #{@breakdown.inspect}>"
    end
  end
end
