# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The phone type.
  class PhoneType
    PHONE_TYPE = [
      # TODO: Write general description for FAX
      FAX = 'FAX'.freeze,

      # TODO: Write general description for HOME
      HOME = 'HOME'.freeze,

      # TODO: Write general description for MOBILE
      MOBILE = 'MOBILE'.freeze,

      # TODO: Write general description for OTHER
      OTHER = 'OTHER'.freeze,

      # TODO: Write general description for PAGER
      PAGER = 'PAGER'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
