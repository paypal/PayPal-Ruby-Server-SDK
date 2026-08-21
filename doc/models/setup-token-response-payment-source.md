
# Setup Token Response Payment Source

The setup payment method details.

## Structure

`SetupTokenResponsePaymentSource`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card` | [`SetupTokenResponseCard`](../../doc/models/setup-token-response-card.md) | Optional | - |
| `paypal` | [`PaypalPaymentToken`](../../doc/models/paypal-payment-token.md) | Optional, Read-only | Full representation of a PayPal Payment Token. |
| `venmo` | [`VenmoPaymentToken`](../../doc/models/venmo-payment-token.md) | Optional, Read-only | Full representation of a Venmo Payment Token. |

## Example

```ruby
setup_token_response_payment_source = SetupTokenResponsePaymentSource.new(
  card: SetupTokenResponseCard.new(
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
  )
)
```

