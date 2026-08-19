
# Setup Token Request

Setup Token Request where the `source` defines the type of instrument to be stored.

## Structure

`SetupTokenRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`Customer`](../../doc/models/customer.md) | Optional | This object defines a customer in your system. Use it to manage customer profiles, save payment methods and contact details. |
| `payment_source` | [`SetupTokenRequestPaymentSource`](../../doc/models/setup-token-request-payment-source.md) | Required | The payment method to vault with the instrument details. |

## Example

```ruby
setup_token_request = SetupTokenRequest.new(
  payment_source: SetupTokenRequestPaymentSource.new(
    card: SetupTokenRequestCard.new(
      name: 'name6',
      number: 'number6',
      expiry: 'expiry4',
      security_code: 'security_code8',
      brand: CardBrand::CB_NATIONALE
    ),
    paypal: VaultPaypalWalletRequest.new(
      description: 'description2',
      usage_pattern: UsagePattern::THRESHOLD_PREPAID,
      shipping: VaultedDigitalWalletShippingDetails.new(
        name: ShippingName.new(
          full_name: 'full_name6'
        ),
        email_address: 'email_address2',
        phone_number: PhoneNumberWithCountryCode.new(
          country_code: 'country_code2',
          national_number: 'national_number6'
        ),
        type: FulfillmentType::SHIPPING,
        address: Address.new(
          country_code: 'country_code6',
          address_line_1: 'address_line_16',
          address_line_2: 'address_line_26',
          admin_area_2: 'admin_area_20',
          admin_area_1: 'admin_area_12',
          postal_code: 'postal_code8'
        )
      ),
      permit_multiple_payment_tokens: false,
      usage_type: PaypalPaymentTokenUsageType::MERCHANT
    ),
    venmo: VaultVenmoRequest.new(
      description: 'description6',
      usage_pattern: UsagePattern::UNSCHEDULED_PREPAID,
      shipping: VaultedDigitalWalletShippingDetails.new(
        name: ShippingName.new(
          full_name: 'full_name6'
        ),
        email_address: 'email_address2',
        phone_number: PhoneNumberWithCountryCode.new(
          country_code: 'country_code2',
          national_number: 'national_number6'
        ),
        type: FulfillmentType::SHIPPING,
        address: Address.new(
          country_code: 'country_code6',
          address_line_1: 'address_line_16',
          address_line_2: 'address_line_26',
          admin_area_2: 'admin_area_20',
          admin_area_1: 'admin_area_12',
          postal_code: 'postal_code8'
        )
      ),
      permit_multiple_payment_tokens: false,
      usage_type: PaypalPaymentTokenUsageType::MERCHANT
    ),
    apple_pay: VaultApplePayRequest.new(
      token: 'token6',
      card: ApplePayRequestCard.new(
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

