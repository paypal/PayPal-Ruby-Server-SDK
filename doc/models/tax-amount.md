
# Tax Amount

The tax levied by a government on the purchase of goods or services.

## Structure

`TaxAmount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `tax_amount` | [`Money`](../../doc/models/money.md) | Optional | The currency and amount for a financial transaction, such as a balance or payment due. |

## Example

```ruby
tax_amount = TaxAmount.new(
  tax_amount: Money.new(
    currency_code: 'currency_code2',
    value: 'value8'
  )
)
```

