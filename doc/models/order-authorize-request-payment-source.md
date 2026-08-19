
# Order Authorize Request Payment Source

The payment source definition.

## Structure

`OrderAuthorizeRequestPaymentSource`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card` | [`CardRequest`](../../doc/models/card-request.md) | Optional | The payment card to use to fund a payment. Can be a credit or debit card. Note: Passing card number, cvv and expiry directly via the API requires PCI SAQ D compliance. *PayPal offers a mechanism by which you do not have to take on the PCI SAQ D burden by using hosted fields - refer to this Integration Guide*. |
| `token` | [`Token`](../../doc/models/token.md) | Optional | The tokenized payment source to fund a payment. |
| `paypal` | [`PaypalWallet`](../../doc/models/paypal-wallet.md) | Optional | A resource that identifies a PayPal Wallet is used for payment. |
| `apple_pay` | [`ApplePayRequest`](../../doc/models/apple-pay-request.md) | Optional | Information needed to pay using ApplePay. |
| `google_pay` | [`GooglePayRequest`](../../doc/models/google-pay-request.md) | Optional | Information needed to pay using Google Pay. |
| `venmo` | [`VenmoWalletRequest`](../../doc/models/venmo-wallet-request.md) | Optional | Information needed to pay using Venmo. |

## Example

```ruby
order_authorize_request_payment_source = OrderAuthorizeRequestPaymentSource.new(
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
  apple_pay: ApplePayRequest.new(
    id: 'id0',
    name: 'name0',
    email_address: 'email_address8',
    phone_number: PhoneNumber.new(
      national_number: 'national_number6'
    ),
    decrypted_token: ApplePayDecryptedTokenData.new(
      tokenized_card: ApplePayTokenizedCard.new(
        name: 'name4',
        number: 'number2',
        expiry: 'expiry2',
        type: CardType::UNKNOWN
      ),
      transaction_amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value2'
      ),
      device_manufacturer_id: 'device_manufacturer_id6',
      payment_data_type: ApplePayPaymentDataType::ENUM_3DSECURE,
      payment_data: ApplePayPaymentData.new(
        cryptogram: 'cryptogram6',
        eci_indicator: 'eci_indicator0',
        emv_data: 'emv_data0',
        pin: 'pin4'
      )
    )
  ),
  google_pay: GooglePayRequest.new(
    name: 'name8',
    email_address: 'email_address6',
    phone_number: PhoneNumberWithCountryCode.new(
      country_code: 'country_code2',
      national_number: 'national_number6'
    ),
    card: GooglePayRequestCard.new(
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
    ),
    decrypted_token: GooglePayDecryptedTokenData.new(
      payment_method: GooglePayPaymentMethod::CARD,
      card: GooglePayCard.new(
        name: 'name6',
        number: 'number6',
        expiry: 'expiry4',
        type: CardType::UNKNOWN
      ),
      authentication_method: GooglePayAuthenticationMethod::PAN_ONLY,
      message_id: 'message_id0',
      message_expiration: 'message_expiration2',
      cryptogram: 'cryptogram6',
      eci_indicator: 'eci_indicator0'
    )
  )
)
```

