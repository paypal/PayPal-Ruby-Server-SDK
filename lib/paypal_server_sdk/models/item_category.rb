# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The item category type.
  class ItemCategory
    ITEM_CATEGORY = [
      # Goods that are stored, delivered, and used in their electronic format.
      # This value is not currently supported for API callers that leverage the
      # PayPal for Commerce Platform product.
      DIGITAL_GOODS = 'DIGITAL_GOODS'.freeze,

      # A tangible item that can be shipped with proof of delivery.
      PHYSICAL_GOODS = 'PHYSICAL_GOODS'.freeze,

      # A contribution or gift for which no good or service is exchanged,
      # usually to a not for profit organization.
      DONATION = 'DONATION'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
