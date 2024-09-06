# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The breakdown of the amount. Breakdown provides details such as total item
  # amount, total tax amount, shipping, handling, insurance, and discounts, if
  # any.
  class AmountBreakdown < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :item_total

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :shipping

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :handling

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :tax_total

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :insurance

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :shipping_discount

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :discount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['item_total'] = 'item_total'
      @_hash['shipping'] = 'shipping'
      @_hash['handling'] = 'handling'
      @_hash['tax_total'] = 'tax_total'
      @_hash['insurance'] = 'insurance'
      @_hash['shipping_discount'] = 'shipping_discount'
      @_hash['discount'] = 'discount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        item_total
        shipping
        handling
        tax_total
        insurance
        shipping_discount
        discount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(item_total: SKIP, shipping: SKIP, handling: SKIP,
                   tax_total: SKIP, insurance: SKIP, shipping_discount: SKIP,
                   discount: SKIP)
      @item_total = item_total unless item_total == SKIP
      @shipping = shipping unless shipping == SKIP
      @handling = handling unless handling == SKIP
      @tax_total = tax_total unless tax_total == SKIP
      @insurance = insurance unless insurance == SKIP
      @shipping_discount = shipping_discount unless shipping_discount == SKIP
      @discount = discount unless discount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      item_total = Money.from_hash(hash['item_total']) if hash['item_total']
      shipping = Money.from_hash(hash['shipping']) if hash['shipping']
      handling = Money.from_hash(hash['handling']) if hash['handling']
      tax_total = Money.from_hash(hash['tax_total']) if hash['tax_total']
      insurance = Money.from_hash(hash['insurance']) if hash['insurance']
      shipping_discount = Money.from_hash(hash['shipping_discount']) if hash['shipping_discount']
      discount = Money.from_hash(hash['discount']) if hash['discount']

      # Create object from extracted values.
      AmountBreakdown.new(item_total: item_total,
                          shipping: shipping,
                          handling: handling,
                          tax_total: tax_total,
                          insurance: insurance,
                          shipping_discount: shipping_discount,
                          discount: discount)
    end
  end
end
