
# Confirm Order Request

Payer confirms the intent to pay for the Order using the provided payment source.

## Structure

`ConfirmOrderRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_source` | [`PaymentSource`](../../doc/models/payment-source.md) | Required | The payment source definition. |
| `processing_instruction` | [`ProcessingInstruction`](../../doc/models/processing-instruction.md) | Optional | The instruction to process an order. |
| `application_context` | [`OrderConfirmApplicationContext`](../../doc/models/order-confirm-application-context.md) | Optional | Customizes the payer confirmation experience. |

## Example

```ruby
confirm_order_request = ConfirmOrderRequest.new(
  payment_source: PaymentSource.new(
    card: CardRequest.new(
      name: 'name6',
      number: 'number6',
      expiry: 'expiry4',
      security_code: 'security_code8',
      billing_address: Address.new(
        country_code: 'country_code8',
        address_line_1: 'address_line_12',
        address_line_2: 'address_line_28',
        admin_area_2: 'admin_area_28',
        admin_area_1: 'admin_area_14',
        postal_code: 'postal_code0'
      )
    ),
    token: Token.new(
      id: 'id6',
      type: TokenType::BILLING_AGREEMENT
    ),
    paypal: PaypalWallet.new(
      vault_id: 'vault_id0',
      email_address: 'email_address0',
      name: Name.new(
        given_name: 'given_name2',
        surname: 'surname8'
      ),
      phone: PhoneWithType.new(
        phone_number: PhoneNumber.new(
          national_number: 'national_number6'
        ),
        phone_type: PhoneType::OTHER
      ),
      birth_date: 'birth_date8'
    ),
    bancontact: BancontactPaymentRequest.new(
      name: 'name0',
      country_code: 'country_code0',
      experience_context: ExperienceContext.new(
        brand_name: 'brand_name2',
        locale: 'locale6',
        shipping_preference: ExperienceContextShippingPreference::NO_SHIPPING,
        return_url: 'return_url4',
        cancel_url: 'cancel_url6'
      )
    ),
    blik: BlikPaymentRequest.new(
      name: 'name2',
      country_code: 'country_code2',
      email: 'email4',
      experience_context: BlikExperienceContext.new(
        brand_name: 'brand_name2',
        locale: 'locale6',
        shipping_preference: ExperienceContextShippingPreference::NO_SHIPPING,
        return_url: 'return_url4',
        cancel_url: 'cancel_url6'
      ),
      level_0: BlikLevel0PaymentObject.new(
        auth_code: 'auth_code8'
      ),
      one_click: BlikOneClickPaymentRequest.new(
        consumer_reference: 'consumer_reference2',
        auth_code: 'auth_code0',
        alias_label: 'alias_label6',
        alias_key: 'alias_key4'
      )
    )
  ),
  processing_instruction: ProcessingInstruction::ORDER_COMPLETE_ON_PAYMENT_APPROVAL,
  application_context: OrderConfirmApplicationContext.new(
    brand_name: 'brand_name8',
    locale: 'locale2',
    return_url: 'return_url0',
    cancel_url: 'cancel_url2',
    stored_payment_source: StoredPaymentSource.new(
      payment_initiator: PaymentInitiator::CUSTOMER,
      payment_type: StoredPaymentSourcePaymentType::RECURRING,
      usage: StoredPaymentSourceUsageType::FIRST,
      previous_network_transaction_reference: NetworkTransaction.new(
        id: 'id6',
        date: 'date2',
        network: CardBrand::CONFIDIS,
        acquirer_reference_number: 'acquirer_reference_number8'
      )
    )
  )
)
```

