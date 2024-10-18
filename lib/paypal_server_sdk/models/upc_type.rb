# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The Universal Product Code type.
  class UpcType
    UPC_TYPE = [
      # TODO: Write general description for UPCA
      UPCA = 'UPC-A'.freeze,

      # TODO: Write general description for UPCB
      UPCB = 'UPC-B'.freeze,

      # TODO: Write general description for UPCC
      UPCC = 'UPC-C'.freeze,

      # TODO: Write general description for UPCD
      UPCD = 'UPC-D'.freeze,

      # TODO: Write general description for UPCE
      UPCE = 'UPC-E'.freeze,

      # TODO: Write general description for UPC2
      UPC2 = 'UPC-2'.freeze,

      # TODO: Write general description for UPC5
      UPC5 = 'UPC-5'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
