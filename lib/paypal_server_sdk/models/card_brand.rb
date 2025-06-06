# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The card network or brand. Applies to credit, debit, gift, and payment
  # cards.
  class CardBrand
    CARD_BRAND = [
      # Visa card.
      VISA = 'VISA'.freeze,

      # Mastercard card.
      MASTERCARD = 'MASTERCARD'.freeze,

      # Discover card.
      DISCOVER = 'DISCOVER'.freeze,

      # American Express card.
      AMEX = 'AMEX'.freeze,

      # Solo debit card.
      SOLO = 'SOLO'.freeze,

      # Japan Credit Bureau card.
      JCB = 'JCB'.freeze,

      # Military Star card.
      STAR = 'STAR'.freeze,

      # Delta Airlines card.
      DELTA = 'DELTA'.freeze,

      # Switch credit card.
      SWITCH = 'SWITCH'.freeze,

      # Maestro credit card.
      MAESTRO = 'MAESTRO'.freeze,

      # Carte Bancaire (CB) credit card.
      CB_NATIONALE = 'CB_NATIONALE'.freeze,

      # Configoga credit card.
      CONFIGOGA = 'CONFIGOGA'.freeze,

      # Confidis credit card.
      CONFIDIS = 'CONFIDIS'.freeze,

      # Visa Electron credit card.
      ELECTRON = 'ELECTRON'.freeze,

      # Cetelem credit card.
      CETELEM = 'CETELEM'.freeze,

      # China union pay credit card.
      CHINA_UNION_PAY = 'CHINA_UNION_PAY'.freeze,

      # The Diners Club International banking and payment services capability
      # network owned by Discover Financial Services (DFS), one of the most
      # recognized brands in US financial services.
      DINERS = 'DINERS'.freeze,

      # The Brazilian Elo card payment network.
      ELO = 'ELO'.freeze,

      # The Hiper - Ingenico ePayment network.
      HIPER = 'HIPER'.freeze,

      # The Brazilian Hipercard payment network that's widely accepted in the
      # retail market.
      HIPERCARD = 'HIPERCARD'.freeze,

      # The RuPay payment network.
      RUPAY = 'RUPAY'.freeze,

      # The GE Credit Union 3Point card payment network.
      GE = 'GE'.freeze,

      # The Synchrony Financial (SYF) payment network.
      SYNCHRONY = 'SYNCHRONY'.freeze,

      # The Electronic Fund Transfer At Point of Sale(EFTPOS) Debit card payment
      # network.
      EFTPOS = 'EFTPOS'.freeze,

      # UNKNOWN payment network.
      UNKNOWN = 'UNKNOWN'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      true
    end
  end
end
