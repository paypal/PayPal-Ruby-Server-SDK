
# Payment Token Request

Payment Token Request where the `source` defines the type of instrument to be stored.

## Structure

`PaymentTokenRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`Customer`](../../doc/models/customer.md) | Optional | This object defines a customer in your system. Use it to manage customer profiles, save payment methods and contact details. |
| `payment_source` | [`PaymentTokenRequestPaymentSource`](../../doc/models/payment-token-request-payment-source.md) | Required | The payment method to vault with the instrument details. |

## Example

```ruby
payment_token_request = PaymentTokenRequest.new(
  payment_source: PaymentTokenRequestPaymentSource.new(
    card: PaymentTokenRequestCard.new(
      name: 'name6',
      number: 'number6',
      expiry: 'expiry4',
      security_code: 'security_code8',
      brand: CardBrand::CB_NATIONALE
    ),
    token: VaultTokenRequest.new(
      id: 'id6',
      type: VaultTokenRequestType::SETUP_TOKEN
    )
  ),
  customer: Customer.new(
    id: 'id0',
    merchant_customer_id: 'merchant_customer_id2'
  )
)
```

