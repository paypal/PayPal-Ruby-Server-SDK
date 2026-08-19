
# Order Capture Request

Completes an capture payment for an order.

## Structure

`OrderCaptureRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_source` | [`OrderCaptureRequestPaymentSource`](../../doc/models/order-capture-request-payment-source.md) | Optional | The payment source definition. |

## Example

```ruby
order_capture_request = OrderCaptureRequest.new(
  payment_source: OrderCaptureRequestPaymentSource.new(
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
)
```

