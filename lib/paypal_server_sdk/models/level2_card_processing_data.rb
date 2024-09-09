# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The level 2 card processing data collections. If your merchant account has
  # been configured for Level 2 processing this field will be passed to the
  # processor on your behalf. Please contact your PayPal Technical Account
  # Manager to define level 2 data for your business.
  class Level2CardProcessingData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Use this field to pass a purchase identification value of up to 127 ASCII
    # characters. The length of this field will be adjusted to meet network
    # specifications (25chars for Visa and Mastercard, 17chars for Amex), and
    # the original invoice ID will still be displayed in your existing reports.
    # @return [String]
    attr_accessor :invoice_id

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :tax_total

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['invoice_id'] = 'invoice_id'
      @_hash['tax_total'] = 'tax_total'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        invoice_id
        tax_total
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(invoice_id: SKIP, tax_total: SKIP)
      @invoice_id = invoice_id unless invoice_id == SKIP
      @tax_total = tax_total unless tax_total == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      invoice_id = hash.key?('invoice_id') ? hash['invoice_id'] : SKIP
      tax_total = Money.from_hash(hash['tax_total']) if hash['tax_total']

      # Create object from extracted values.
      Level2CardProcessingData.new(invoice_id: invoice_id,
                                   tax_total: tax_total)
    end
  end
end
