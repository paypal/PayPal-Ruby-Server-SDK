
# Shipping Name

The name of the party.

## Structure

`ShippingName`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `full_name` | `String` | Optional | When the party is a person, the party's full name.<br><br>**Constraints**: *Maximum Length*: `300` |

## Example

```ruby
shipping_name = ShippingName.new(
  full_name: 'full_name6'
)
```

