# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Customizes the payer experience during the approval process for the BLIK
  # payment.
  class BLIKExperienceContext < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The label that overrides the business name in the PayPal account on the
    # PayPal site. The pattern is defined by an external party and supports
    # Unicode.
    # @return [String]
    attr_accessor :brand_name

    # The [language tag](https://tools.ietf.org/html/bcp47#section-2) for the
    # language in which to localize the error-related strings, such as messages,
    # issues, and suggested actions. The tag is made up of the [ISO 639-2
    # language code](https://www.loc.gov/standards/iso639-2/php/code_list.php),
    # the optional [ISO-15924 script
    # tag](https://www.unicode.org/iso15924/codelists.html), and the [ISO-3166
    # alpha-2 country code](/api/rest/reference/country-codes/) or [M49 region
    # code](https://unstats.un.org/unsd/methodology/m49/).
    # @return [String]
    attr_accessor :locale

    # The location from which the shipping address is derived.
    # @return [ShippingPreference]
    attr_accessor :shipping_preference

    # Describes the URL.
    # @return [String]
    attr_accessor :return_url

    # Describes the URL.
    # @return [String]
    attr_accessor :cancel_url

    # An Internet Protocol address (IP address). This address assigns a
    # numerical label to each device that is connected to a computer network
    # through the Internet Protocol. Supports IPv4 and IPv6 addresses.
    # @return [String]
    attr_accessor :consumer_ip

    # The payer's User Agent. For example, Mozilla/5.0 (Macintosh; Intel Mac OS
    # X x.y; rv:42.0).
    # @return [String]
    attr_accessor :consumer_user_agent

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand_name'] = 'brand_name'
      @_hash['locale'] = 'locale'
      @_hash['shipping_preference'] = 'shipping_preference'
      @_hash['return_url'] = 'return_url'
      @_hash['cancel_url'] = 'cancel_url'
      @_hash['consumer_ip'] = 'consumer_ip'
      @_hash['consumer_user_agent'] = 'consumer_user_agent'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        brand_name
        locale
        shipping_preference
        return_url
        cancel_url
        consumer_ip
        consumer_user_agent
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(brand_name: SKIP, locale: SKIP,
                   shipping_preference: ShippingPreference::GET_FROM_FILE,
                   return_url: SKIP, cancel_url: SKIP, consumer_ip: SKIP,
                   consumer_user_agent: SKIP)
      @brand_name = brand_name unless brand_name == SKIP
      @locale = locale unless locale == SKIP
      @shipping_preference = shipping_preference unless shipping_preference == SKIP
      @return_url = return_url unless return_url == SKIP
      @cancel_url = cancel_url unless cancel_url == SKIP
      @consumer_ip = consumer_ip unless consumer_ip == SKIP
      @consumer_user_agent = consumer_user_agent unless consumer_user_agent == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand_name = hash.key?('brand_name') ? hash['brand_name'] : SKIP
      locale = hash.key?('locale') ? hash['locale'] : SKIP
      shipping_preference =
        hash['shipping_preference'] ||= ShippingPreference::GET_FROM_FILE
      return_url = hash.key?('return_url') ? hash['return_url'] : SKIP
      cancel_url = hash.key?('cancel_url') ? hash['cancel_url'] : SKIP
      consumer_ip = hash.key?('consumer_ip') ? hash['consumer_ip'] : SKIP
      consumer_user_agent =
        hash.key?('consumer_user_agent') ? hash['consumer_user_agent'] : SKIP

      # Create object from extracted values.
      BLIKExperienceContext.new(brand_name: brand_name,
                                locale: locale,
                                shipping_preference: shipping_preference,
                                return_url: return_url,
                                cancel_url: cancel_url,
                                consumer_ip: consumer_ip,
                                consumer_user_agent: consumer_user_agent)
    end
  end
end
