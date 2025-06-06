# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Configures a Continue or Pay Now checkout flow.
  class PaypalExperienceUserAction
    PAYPAL_EXPERIENCE_USER_ACTION = [
      # After you redirect the customer to the PayPal payment page, a Continue
      # button appears. Use this option when the final amount is not known when
      # the checkout flow is initiated and you want to redirect the customer to
      # the merchant page without processing the payment.
      CONTINUE = 'CONTINUE'.freeze,

      # After you redirect the customer to the PayPal payment page, a Pay Now
      # button appears. Use this option when the final amount is known when the
      # checkout is initiated and you want to process the payment immediately
      # when the customer clicks Pay Now.
      PAY_NOW = 'PAY_NOW'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
