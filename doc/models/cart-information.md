
# Cart Information

The cart information.

## Structure

`CartInformation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `item_details` | [`Array[ItemDetails]`](../../doc/models/item-details.md) | Optional | An array of item details.<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `32767` |
| `tax_inclusive` | `TrueClass \| FalseClass` | Optional | Indicates whether the item amount or the shipping amount already includes tax.<br><br>**Default**: `false` |
| `paypal_invoice_id` | `String` | Optional | The ID of the invoice. Appears for only PayPal-generated invoices.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `127`, *Pattern*: `^[a-zA-Z0-9_'\-., ":;\!?]*$` |

## Example

```ruby
cart_information = CartInformation.new(
  item_details: [
    ItemDetails.new(
      item_code: 'item_code0',
      item_name: 'item_name8',
      item_description: 'item_description4',
      item_options: 'item_options2',
      item_quantity: 'item_quantity2'
    ),
    ItemDetails.new(
      item_code: 'item_code0',
      item_name: 'item_name8',
      item_description: 'item_description4',
      item_options: 'item_options2',
      item_quantity: 'item_quantity2'
    ),
    ItemDetails.new(
      item_code: 'item_code0',
      item_name: 'item_name8',
      item_description: 'item_description4',
      item_options: 'item_options2',
      item_quantity: 'item_quantity2'
    )
  ],
  tax_inclusive: false,
  paypal_invoice_id: 'paypal_invoice_id4'
)
```

