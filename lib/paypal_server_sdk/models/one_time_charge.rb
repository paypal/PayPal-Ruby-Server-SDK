# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The one-time charge info at the time of checkout.
  class OneTimeCharge < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :setup_fee

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :shipping_amount

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :taxes

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :product_price

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :subtotal

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :total_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['setup_fee'] = 'setup_fee'
      @_hash['shipping_amount'] = 'shipping_amount'
      @_hash['taxes'] = 'taxes'
      @_hash['product_price'] = 'product_price'
      @_hash['subtotal'] = 'subtotal'
      @_hash['total_amount'] = 'total_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        setup_fee
        shipping_amount
        taxes
        product_price
        subtotal
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(total_amount:, setup_fee: SKIP, shipping_amount: SKIP,
                   taxes: SKIP, product_price: SKIP, subtotal: SKIP)
      @setup_fee = setup_fee unless setup_fee == SKIP
      @shipping_amount = shipping_amount unless shipping_amount == SKIP
      @taxes = taxes unless taxes == SKIP
      @product_price = product_price unless product_price == SKIP
      @subtotal = subtotal unless subtotal == SKIP
      @total_amount = total_amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_amount = Money.from_hash(hash['total_amount']) if hash['total_amount']
      setup_fee = Money.from_hash(hash['setup_fee']) if hash['setup_fee']
      shipping_amount = Money.from_hash(hash['shipping_amount']) if hash['shipping_amount']
      taxes = Money.from_hash(hash['taxes']) if hash['taxes']
      product_price = Money.from_hash(hash['product_price']) if hash['product_price']
      subtotal = Money.from_hash(hash['subtotal']) if hash['subtotal']

      # Create object from extracted values.
      OneTimeCharge.new(total_amount: total_amount,
                        setup_fee: setup_fee,
                        shipping_amount: shipping_amount,
                        taxes: taxes,
                        product_price: product_price,
                        subtotal: subtotal)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} setup_fee: #{@setup_fee}, shipping_amount: #{@shipping_amount}, taxes:"\
      " #{@taxes}, product_price: #{@product_price}, subtotal: #{@subtotal}, total_amount:"\
      " #{@total_amount}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} setup_fee: #{@setup_fee.inspect}, shipping_amount:"\
      " #{@shipping_amount.inspect}, taxes: #{@taxes.inspect}, product_price:"\
      " #{@product_price.inspect}, subtotal: #{@subtotal.inspect}, total_amount:"\
      " #{@total_amount.inspect}>"
    end
  end
end
