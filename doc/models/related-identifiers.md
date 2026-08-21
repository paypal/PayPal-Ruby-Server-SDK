
# Related Identifiers

Identifiers related to a specific resource.

## Structure

`RelatedIdentifiers`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Optional | Order ID related to the resource.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `20`, *Pattern*: `^[A-Z0-9]+$` |
| `authorization_id` | `String` | Optional | Authorization ID related to the resource.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `20`, *Pattern*: `^[A-Z0-9]+$` |
| `capture_id` | `String` | Optional | Capture ID related to the resource.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `20`, *Pattern*: `^[A-Z0-9]+$` |

## Example

```ruby
related_identifiers = RelatedIdentifiers.new(
  order_id: 'order_id4',
  authorization_id: 'authorization_id8',
  capture_id: 'capture_id2'
)
```

