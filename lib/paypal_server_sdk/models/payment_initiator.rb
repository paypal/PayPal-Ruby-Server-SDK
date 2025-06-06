# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The person or party who initiated or triggered the payment.
  class PaymentInitiator
    PAYMENT_INITIATOR = [
      # Payment is initiated with the active engagement of the customer. e.g. a
      # customer checking out on a merchant website.
      CUSTOMER = 'CUSTOMER'.freeze,

      # Payment is initiated by merchant on behalf of the customer without the
      # active engagement of customer. e.g. a merchant charging the monthly
      # payment of a subscription to the customer.
      MERCHANT = 'MERCHANT'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
