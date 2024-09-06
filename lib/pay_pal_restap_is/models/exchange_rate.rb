# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The exchange rate that determines the amount to convert from one currency to
  # another currency.
  class ExchangeRate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The [three-character ISO-4217 currency
    # code](/api/rest/reference/currency-codes/) that identifies the currency.
    # @return [String]
    attr_accessor :source_currency

    # The [three-character ISO-4217 currency
    # code](/api/rest/reference/currency-codes/) that identifies the currency.
    # @return [String]
    attr_accessor :target_currency

    # The target currency amount. Equivalent to one unit of the source currency.
    # Formatted as integer or decimal value with one to 15 digits to the right
    # of the decimal point.
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['source_currency'] = 'source_currency'
      @_hash['target_currency'] = 'target_currency'
      @_hash['value'] = 'value'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        source_currency
        target_currency
        value
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(source_currency: SKIP, target_currency: SKIP, value: SKIP)
      @source_currency = source_currency unless source_currency == SKIP
      @target_currency = target_currency unless target_currency == SKIP
      @value = value unless value == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      source_currency =
        hash.key?('source_currency') ? hash['source_currency'] : SKIP
      target_currency =
        hash.key?('target_currency') ? hash['target_currency'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP

      # Create object from extracted values.
      ExchangeRate.new(source_currency: source_currency,
                       target_currency: target_currency,
                       value: value)
    end
  end
end