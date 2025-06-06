# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Minimal representation of a cached setup token.
  class SetupTokenResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The PayPal-generated ID for the vault token.
    # @return [String]
    attr_accessor :id

    # This object defines a customer in your system. Use it to manage customer
    # profiles, save payment methods and contact details.
    # @return [Customer]
    attr_accessor :customer

    # The status of the payment token.
    # @return [PaymentTokenStatus]
    attr_accessor :status

    # The setup payment method details.
    # @return [SetupTokenResponsePaymentSource]
    attr_accessor :payment_source

    # An array of related [HATEOAS links](/api/rest/responses/#hateoas).
    # @return [Array[LinkDescription]]
    attr_accessor :links

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['customer'] = 'customer'
      @_hash['status'] = 'status'
      @_hash['payment_source'] = 'payment_source'
      @_hash['links'] = 'links'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        customer
        status
        payment_source
        links
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, customer: SKIP,
                   status: PaymentTokenStatus::CREATED, payment_source: SKIP,
                   links: SKIP)
      @id = id unless id == SKIP
      @customer = customer unless customer == SKIP
      @status = status unless status == SKIP
      @payment_source = payment_source unless payment_source == SKIP
      @links = links unless links == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      customer = Customer.from_hash(hash['customer']) if hash['customer']
      status = hash['status'] ||= PaymentTokenStatus::CREATED
      payment_source = SetupTokenResponsePaymentSource.from_hash(hash['payment_source']) if
        hash['payment_source']
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
      SetupTokenResponse.new(id: id,
                             customer: customer,
                             status: status,
                             payment_source: payment_source,
                             links: links)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, customer: #{@customer}, status: #{@status}, payment_source:"\
      " #{@payment_source}, links: #{@links}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, customer: #{@customer.inspect}, status:"\
      " #{@status.inspect}, payment_source: #{@payment_source.inspect}, links: #{@links.inspect}>"
    end
  end
end
