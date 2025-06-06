# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Additional attributes associated with the use of this Venmo Wallet.
  class VenmoWalletAdditionalAttributes < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The details about a customer in PayPal's system of record.
    # @return [VenmoWalletCustomerInformation]
    attr_accessor :customer

    # Resource consolidating common request and response attirbutes for vaulting
    # Venmo Wallet.
    # @return [VenmoWalletVaultAttributes]
    attr_accessor :vault

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer'] = 'customer'
      @_hash['vault'] = 'vault'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer
        vault
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customer: SKIP, vault: SKIP)
      @customer = customer unless customer == SKIP
      @vault = vault unless vault == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer = VenmoWalletCustomerInformation.from_hash(hash['customer']) if hash['customer']
      vault = VenmoWalletVaultAttributes.from_hash(hash['vault']) if hash['vault']

      # Create object from extracted values.
      VenmoWalletAdditionalAttributes.new(customer: customer,
                                          vault: vault)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} customer: #{@customer}, vault: #{@vault}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} customer: #{@customer.inspect}, vault: #{@vault.inspect}>"
    end
  end
end
