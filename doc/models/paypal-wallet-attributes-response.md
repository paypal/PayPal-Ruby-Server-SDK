
# Paypal Wallet Attributes Response

Additional attributes associated with the use of a PayPal Wallet.

## Structure

`PaypalWalletAttributesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `vault` | [`PaypalWalletVaultResponse`](../../doc/models/paypal-wallet-vault-response.md) | Optional | The details about a saved PayPal Wallet payment source. |
| `cobranded_cards` | [`Array[CobrandedCard]`](../../doc/models/cobranded-card.md) | Optional | An array of merchant cobranded cards used by buyer to complete an order. This array will be present if a merchant has onboarded their cobranded card with PayPal and provided corresponding label(s).<br><br>**Constraints**: *Minimum Items*: `0`, *Maximum Items*: `25` |

## Example

```ruby
paypal_wallet_attributes_response = PaypalWalletAttributesResponse.new(
  vault: PaypalWalletVaultResponse.new(
    id: 'id6',
    status: PaypalWalletVaultStatus::APPROVED,
    customer: PaypalWalletCustomer.new(
      id: 'id0',
      email_address: 'email_address2',
      phone: PhoneWithType.new(
        phone_number: PhoneNumber.new(
          national_number: 'national_number6'
        ),
        phone_type: PhoneType::OTHER
      ),
      name: Name.new(
        given_name: 'given_name2',
        surname: 'surname8'
      ),
      merchant_customer_id: 'merchant_customer_id2'
    )
  ),
  cobranded_cards: [
    CobrandedCard.new(
      labels: [
        'labels4',
        'labels3'
      ],
      payee: PayeeBase.new(
        email_address: 'email_address4',
        merchant_id: 'merchant_id6'
      ),
      amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value0'
      )
    ),
    CobrandedCard.new(
      labels: [
        'labels4',
        'labels3'
      ],
      payee: PayeeBase.new(
        email_address: 'email_address4',
        merchant_id: 'merchant_id6'
      ),
      amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value0'
      )
    )
  ]
)
```

