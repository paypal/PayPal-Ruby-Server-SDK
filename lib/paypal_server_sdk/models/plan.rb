# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The merchant level Recurring Billing plan metadata for the Billing
  # Agreement.
  class Plan < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # An array of billing cycles for trial billing and regular billing. A plan
    # can have at most two trial cycles and only one regular cycle.
    # @return [Array[BillingCycle]]
    attr_accessor :billing_cycles

    # Product details associated with any one-time product purchase.
    # @return [Object]
    attr_accessor :product

    # The one-time charge info at the time of checkout.
    # @return [OneTimeCharge]
    attr_accessor :one_time_charges

    # Name of the recurring plan.
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['billing_cycles'] = 'billing_cycles'
      @_hash['product'] = 'product'
      @_hash['one_time_charges'] = 'one_time_charges'
      @_hash['name'] = 'name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        product
        name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(billing_cycles:, one_time_charges:, product: SKIP,
                   name: SKIP)
      @billing_cycles = billing_cycles
      @product = product unless product == SKIP
      @one_time_charges = one_time_charges
      @name = name unless name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      billing_cycles = nil
      unless hash['billing_cycles'].nil?
        billing_cycles = []
        hash['billing_cycles'].each do |structure|
          billing_cycles << (BillingCycle.from_hash(structure) if structure)
        end
      end

      billing_cycles = nil unless hash.key?('billing_cycles')
      one_time_charges = OneTimeCharge.from_hash(hash['one_time_charges']) if
        hash['one_time_charges']
      product = hash.key?('product') ? hash['product'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP

      # Create object from extracted values.
      Plan.new(billing_cycles: billing_cycles,
               one_time_charges: one_time_charges,
               product: product,
               name: name)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} billing_cycles: #{@billing_cycles}, product: #{@product}, one_time_charges:"\
      " #{@one_time_charges}, name: #{@name}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} billing_cycles: #{@billing_cycles.inspect}, product: #{@product.inspect},"\
      " one_time_charges: #{@one_time_charges.inspect}, name: #{@name.inspect}>"
    end
  end
end
