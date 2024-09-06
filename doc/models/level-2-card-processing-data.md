
# Level 2 Card Processing Data

The level 2 card processing data collections. If your merchant account has been configured for Level 2 processing this field will be passed to the processor on your behalf. Please contact your PayPal Technical Account Manager to define level 2 data for your business.

## Structure

`Level2CardProcessingData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Optional | Use this field to pass a purchase identification value of up to 12 ASCII characters for AIB and 17 ASCII characters for all other processors.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `17`, *Pattern*: `^[\w‘\-.,":;\!?]*$` |
| `tax_total` | [`Money`](../../doc/models/money.md) | Optional | The currency and amount for a financial transaction, such as a balance or payment due. |

## Example (as JSON)

```json
{
  "invoice_id": "invoice_id8",
  "tax_total": {
    "currency_code": "currency_code4",
    "value": "value0"
  }
}
```
