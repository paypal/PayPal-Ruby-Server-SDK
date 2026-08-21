
# Shipping Information

The shipping information.

## Structure

`ShippingInformation`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | The recipient's name.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `500`, *Pattern*: `^[a-zA-Z0-9_'\-., ":;\!?]*$` |
| `method` | `String` | Optional | The shipping method that is associated with this order.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `500`, *Pattern*: `^[a-zA-Z0-9_'\-., ":;\!?]*$` |
| `address` | [`SimplePostalAddressCoarseGrained`](../../doc/models/simple-postal-address-coarse-grained.md) | Optional | A simple postal address with coarse-grained fields. Do not use for an international address. Use for backward compatibility only. Does not contain phone. |
| `secondary_shipping_address` | [`SimplePostalAddressCoarseGrained`](../../doc/models/simple-postal-address-coarse-grained.md) | Optional | A simple postal address with coarse-grained fields. Do not use for an international address. Use for backward compatibility only. Does not contain phone. |

## Example

```ruby
shipping_information = ShippingInformation.new(
  name: 'name4',
  method: 'method8',
  address: SimplePostalAddressCoarseGrained.new(
    line1: 'line18',
    city: 'city6',
    country_code: 'country_code6',
    line2: 'line20',
    state: 'state2',
    postal_code: 'postal_code8'
  ),
  secondary_shipping_address: SimplePostalAddressCoarseGrained.new(
    line1: 'line16',
    city: 'city4',
    country_code: 'country_code4',
    line2: 'line28',
    state: 'state0',
    postal_code: 'postal_code6'
  )
)
```

