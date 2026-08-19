
# Payment Token Response

Full representation of a saved payment token.

## Structure

`PaymentTokenResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | The PayPal-generated ID for the vaulted payment source. This ID should be stored on the merchant's server so the saved payment source can be used for future transactions.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[0-9a-zA-Z_-]+$` |
| `customer` | [`CustomerResponse`](../../doc/models/customer-response.md) | Optional | Customer in merchant's or partner's system of records. |
| `payment_source` | [`PaymentTokenResponsePaymentSource`](../../doc/models/payment-token-response-payment-source.md) | Optional | The vaulted payment method details. |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of related [HATEOAS links](https://developer.paypal.com/api/rest/responses/#hateoas).<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `32` |

## Example

```ruby
payment_token_response = PaymentTokenResponse.new(
  id: 'id6',
  customer: CustomerResponse.new(
    id: 'id0',
    merchant_customer_id: 'merchant_customer_id2'
  ),
  payment_source: PaymentTokenResponsePaymentSource.new(
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
)
```

