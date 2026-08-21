
# Setup Token Response

Minimal representation of a cached setup token.

## Structure

`SetupTokenResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | The PayPal-generated ID for the vaulted payment source. This ID should be stored on the merchant's server so the saved payment source can be used for future transactions.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[0-9a-zA-Z_-]+$` |
| `customer` | [`Customer`](../../doc/models/customer.md) | Optional | This object defines a customer in your system. Use it to manage customer profiles, save payment methods and contact details. |
| `status` | [`PaymentTokenStatus`](../../doc/models/payment-token-status.md) | Optional | The status of the payment token.<br><br>**Default**: `PaymentTokenStatus::CREATED`<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[0-9A-Z_]+$` |
| `payment_source` | [`SetupTokenResponsePaymentSource`](../../doc/models/setup-token-response-payment-source.md) | Optional | The setup payment method details. |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of related [HATEOAS links](https://developer.paypal.com/api/rest/responses/#hateoas).<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `32` |

## Example

```ruby
setup_token_response = SetupTokenResponse.new(
  id: 'id0',
  customer: Customer.new(
    id: 'id0',
    merchant_customer_id: 'merchant_customer_id2'
  ),
  status: PaymentTokenStatus::CREATED,
  payment_source: SetupTokenResponsePaymentSource.new(
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
)
```

