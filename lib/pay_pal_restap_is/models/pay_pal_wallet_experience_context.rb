# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # Customizes the payer experience during the approval process for payment with
  # PayPal.<blockquote><strong>Note:</strong> Partners and Marketplaces might
  # configure <code>brand_name</code> and <code>shipping_preference</code>
  # during partner account setup, which overrides the request
  # values.</blockquote>
  class PayPalWalletExperienceContext < BaseModel
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

    # The type of landing page to show on the PayPal site for customer checkout.
    # @return [PayPalExperienceLandingPage]
    attr_accessor :landing_page

    # Configures a <strong>Continue</strong> or <strong>Pay Now</strong>
    # checkout flow.
    # @return [PayPalExperienceUserAction]
    attr_accessor :user_action

    # The merchant-preferred payment methods.
    # @return [PayeePaymentMethodPreference]
    attr_accessor :payment_method_preference

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand_name'] = 'brand_name'
      @_hash['locale'] = 'locale'
      @_hash['shipping_preference'] = 'shipping_preference'
      @_hash['return_url'] = 'return_url'
      @_hash['cancel_url'] = 'cancel_url'
      @_hash['landing_page'] = 'landing_page'
      @_hash['user_action'] = 'user_action'
      @_hash['payment_method_preference'] = 'payment_method_preference'
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
        landing_page
        user_action
        payment_method_preference
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(
      brand_name: SKIP, locale: SKIP,
      shipping_preference: ShippingPreference::GET_FROM_FILE, return_url: SKIP,
      cancel_url: SKIP,
      landing_page: PayPalExperienceLandingPage::NO_PREFERENCE,
      user_action: PayPalExperienceUserAction::CONTINUE,
      payment_method_preference: PayeePaymentMethodPreference::UNRESTRICTED
    )
      @brand_name = brand_name unless brand_name == SKIP
      @locale = locale unless locale == SKIP
      @shipping_preference = shipping_preference unless shipping_preference == SKIP
      @return_url = return_url unless return_url == SKIP
      @cancel_url = cancel_url unless cancel_url == SKIP
      @landing_page = landing_page unless landing_page == SKIP
      @user_action = user_action unless user_action == SKIP
      unless payment_method_preference == SKIP
        @payment_method_preference =
          payment_method_preference
      end
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
      landing_page =
        hash['landing_page'] ||= PayPalExperienceLandingPage::NO_PREFERENCE
      user_action = hash['user_action'] ||= PayPalExperienceUserAction::CONTINUE
      payment_method_preference =
        hash['payment_method_preference'] ||= PayeePaymentMethodPreference::UNRESTRICTED

      # Create object from extracted values.
      PayPalWalletExperienceContext.new(brand_name: brand_name,
                                        locale: locale,
                                        shipping_preference: shipping_preference,
                                        return_url: return_url,
                                        cancel_url: cancel_url,
                                        landing_page: landing_page,
                                        user_action: user_action,
                                        payment_method_preference: payment_method_preference)
    end
  end
end
