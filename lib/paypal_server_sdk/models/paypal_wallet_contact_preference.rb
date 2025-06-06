# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The preference to display the contact information (buyer’s shipping email &
  # phone number) on PayPal's checkout for easy merchant-buyer communication.
  class PaypalWalletContactPreference
    PAYPAL_WALLET_CONTACT_PREFERENCE = [
      # The merchant can opt out of showing buyer's contact information on
      # PayPal checkout.
      NO_CONTACT_INFO = 'NO_CONTACT_INFO'.freeze,

      # The merchant allows buyer to add or update shipping contact information
      # on the PayPal checkout. Please ensure to use this updated information
      # returned in shipping.email_address and shipping.phone_number to contact
      # your buyers.
      UPDATE_CONTACT_INFO = 'UPDATE_CONTACT_INFO'.freeze,

      # The buyer can only see but can not override merchant passed contact
      # information (shipping.email_address and shipping.phone_number) on PayPal
      # checkout. NOTE: If you don't pass the contact information, the behavior
      # is the same as NO_CONTACT_INFO preference.
      RETAIN_CONTACT_INFO = 'RETAIN_CONTACT_INFO'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
