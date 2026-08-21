
# Cobranded Card

Details about the merchant cobranded card used for order purchase.

## Structure

`CobrandedCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `labels` | `Array[String]` | Optional | Array of labels for the cobranded card.<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `25`, *Minimum Length*: `1`, *Maximum Length*: `256` |
| `payee` | [`PayeeBase`](../../doc/models/payee-base.md) | Optional | The details for the merchant who receives the funds and fulfills the order. The merchant is also known as the payee. |
| `amount` | [`Money`](../../doc/models/money.md) | Optional | The currency and amount for a financial transaction, such as a balance or payment due. |

## Example

```ruby
cobranded_card = CobrandedCard.new(
  labels: [
    'labels0',
    'labels1',
    'labels2'
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
```

