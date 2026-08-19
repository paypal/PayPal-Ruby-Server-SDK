
# Level 2 Card Processing Data

The level 2 card processing data collections. If your merchant account has been configured for Level 2 processing this field will be passed to the processor on your behalf. Please contact your PayPal Technical Account Manager to define level 2 data for your business.

## Structure

`Level2CardProcessingData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Optional | Use this field to pass a purchase identification value of up to 127 ASCII characters. The length of this field will be adjusted to meet network specifications (25chars for Visa and Mastercard, 17chars for Amex), and the original invoice ID will still be displayed in your existing reports.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `127`, *Pattern*: `^[\w‘\-.,":;\!?]*$` |
| `tax_total` | [`Money`](../../doc/models/money.md) | Optional | The currency and amount for a financial transaction, such as a balance or payment due. |

## Example

```ruby
level_2_card_processing_data = Level2CardProcessingData.new(
  invoice_id: 'invoice_id2',
  tax_total: Money.new(
    currency_code: 'currency_code4',
    value: 'value0'
  )
)
```

