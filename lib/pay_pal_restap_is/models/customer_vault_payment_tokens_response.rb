# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Collection of payment tokens saved for a given customer.
  class CustomerVaultPaymentTokensResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Total number of items.
    # @return [Integer]
    attr_accessor :total_items

    # Total number of pages.
    # @return [Integer]
    attr_accessor :total_pages

    # Customer in merchant's or partner's system of records.
    # @return [CustomerRequest]
    attr_accessor :customer

    # Customer in merchant's or partner's system of records.
    # @return [Array[PaymentTokenResponse]]
    attr_accessor :payment_tokens

    # An array of related [HATEOAS links](/api/rest/responses/#hateoas).
    # @return [Array[LinkDescription]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_items'] = 'total_items'
      @_hash['total_pages'] = 'total_pages'
      @_hash['customer'] = 'customer'
      @_hash['payment_tokens'] = 'payment_tokens'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        total_items
        total_pages
        customer
        payment_tokens
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(total_items: SKIP, total_pages: SKIP, customer: SKIP,
                   payment_tokens: SKIP, links: SKIP)
      @total_items = total_items unless total_items == SKIP
      @total_pages = total_pages unless total_pages == SKIP
      @customer = customer unless customer == SKIP
      @payment_tokens = payment_tokens unless payment_tokens == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_items = hash.key?('total_items') ? hash['total_items'] : SKIP
      total_pages = hash.key?('total_pages') ? hash['total_pages'] : SKIP
      customer = CustomerRequest.from_hash(hash['customer']) if hash['customer']
      # Parameter is an array, so we need to iterate through it
      payment_tokens = nil
      unless hash['payment_tokens'].nil?
        payment_tokens = []
        hash['payment_tokens'].each do |structure|
          payment_tokens << (PaymentTokenResponse.from_hash(structure) if structure)
        end
      end

      payment_tokens = SKIP unless hash.key?('payment_tokens')
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (LinkDescription.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')

      # Create object from extracted values.
      CustomerVaultPaymentTokensResponse.new(total_items: total_items,
                                             total_pages: total_pages,
                                             customer: customer,
                                             payment_tokens: payment_tokens,
                                             links: links)
    end
  end
end
