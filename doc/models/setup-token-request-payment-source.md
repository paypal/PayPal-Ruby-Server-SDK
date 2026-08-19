
# Setup Token Request Payment Source

The payment method to vault with the instrument details.

## Structure

`SetupTokenRequestPaymentSource`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card` | [`SetupTokenRequestCard`](../../doc/models/setup-token-request-card.md) | Optional | A Resource representing a request to vault a Card. |
| `paypal` | [`VaultPaypalWalletRequest`](../../doc/models/vault-paypal-wallet-request.md) | Optional | A resource representing a request to vault PayPal Wallet. |
| `venmo` | [`VaultVenmoRequest`](../../doc/models/vault-venmo-request.md) | Optional | A resource representing a request to vault Venmo. |
| `apple_pay` | [`VaultApplePayRequest`](../../doc/models/vault-apple-pay-request.md) | Optional | A resource representing a request to vault Apple Pay. |
| `token` | [`VaultTokenRequest`](../../doc/models/vault-token-request.md) | Optional | The Tokenized Payment Source representing a Request to Vault a Token. |
| `bank` | [`BankRequest`](../../doc/models/bank-request.md) | Optional | A Resource representing a request to vault a Bank used for ACH Debit. |

## Example

```ruby
setup_token_request_payment_source = SetupTokenRequestPaymentSource.new(
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
)
```

