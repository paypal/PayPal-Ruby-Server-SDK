# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # A captured payment.
  class CapturedPayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The status of the captured payment.
    # @return [CaptureStatus]
    attr_accessor :status

    # The details of the captured payment status.
    # @return [CaptureStatusDetails]
    attr_accessor :status_details

    # The PayPal-generated ID for the captured payment.
    # @return [String]
    attr_accessor :id

    # The currency and amount for a financial transaction, such as a balance or
    # payment due.
    # @return [Money]
    attr_accessor :amount

    # The API caller-provided external invoice number for this order. Appears in
    # both the payer's transaction history and the emails that the payer
    # receives.
    # @return [String]
    attr_accessor :invoice_id

    # The API caller-provided external ID. Used to reconcile API
    # caller-initiated transactions with PayPal transactions. Appears in
    # transaction and settlement reports.
    # @return [String]
    attr_accessor :custom_id

    # Reference values used by the card network to identify a transaction.
    # @return [NetworkTransactionReference]
    attr_accessor :network_transaction_reference

    # The level of protection offered as defined by [PayPal Seller Protection
    # for
    # Merchants](https://www.paypal.com/us/webapps/mpp/security/seller-protectio
    # n).
    # @return [SellerProtection]
    attr_accessor :seller_protection

    # Indicates whether you can make additional captures against the authorized
    # payment. Set to `true` if you do not intend to capture additional payments
    # against the authorization. Set to `false` if you intend to capture
    # additional payments against the authorization.
    # @return [TrueClass | FalseClass]
    attr_accessor :final_capture

    # The detailed breakdown of the capture activity. This is not available for
    # transactions that are in pending state.
    # @return [SellerReceivableBreakdown]
    attr_accessor :seller_receivable_breakdown

    # The funds that are held on behalf of the merchant.
    # @return [DisbursementMode]
    attr_accessor :disbursement_mode

    # An array of related [HATEOAS
    # links](/docs/api/reference/api-responses/#hateoas-links).
    # @return [Array[LinkDescription]]
    attr_accessor :links

    # The processor response information for payment requests, such as direct
    # credit card transactions.
    # @return [ProcessorResponse]
    attr_accessor :processor_response

    # The date and time, in [Internet date and time
    # format](https://tools.ietf.org/html/rfc3339#section-5.6). Seconds are
    # required while fractional seconds are
    # optional.<blockquote><strong>Note:</strong> The regular expression
    # provides guidance but does not reject all invalid dates.</blockquote>
    # @return [String]
    attr_accessor :create_time

    # The date and time, in [Internet date and time
    # format](https://tools.ietf.org/html/rfc3339#section-5.6). Seconds are
    # required while fractional seconds are
    # optional.<blockquote><strong>Note:</strong> The regular expression
    # provides guidance but does not reject all invalid dates.</blockquote>
    # @return [String]
    attr_accessor :update_time

    # The supplementary data.
    # @return [PaymentSupplementaryData]
    attr_accessor :supplementary_data

    # The details for the merchant who receives the funds and fulfills the
    # order. The merchant is also known as the payee.
    # @return [Payee]
    attr_accessor :payee

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash['status_details'] = 'status_details'
      @_hash['id'] = 'id'
      @_hash['amount'] = 'amount'
      @_hash['invoice_id'] = 'invoice_id'
      @_hash['custom_id'] = 'custom_id'
      @_hash['network_transaction_reference'] =
        'network_transaction_reference'
      @_hash['seller_protection'] = 'seller_protection'
      @_hash['final_capture'] = 'final_capture'
      @_hash['seller_receivable_breakdown'] = 'seller_receivable_breakdown'
      @_hash['disbursement_mode'] = 'disbursement_mode'
      @_hash['links'] = 'links'
      @_hash['processor_response'] = 'processor_response'
      @_hash['create_time'] = 'create_time'
      @_hash['update_time'] = 'update_time'
      @_hash['supplementary_data'] = 'supplementary_data'
      @_hash['payee'] = 'payee'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        status
        status_details
        id
        amount
        invoice_id
        custom_id
        network_transaction_reference
        seller_protection
        final_capture
        seller_receivable_breakdown
        disbursement_mode
        links
        processor_response
        create_time
        update_time
        supplementary_data
        payee
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(status: SKIP, status_details: SKIP, id: SKIP, amount: SKIP,
                   invoice_id: SKIP, custom_id: SKIP,
                   network_transaction_reference: SKIP, seller_protection: SKIP,
                   final_capture: false, seller_receivable_breakdown: SKIP,
                   disbursement_mode: DisbursementMode::INSTANT, links: SKIP,
                   processor_response: SKIP, create_time: SKIP,
                   update_time: SKIP, supplementary_data: SKIP, payee: SKIP)
      @status = status unless status == SKIP
      @status_details = status_details unless status_details == SKIP
      @id = id unless id == SKIP
      @amount = amount unless amount == SKIP
      @invoice_id = invoice_id unless invoice_id == SKIP
      @custom_id = custom_id unless custom_id == SKIP
      unless network_transaction_reference == SKIP
        @network_transaction_reference =
          network_transaction_reference
      end
      @seller_protection = seller_protection unless seller_protection == SKIP
      @final_capture = final_capture unless final_capture == SKIP
      unless seller_receivable_breakdown == SKIP
        @seller_receivable_breakdown =
          seller_receivable_breakdown
      end
      @disbursement_mode = disbursement_mode unless disbursement_mode == SKIP
      @links = links unless links == SKIP
      @processor_response = processor_response unless processor_response == SKIP
      @create_time = create_time unless create_time == SKIP
      @update_time = update_time unless update_time == SKIP
      @supplementary_data = supplementary_data unless supplementary_data == SKIP
      @payee = payee unless payee == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('status') ? hash['status'] : SKIP
      status_details = CaptureStatusDetails.from_hash(hash['status_details']) if
        hash['status_details']
      id = hash.key?('id') ? hash['id'] : SKIP
      amount = Money.from_hash(hash['amount']) if hash['amount']
      invoice_id = hash.key?('invoice_id') ? hash['invoice_id'] : SKIP
      custom_id = hash.key?('custom_id') ? hash['custom_id'] : SKIP
      if hash['network_transaction_reference']
        network_transaction_reference = NetworkTransactionReference.from_hash(hash['network_transaction_reference'])
      end
      seller_protection = SellerProtection.from_hash(hash['seller_protection']) if
        hash['seller_protection']
      final_capture = hash['final_capture'] ||= false
      if hash['seller_receivable_breakdown']
        seller_receivable_breakdown = SellerReceivableBreakdown.from_hash(hash['seller_receivable_breakdown'])
      end
      disbursement_mode =
        hash['disbursement_mode'] ||= DisbursementMode::INSTANT
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (LinkDescription.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')
      processor_response = ProcessorResponse.from_hash(hash['processor_response']) if
        hash['processor_response']
      create_time = hash.key?('create_time') ? hash['create_time'] : SKIP
      update_time = hash.key?('update_time') ? hash['update_time'] : SKIP
      supplementary_data = PaymentSupplementaryData.from_hash(hash['supplementary_data']) if
        hash['supplementary_data']
      payee = Payee.from_hash(hash['payee']) if hash['payee']

      # Create object from extracted values.
      CapturedPayment.new(status: status,
                          status_details: status_details,
                          id: id,
                          amount: amount,
                          invoice_id: invoice_id,
                          custom_id: custom_id,
                          network_transaction_reference: network_transaction_reference,
                          seller_protection: seller_protection,
                          final_capture: final_capture,
                          seller_receivable_breakdown: seller_receivable_breakdown,
                          disbursement_mode: disbursement_mode,
                          links: links,
                          processor_response: processor_response,
                          create_time: create_time,
                          update_time: update_time,
                          supplementary_data: supplementary_data,
                          payee: payee)
    end
  end
end
