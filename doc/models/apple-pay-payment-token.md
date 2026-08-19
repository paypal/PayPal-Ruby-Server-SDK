
# Apple Pay Payment Token

A resource representing a response for Apple Pay.

## Structure

`ApplePayPaymentToken`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card` | [`ApplePayCard`](../../doc/models/apple-pay-card.md) | Optional | The payment card to be used to fund a payment. Can be a credit or debit card. |

## Example

```ruby
apple_pay_payment_token = ApplePayPaymentToken.new(
  card: ApplePayCard.new(
    name: 'name6',
    type: CardType::UNKNOWN,
    brand: CardBrand::CB_NATIONALE,
    billing_address: Address.new(
      country_code: 'country_code8',
      address_line_1: 'address_line_12',
      address_line_2: 'address_line_28',
      admin_area_2: 'admin_area_28',
      admin_area_1: 'admin_area_14',
      postal_code: 'postal_code0'
    )
  )
)
```

