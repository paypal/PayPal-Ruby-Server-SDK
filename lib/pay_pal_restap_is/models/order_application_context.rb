# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Customizes the payer experience during the approval process for the payment
  # with PayPal.<blockquote><strong>Note:</strong> Partners and Marketplaces
  # might configure <code>brand_name</code> and <code>shipping_preference</code>
  # during partner account setup, which overrides the request
  # values.</blockquote>
  class OrderApplicationContext < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # DEPRECATED. The label that overrides the business name in the PayPal
    # account on the PayPal site. The fields in `application_context` are now
    # available in the `experience_context` object under the `payment_source`
    # which supports them (eg.
    # `payment_source.paypal.experience_context.brand_name`). Please specify
    # this field in the `experience_context` object instead of the
    # `application_context` object.
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

    # DEPRECATED. DEPRECATED. The type of landing page to show on the PayPal
    # site for customer checkout.  The fields in `application_context` are now
    # available in the `experience_context` object under the `payment_source`
    # which supports them (eg.
    # `payment_source.paypal.experience_context.landing_page`). Please specify
    # this field in the `experience_context` object instead of the
    # `application_context` object.
    # @return [OrderApplicationContextLandingPage]
    attr_accessor :landing_page

    # DEPRECATED. DEPRECATED. The shipping preference:<ul><li>Displays the
    # shipping address to the customer.</li><li>Enables the customer to choose
    # an address on the PayPal site.</li><li>Restricts the customer from
    # changing the address during the payment-approval process.</li></ul>.  The
    # fields in `application_context` are now available in the
    # `experience_context` object under the `payment_source` which supports them
    # (eg. `payment_source.paypal.experience_context.shipping_preference`).
    # Please specify this field in the `experience_context` object instead of
    # the `application_context` object.
    # @return [OrderApplicationContextShippingPreference]
    attr_accessor :shipping_preference

    # DEPRECATED. Configures a <strong>Continue</strong> or <strong>Pay
    # Now</strong> checkout flow.  The fields in `application_context` are now
    # available in the `experience_context` object under the `payment_source`
    # which supports them (eg.
    # `payment_source.paypal.experience_context.user_action`). Please specify
    # this field in the `experience_context` object instead of the
    # `application_context` object.
    # @return [OrderApplicationContextUserAction]
    attr_accessor :user_action

    # The customer and merchant payment preferences.
    # @return [PaymentMethodPreference]
    attr_accessor :payment_method

    # DEPRECATED. The URL where the customer is redirected after the customer
    # approves the payment. The fields in `application_context` are now
    # available in the `experience_context` object under the `payment_source`
    # which supports them (eg.
    # `payment_source.paypal.experience_context.return_url`). Please specify
    # this field in the `experience_context` object instead of the
    # `application_context` object.
    # @return [String]
    attr_accessor :return_url

    # DEPRECATED. The URL where the customer is redirected after the customer
    # cancels the payment. The fields in `application_context` are now available
    # in the `experience_context` object under the `payment_source` which
    # supports them (eg. `payment_source.paypal.experience_context.cancel_url`).
    # Please specify this field in the `experience_context` object instead of
    # the `application_context` object.
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
      @_hash['landing_page'] = 'landing_page'
      @_hash['shipping_preference'] = 'shipping_preference'
      @_hash['user_action'] = 'user_action'
      @_hash['payment_method'] = 'payment_method'
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
        landing_page
        shipping_preference
        user_action
        payment_method
        return_url
        cancel_url
        stored_payment_source
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(
      brand_name: SKIP, locale: SKIP,
      landing_page: OrderApplicationContextLandingPage::NO_PREFERENCE,
      shipping_preference: OrderApplicationContextShippingPreference::GET_FROM_FILE,
      user_action: OrderApplicationContextUserAction::CONTINUE,
      payment_method: SKIP, return_url: SKIP, cancel_url: SKIP,
      stored_payment_source: SKIP
    )
      @brand_name = brand_name unless brand_name == SKIP
      @locale = locale unless locale == SKIP
      @landing_page = landing_page unless landing_page == SKIP
      @shipping_preference = shipping_preference unless shipping_preference == SKIP
      @user_action = user_action unless user_action == SKIP
      @payment_method = payment_method unless payment_method == SKIP
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
      landing_page =
        hash['landing_page'] ||= OrderApplicationContextLandingPage::NO_PREFERENCE
      shipping_preference =
        hash['shipping_preference'] ||= OrderApplicationContextShippingPreference::GET_FROM_FILE
      user_action =
        hash['user_action'] ||= OrderApplicationContextUserAction::CONTINUE
      payment_method = PaymentMethodPreference.from_hash(hash['payment_method']) if
        hash['payment_method']
      return_url = hash.key?('return_url') ? hash['return_url'] : SKIP
      cancel_url = hash.key?('cancel_url') ? hash['cancel_url'] : SKIP
      stored_payment_source = StoredPaymentSource.from_hash(hash['stored_payment_source']) if
        hash['stored_payment_source']

      # Create object from extracted values.
      OrderApplicationContext.new(brand_name: brand_name,
                                  locale: locale,
                                  landing_page: landing_page,
                                  shipping_preference: shipping_preference,
                                  user_action: user_action,
                                  payment_method: payment_method,
                                  return_url: return_url,
                                  cancel_url: cancel_url,
                                  stored_payment_source: stored_payment_source)
    end
  end
end