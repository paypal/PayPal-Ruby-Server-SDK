
# Payment Token Response Payment Source

The vaulted payment method details.

## Structure

`PaymentTokenResponsePaymentSource`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card` | [`CardPaymentTokenEntity`](../../doc/models/card-payment-token-entity.md) | Optional | Full representation of a Card Payment Token including network token. |
| `paypal` | [`PaypalPaymentToken`](../../doc/models/paypal-payment-token.md) | Optional, Read-only | Full representation of a PayPal Payment Token. |
| `venmo` | [`VenmoPaymentToken`](../../doc/models/venmo-payment-token.md) | Optional, Read-only | Full representation of a Venmo Payment Token. |
| `apple_pay` | [`ApplePayPaymentToken`](../../doc/models/apple-pay-payment-token.md) | Optional | A resource representing a response for Apple Pay. |

## Example

```ruby
payment_token_response_payment_source = PaymentTokenResponsePaymentSource.new(
  card: CardPaymentTokenEntity.new(
    name: 'name6',
    brand: CardBrand::CB_NATIONALE,
    expiry: 'expiry4',
    billing_address: CardResponseAddress.new(
      country_code: 'country_code8',
      address_line_1: 'address_line_12',
      address_line_2: 'address_line_28',
      admin_area_2: 'admin_area_28',
      admin_area_1: 'admin_area_14',
      postal_code: 'postal_code0'
    )
  ),
  apple_pay: ApplePayPaymentToken.new(
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
)
```

