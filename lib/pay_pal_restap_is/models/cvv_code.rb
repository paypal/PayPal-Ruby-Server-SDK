# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The card verification value code for for Visa, Discover, Mastercard, or
  # American Express.
  class CVVCode
    CVV_CODE = [
      # TODO: Write general description for E
      E = 'E'.freeze,

      # TODO: Write general description for I
      I = 'I'.freeze,

      # TODO: Write general description for M
      M = 'M'.freeze,

      # TODO: Write general description for N
      N = 'N'.freeze,

      # TODO: Write general description for P
      P = 'P'.freeze,

      # TODO: Write general description for S
      S = 'S'.freeze,

      # TODO: Write general description for U
      U = 'U'.freeze,

      # TODO: Write general description for X
      X = 'X'.freeze,

      # TODO: Write general description for ENUM_ALL_OTHERS
      ENUM_ALL_OTHERS = 'All others'.freeze,

      # TODO: Write general description for ENUM_0
      ENUM_0 = '0'.freeze,

      # TODO: Write general description for ENUM_1
      ENUM_1 = '1'.freeze,

      # TODO: Write general description for ENUM_2
      ENUM_2 = '2'.freeze,

      # TODO: Write general description for ENUM_3
      ENUM_3 = '3'.freeze,

      # TODO: Write general description for ENUM_4
      ENUM_4 = '4'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end