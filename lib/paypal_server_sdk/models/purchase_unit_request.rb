# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The purchase unit request. Includes required information for the payment
  # contract.
  class PurchaseUnitRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The API caller-provided external ID for the purchase unit. Required for
    # multiple purchase units when you must update the order through `PATCH`. If
    # you omit this value and the order contains only one purchase unit, PayPal
    # sets this value to `default`.
    # @return [String]
    attr_accessor :reference_id

    # The total order amount with an optional breakdown that provides details,
    # such as the total item amount, total tax amount, shipping, handling,
    # insurance, and discounts, if any.<br/>If you specify `amount.breakdown`,
    # the amount equals `item_total` plus `tax_total` plus `shipping` plus
    # `handling` plus `insurance` minus `shipping_discount` minus
    # discount.<br/>The amount must be a positive number. For listed of
    # supported currencies and decimal precision, see the PayPal REST APIs <a
    # href="/docs/integration/direct/rest/currency-codes/">Currency Codes</a>.
    # @return [AmountWithBreakdown]
    attr_accessor :amount

    # The merchant who receives the funds and fulfills the order. The merchant
    # is also known as the payee.
    # @return [Payee]
    attr_accessor :payee

    # Any additional payment instructions to be consider during payment
    # processing. This processing instruction is applicable for Capturing an
    # order or Authorizing an Order.
    # @return [PaymentInstruction]
    attr_accessor :payment_instruction

    # The purchase description. The maximum length of the character is dependent
    # on the type of characters used. The character length is specified assuming
    # a US ASCII character. Depending on type of character; (e.g. accented
    # character, Japanese characters) the number of characters that that can be
    # specified as input might not equal the permissible max length.
    # @return [String]
    attr_accessor :description

    # The API caller-provided external ID. Used to reconcile client transactions
    # with PayPal transactions. Appears in transaction and settlement reports
    # but is not visible to the payer.
    # @return [String]
    attr_accessor :custom_id

    # The API caller-provided external invoice number for this order. Appears in
    # both the payer's transaction history and the emails that the payer
    # receives.
    # @return [String]
    attr_accessor :invoice_id

    # The soft descriptor is the dynamic text used to construct the statement
    # descriptor that appears on a payer's card statement.<br><br>If an Order is
    # paid using the "PayPal Wallet", the statement descriptor will appear in
    # following format on the payer's card statement:
    # <code><var>PAYPAL_prefix</var>+(space)+<var>merchant_descriptor</var>+(spa
    # ce)+ <var>soft_descriptor</var></code><blockquote><strong>Note:</strong>
    # The merchant descriptor is the descriptor of the merchant’s payment
    # receiving preferences which can be seen by logging into the merchant
    # account
    # https://www.sandbox.paypal.com/businessprofile/settings/info/edit</blockqu
    # ote>The <code>PAYPAL</code> prefix uses 8 characters. Only the first 22
    # characters will be displayed in the statement. <br>For example,
    # if:<ul><li>The PayPal prefix toggle is <code>PAYPAL *</code>.</li><li>The
    # merchant descriptor in the profile is <code>Janes Gift</code>.</li><li>The
    # soft descriptor is <code>800-123-1234</code>.</li></ul>Then, the statement
    # descriptor on the card is <code>PAYPAL * Janes Gift 80</code>.
    # @return [String]
    attr_accessor :soft_descriptor

    # An array of items that the customer purchases from the merchant.
    # @return [Array[Item]]
    attr_accessor :items

    # The shipping details.
    # @return [ShippingDetails]
    attr_accessor :shipping

    # Supplementary data about a payment. This object passes information that
    # can be used to improve risk assessments and processing costs, for example,
    # by providing Level 2 and Level 3 payment data.
    # @return [SupplementaryData]
    attr_accessor :supplementary_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reference_id'] = 'reference_id'
      @_hash['amount'] = 'amount'
      @_hash['payee'] = 'payee'
      @_hash['payment_instruction'] = 'payment_instruction'
      @_hash['description'] = 'description'
      @_hash['custom_id'] = 'custom_id'
      @_hash['invoice_id'] = 'invoice_id'
      @_hash['soft_descriptor'] = 'soft_descriptor'
      @_hash['items'] = 'items'
      @_hash['shipping'] = 'shipping'
      @_hash['supplementary_data'] = 'supplementary_data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        reference_id
        payee
        payment_instruction
        description
        custom_id
        invoice_id
        soft_descriptor
        items
        shipping
        supplementary_data
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount:, reference_id: SKIP, payee: SKIP,
                   payment_instruction: SKIP, description: SKIP,
                   custom_id: SKIP, invoice_id: SKIP, soft_descriptor: SKIP,
                   items: SKIP, shipping: SKIP, supplementary_data: SKIP)
      @reference_id = reference_id unless reference_id == SKIP
      @amount = amount
      @payee = payee unless payee == SKIP
      @payment_instruction = payment_instruction unless payment_instruction == SKIP
      @description = description unless description == SKIP
      @custom_id = custom_id unless custom_id == SKIP
      @invoice_id = invoice_id unless invoice_id == SKIP
      @soft_descriptor = soft_descriptor unless soft_descriptor == SKIP
      @items = items unless items == SKIP
      @shipping = shipping unless shipping == SKIP
      @supplementary_data = supplementary_data unless supplementary_data == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = AmountWithBreakdown.from_hash(hash['amount']) if hash['amount']
      reference_id = hash.key?('reference_id') ? hash['reference_id'] : SKIP
      payee = Payee.from_hash(hash['payee']) if hash['payee']
      payment_instruction = PaymentInstruction.from_hash(hash['payment_instruction']) if
        hash['payment_instruction']
      description = hash.key?('description') ? hash['description'] : SKIP
      custom_id = hash.key?('custom_id') ? hash['custom_id'] : SKIP
      invoice_id = hash.key?('invoice_id') ? hash['invoice_id'] : SKIP
      soft_descriptor =
        hash.key?('soft_descriptor') ? hash['soft_descriptor'] : SKIP
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (Item.from_hash(structure) if structure)
        end
      end

      items = SKIP unless hash.key?('items')
      shipping = ShippingDetails.from_hash(hash['shipping']) if hash['shipping']
      supplementary_data = SupplementaryData.from_hash(hash['supplementary_data']) if
        hash['supplementary_data']

      # Create object from extracted values.
      PurchaseUnitRequest.new(amount: amount,
                              reference_id: reference_id,
                              payee: payee,
                              payment_instruction: payment_instruction,
                              description: description,
                              custom_id: custom_id,
                              invoice_id: invoice_id,
                              soft_descriptor: soft_descriptor,
                              items: items,
                              shipping: shipping,
                              supplementary_data: supplementary_data)
    end
  end
end