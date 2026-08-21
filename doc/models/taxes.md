
# Taxes

The tax details.

## Structure

`Taxes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `percentage` | `String` | Required | The percentage, as a fixed-point, signed decimal number. For example, define a 19.99% interest rate as `19.99`.<br><br>**Constraints**: *Pattern*: `^((-?[0-9]+)\|(-?([0-9]+)?[.][0-9]+))$` |
| `inclusive` | `TrueClass \| FalseClass` | Optional | Indicates whether the tax was already included in the billing amount.<br><br>**Default**: `true` |

## Example

```ruby
taxes = Taxes.new(
  percentage: 'percentage8',
  inclusive: true
)
```

