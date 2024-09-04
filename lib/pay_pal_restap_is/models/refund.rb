# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # The refund information.
  class Refund < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The status of the refund.
    # @return [RefundStatus]
    attr_accessor :status

    # The details of the refund status.
    # @return [RefundStatusDetails]
    attr_accessor :status_details

    # The PayPal-generated ID for the refund.
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

    # Reference ID issued for the card transaction. This ID can be used to track
    # the transaction across processors, card brands and issuing banks.
    # @return [String]
    attr_accessor :acquirer_reference_number

    # The reason for the refund. Appears in both the payer's transaction history
    # and the emails that the payer receives.
    # @return [String]
    attr_accessor :note_to_payer

    # The breakdown of the refund.
    # @return [SellerPayableBreakdown]
    attr_accessor :seller_payable_breakdown

    # The details for the merchant who receives the funds and fulfills the
    # order. The merchant is also known as the payee.
    # @return [PayeeBase]
    attr_accessor :payer

    # An array of related [HATEOAS
    # links](/docs/api/reference/api-responses/#hateoas-links).
    # @return [Array[LinkDescription]]
    attr_accessor :links

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

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash['status_details'] = 'status_details'
      @_hash['id'] = 'id'
      @_hash['amount'] = 'amount'
      @_hash['invoice_id'] = 'invoice_id'
      @_hash['custom_id'] = 'custom_id'
      @_hash['acquirer_reference_number'] = 'acquirer_reference_number'
      @_hash['note_to_payer'] = 'note_to_payer'
      @_hash['seller_payable_breakdown'] = 'seller_payable_breakdown'
      @_hash['payer'] = 'payer'
      @_hash['links'] = 'links'
      @_hash['create_time'] = 'create_time'
      @_hash['update_time'] = 'update_time'
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
        acquirer_reference_number
        note_to_payer
        seller_payable_breakdown
        payer
        links
        create_time
        update_time
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(status: SKIP, status_details: SKIP, id: SKIP, amount: SKIP,
                   invoice_id: SKIP, custom_id: SKIP,
                   acquirer_reference_number: SKIP, note_to_payer: SKIP,
                   seller_payable_breakdown: SKIP, payer: SKIP, links: SKIP,
                   create_time: SKIP, update_time: SKIP)
      @status = status unless status == SKIP
      @status_details = status_details unless status_details == SKIP
      @id = id unless id == SKIP
      @amount = amount unless amount == SKIP
      @invoice_id = invoice_id unless invoice_id == SKIP
      @custom_id = custom_id unless custom_id == SKIP
      unless acquirer_reference_number == SKIP
        @acquirer_reference_number =
          acquirer_reference_number
      end
      @note_to_payer = note_to_payer unless note_to_payer == SKIP
      @seller_payable_breakdown = seller_payable_breakdown unless seller_payable_breakdown == SKIP
      @payer = payer unless payer == SKIP
      @links = links unless links == SKIP
      @create_time = create_time unless create_time == SKIP
      @update_time = update_time unless update_time == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('status') ? hash['status'] : SKIP
      status_details = RefundStatusDetails.from_hash(hash['status_details']) if
        hash['status_details']
      id = hash.key?('id') ? hash['id'] : SKIP
      amount = Money.from_hash(hash['amount']) if hash['amount']
      invoice_id = hash.key?('invoice_id') ? hash['invoice_id'] : SKIP
      custom_id = hash.key?('custom_id') ? hash['custom_id'] : SKIP
      acquirer_reference_number =
        hash.key?('acquirer_reference_number') ? hash['acquirer_reference_number'] : SKIP
      note_to_payer = hash.key?('note_to_payer') ? hash['note_to_payer'] : SKIP
      if hash['seller_payable_breakdown']
        seller_payable_breakdown = SellerPayableBreakdown.from_hash(hash['seller_payable_breakdown'])
      end
      payer = PayeeBase.from_hash(hash['payer']) if hash['payer']
      # Parameter is an array, so we need to iterate through it
      links = nil
      unless hash['links'].nil?
        links = []
        hash['links'].each do |structure|
          links << (LinkDescription.from_hash(structure) if structure)
        end
      end

      links = SKIP unless hash.key?('links')
      create_time = hash.key?('create_time') ? hash['create_time'] : SKIP
      update_time = hash.key?('update_time') ? hash['update_time'] : SKIP

      # Create object from extracted values.
      Refund.new(status: status,
                 status_details: status_details,
                 id: id,
                 amount: amount,
                 invoice_id: invoice_id,
                 custom_id: custom_id,
                 acquirer_reference_number: acquirer_reference_number,
                 note_to_payer: note_to_payer,
                 seller_payable_breakdown: seller_payable_breakdown,
                 payer: payer,
                 links: links,
                 create_time: create_time,
                 update_time: update_time)
    end
  end
end
