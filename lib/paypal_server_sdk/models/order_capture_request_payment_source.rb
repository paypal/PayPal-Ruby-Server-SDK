# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The payment source definition.
  class OrderCaptureRequestPaymentSource < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The payment card to use to fund a payment. Can be a credit or debit
    # card.<blockquote><strong>Note:</strong> Passing card number, cvv and
    # expiry directly via the API requires <a
    # href="https://www.pcisecuritystandards.org/pci_security/completing_self_as
    # sessment"> PCI SAQ D compliance</a>. <br>*PayPal offers a mechanism by
    # which you do not have to take on the <strong>PCI SAQ D</strong> burden by
    # using hosted fields - refer to <a
    # href="https://developer.paypal.com/docs/checkout/advanced/integrate/">this
    # Integration Guide</a>*.</blockquote>
    # @return [CardRequest]
    attr_accessor :card

    # The tokenized payment source to fund a payment.
    # @return [Token]
    attr_accessor :token

    # A resource that identifies a PayPal Wallet is used for payment.
    # @return [PayPalWallet]
    attr_accessor :paypal

    # Information needed to pay using ApplePay.
    # @return [ApplePayRequest]
    attr_accessor :apple_pay

    # Information needed to pay using Google Pay.
    # @return [GooglePayRequest]
    attr_accessor :google_pay

    # Information needed to pay using Venmo.
    # @return [VenmoWalletRequest]
    attr_accessor :venmo

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card'] = 'card'
      @_hash['token'] = 'token'
      @_hash['paypal'] = 'paypal'
      @_hash['apple_pay'] = 'apple_pay'
      @_hash['google_pay'] = 'google_pay'
      @_hash['venmo'] = 'venmo'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card
        token
        paypal
        apple_pay
        google_pay
        venmo
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card: SKIP, token: SKIP, paypal: SKIP, apple_pay: SKIP,
                   google_pay: SKIP, venmo: SKIP)
      @card = card unless card == SKIP
      @token = token unless token == SKIP
      @paypal = paypal unless paypal == SKIP
      @apple_pay = apple_pay unless apple_pay == SKIP
      @google_pay = google_pay unless google_pay == SKIP
      @venmo = venmo unless venmo == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card = CardRequest.from_hash(hash['card']) if hash['card']
      token = Token.from_hash(hash['token']) if hash['token']
      paypal = PayPalWallet.from_hash(hash['paypal']) if hash['paypal']
      apple_pay = ApplePayRequest.from_hash(hash['apple_pay']) if hash['apple_pay']
      google_pay = GooglePayRequest.from_hash(hash['google_pay']) if hash['google_pay']
      venmo = VenmoWalletRequest.from_hash(hash['venmo']) if hash['venmo']

      # Create object from extracted values.
      OrderCaptureRequestPaymentSource.new(card: card,
                                           token: token,
                                           paypal: paypal,
                                           apple_pay: apple_pay,
                                           google_pay: google_pay,
                                           venmo: venmo)
    end
  end
end
