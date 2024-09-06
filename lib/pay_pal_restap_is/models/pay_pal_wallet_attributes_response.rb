# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Additional attributes associated with the use of a PayPal Wallet.
  class PayPalWalletAttributesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The details about a saved PayPal Wallet payment source.
    # @return [PayPalWalletVaultResponse]
    attr_accessor :vault

    # An array of merchant cobranded cards used by buyer to complete an order.
    # This array will be present if a merchant has onboarded their cobranded
    # card with PayPal and provided corresponding label(s).
    # @return [Array[CobrandedCard]]
    attr_accessor :cobranded_cards

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['vault'] = 'vault'
      @_hash['cobranded_cards'] = 'cobranded_cards'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        vault
        cobranded_cards
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(vault: SKIP, cobranded_cards: SKIP)
      @vault = vault unless vault == SKIP
      @cobranded_cards = cobranded_cards unless cobranded_cards == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      vault = PayPalWalletVaultResponse.from_hash(hash['vault']) if hash['vault']
      # Parameter is an array, so we need to iterate through it
      cobranded_cards = nil
      unless hash['cobranded_cards'].nil?
        cobranded_cards = []
        hash['cobranded_cards'].each do |structure|
          cobranded_cards << (CobrandedCard.from_hash(structure) if structure)
        end
      end

      cobranded_cards = SKIP unless hash.key?('cobranded_cards')

      # Create object from extracted values.
      PayPalWalletAttributesResponse.new(vault: vault,
                                         cobranded_cards: cobranded_cards)
    end
  end
end
