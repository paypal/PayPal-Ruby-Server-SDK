# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Expected business/pricing model for the billing agreement.
  class VenmoPaymentTokenUsagePattern
    VENMO_PAYMENT_TOKEN_USAGE_PATTERN = [
      # On-demand instant payments – non-recurring, pre-paid, variable amount,
      # variable frequency.
      IMMEDIATE = 'IMMEDIATE'.freeze,

      # Pay after use, non-recurring post-paid, variable amount, irregular
      # frequency.
      DEFERRED = 'DEFERRED'.freeze,

      # Pay upfront fixed or variable amount on a fixed date before the
      # goods/service is delivered.
      RECURRING_PREPAID = 'RECURRING_PREPAID'.freeze,

      # Pay on a fixed date based on usage or consumption after the
      # goods/service is delivered.
      RECURRING_POSTPAID = 'RECURRING_POSTPAID'.freeze,

      # Charge payer when the set amount is reached or monthly billing cycle,
      # whichever comes first, before the goods/service is delivered.
      THRESHOLD_PREPAID = 'THRESHOLD_PREPAID'.freeze,

      # Charge payer when the set amount is reached or monthly billing cycle,
      # whichever comes first, after the goods/service is delivered.
      THRESHOLD_POSTPAID = 'THRESHOLD_POSTPAID'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
