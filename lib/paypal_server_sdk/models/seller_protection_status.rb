# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Indicates whether the transaction is eligible for seller protection. For
  # information, see [PayPal Seller Protection for
  # Merchants](https://www.paypal.com/us/webapps/mpp/security/seller-protection)
  # .
  class SellerProtectionStatus
    SELLER_PROTECTION_STATUS = [
      # Your PayPal balance remains intact if the customer claims that they did
      # not receive an item or the account holder claims that they did not
      # authorize the payment.
      ELIGIBLE = 'ELIGIBLE'.freeze,

      # Your PayPal balance remains intact if the customer claims that they did
      # not receive an item.
      PARTIALLY_ELIGIBLE = 'PARTIALLY_ELIGIBLE'.freeze,

      # This transaction is not eligible for seller protection.
      NOT_ELIGIBLE = 'NOT_ELIGIBLE'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
