# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The address verification code for Visa, Discover, Mastercard, or American
  # Express transactions.
  class AvsCode
    AVS_CODE = [
      # For Visa, Mastercard, or Discover transactions, the address matches but
      # the zip code does not match. For American Express transactions, the card
      # holder address is correct.
      AVS_A = 'A'.freeze,

      # For Visa, Mastercard, or Discover transactions, the address matches.
      # International A.
      AVS_B = 'B'.freeze,

      # For Visa, Mastercard, or Discover transactions, no values match.
      # International N.
      AVS_C = 'C'.freeze,

      # For Visa, Mastercard, or Discover transactions, the address and postal
      # code match. International X.
      AVS_D = 'D'.freeze,

      # For Visa, Mastercard, or Discover transactions, not allowed for Internet
      # or phone transactions. For American Express card holder, the name is
      # incorrect but the address and postal code match.
      AVS_E = 'E'.freeze,

      # For Visa, Mastercard, or Discover transactions, the address and postal
      # code match. UK-specific X. For American Express card holder, the name is
      # incorrect but the address matches.
      AVS_F = 'F'.freeze,

      # For Visa, Mastercard, or Discover transactions, global is unavailable.
      # Nothing matches.
      AVS_G = 'G'.freeze,

      # For Visa, Mastercard, or Discover transactions, international is
      # unavailable. Not applicable.
      AVS_I = 'I'.freeze,

      # For Visa, Mastercard, or Discover transactions, the address and postal
      # code match. For American Express card holder, the name, address, and
      # postal code match.
      AVS_M = 'M'.freeze,

      # For Visa, Mastercard, or Discover transactions, nothing matches. For
      # American Express card holder, the address and postal code are both
      # incorrect.
      AVS_N = 'N'.freeze,

      # For Visa, Mastercard, or Discover transactions, postal international Z.
      # Postal code only.
      AVS_P = 'P'.freeze,

      # For Visa, Mastercard, or Discover transactions, re-try the request. For
      # American Express, the system is unavailable.
      AVS_R = 'R'.freeze,

      # For Visa, Mastercard, Discover, or American Express, the service is not
      # supported.
      AVS_S = 'S'.freeze,

      # For Visa, Mastercard, or Discover transactions, the service is
      # unavailable. For American Express, information is not available. For
      # Maestro, the address is not checked or the acquirer had no response. The
      # service is not available.
      AVS_U = 'U'.freeze,

      # For Visa, Mastercard, or Discover transactions, whole ZIP code. For
      # American Express, the card holder name, address, and postal code are all
      # incorrect.
      AVS_W = 'W'.freeze,

      # For Visa, Mastercard, or Discover transactions, exact match of the
      # address and the nine-digit ZIP code. For American Express, the card
      # holder name, address, and postal code are all incorrect.
      AVS_X = 'X'.freeze,

      # For Visa, Mastercard, or Discover transactions, the address and
      # five-digit ZIP code match. For American Express, the card holder address
      # and postal code are both correct.
      AVS_Y = 'Y'.freeze,

      # For Visa, Mastercard, or Discover transactions, the five-digit ZIP code
      # matches but no address. For American Express, only the card holder
      # postal code is correct.
      AVS_Z = 'Z'.freeze,

      # For Maestro, no AVS response was obtained.
      AVS_NULL = 'Null'.freeze,

      # For Maestro, all address information matches.
      AVS_0 = '0'.freeze,

      # For Maestro, none of the address information matches.
      AVS_1 = '1'.freeze,

      # For Maestro, part of the address information matches.
      AVS_2 = '2'.freeze,

      # For Maestro, the merchant did not provide AVS information. It was not
      # processed.
      AVS_3 = '3'.freeze,

      # For Maestro, the address was not checked or the acquirer had no
      # response. The service is not available.
      AVS_4 = '4'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
