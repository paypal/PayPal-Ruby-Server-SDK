
# Customer Vault Payment Tokens Response

Collection of payment tokens saved for a given customer.

## Structure

`CustomerVaultPaymentTokensResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total_items` | `Integer` | Optional | Total number of items.<br><br>**Constraints**: `>= 1`, `<= 50` |
| `total_pages` | `Integer` | Optional | Total number of pages.<br><br>**Constraints**: `>= 1`, `<= 10` |
| `customer` | [`VaultResponseCustomer`](../../doc/models/vault-response-customer.md) | Optional | This object defines a customer in your system. Use it to manage customer profiles, save payment methods and contact details. |
| `payment_tokens` | [`Array[PaymentTokenResponse]`](../../doc/models/payment-token-response.md) | Optional | **Constraints**: *Minimum Items*: `0`, *Maximum Items*: `64` |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of related [HATEOAS links](https://developer.paypal.com/api/rest/responses/#hateoas).<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `32` |

## Example

```ruby
customer_vault_payment_tokens_response = CustomerVaultPaymentTokensResponse.new(
  total_items: 42,
  total_pages: 10,
  customer: VaultResponseCustomer.new(
    id: 'id0',
    merchant_customer_id: 'merchant_customer_id2'
  ),
  payment_tokens: [
    PaymentTokenResponse.new(
      id: 'id4',
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
    ),
    PaymentTokenResponse.new(
      id: 'id4',
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
  ]
)
```

