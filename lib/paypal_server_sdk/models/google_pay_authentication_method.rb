# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Authentication Method which is used for the card transaction.
  class GooglePayAuthenticationMethod
    GOOGLE_PAY_AUTHENTICATION_METHOD = [
      # This authentication method is associated with payment cards stored on
      # file with the user's Google Account. Returned payment data includes
      # primary account number (PAN) with the expiration month and the
      # expiration year.
      PAN_ONLY = 'PAN_ONLY'.freeze,

      # Returned payment data includes a 3-D Secure (3DS) cryptogram generated
      # on the device. -> If authentication_method=CRYPTOGRAM, it is required
      # that 'cryptogram' parameter in the request has a valid 3-D Secure (3DS)
      # cryptogram generated on the device.
      CRYPTOGRAM_3DS = 'CRYPTOGRAM_3DS'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
