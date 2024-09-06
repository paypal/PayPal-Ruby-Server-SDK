# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Customizes the payer confirmation experience.
  class OrderConfirmApplicationContext < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Label to present to your payer as part of the PayPal hosted web
    # experience.
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

    # The URL where the customer is redirected after the customer approves the
    # payment.
    # @return [String]
    attr_accessor :return_url

    # The URL where the customer is redirected after the customer cancels the
    # payment.
    # @return [String]
    attr_accessor :cancel_url

    # Provides additional details to process a payment using a `payment_source`
    # that has been stored or is intended to be stored (also referred to as
    # stored_credential or card-on-file).<br/>Parameter
    # compatibility:<br/><ul><li>`payment_type=ONE_TIME` is compatible only with
    # `payment_initiator=CUSTOMER`.</li><li>`usage=FIRST` is compatible only
    # with
    # `payment_initiator=CUSTOMER`.</li><li>`previous_transaction_reference` or
    # `previous_network_transaction_reference` is compatible only with
    # `payment_initiator=MERCHANT`.</li><li>Only one of the parameters -
    # `previous_transaction_reference` and
    # `previous_network_transaction_reference` - can be present in the
    # request.</li></ul>
    # @return [StoredPaymentSource]
    attr_accessor :stored_payment_source

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand_name'] = 'brand_name'
      @_hash['locale'] = 'locale'
      @_hash['return_url'] = 'return_url'
      @_hash['cancel_url'] = 'cancel_url'
      @_hash['stored_payment_source'] = 'stored_payment_source'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        brand_name
        locale
        return_url
        cancel_url
        stored_payment_source
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(brand_name: SKIP, locale: SKIP, return_url: SKIP,
                   cancel_url: SKIP, stored_payment_source: SKIP)
      @brand_name = brand_name unless brand_name == SKIP
      @locale = locale unless locale == SKIP
      @return_url = return_url unless return_url == SKIP
      @cancel_url = cancel_url unless cancel_url == SKIP
      @stored_payment_source = stored_payment_source unless stored_payment_source == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand_name = hash.key?('brand_name') ? hash['brand_name'] : SKIP
      locale = hash.key?('locale') ? hash['locale'] : SKIP
      return_url = hash.key?('return_url') ? hash['return_url'] : SKIP
      cancel_url = hash.key?('cancel_url') ? hash['cancel_url'] : SKIP
      stored_payment_source = StoredPaymentSource.from_hash(hash['stored_payment_source']) if
        hash['stored_payment_source']

      # Create object from extracted values.
      OrderConfirmApplicationContext.new(brand_name: brand_name,
                                         locale: locale,
                                         return_url: return_url,
                                         cancel_url: cancel_url,
                                         stored_payment_source: stored_payment_source)
    end
  end
end
