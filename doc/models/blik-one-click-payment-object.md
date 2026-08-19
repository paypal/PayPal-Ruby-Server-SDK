
# Blik One Click Payment Object

Information used to pay using BLIK one-click flow.

## Structure

`BlikOneClickPaymentObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `consumer_reference` | `String` | Optional | The merchant generated, unique reference serving as a primary identifier for accounts connected between Blik and a merchant.<br><br>**Constraints**: *Minimum Length*: `3`, *Maximum Length*: `64`, *Pattern*: `^[ -~]{3,64}$` |

## Example

```ruby
blik_one_click_payment_object = BlikOneClickPaymentObject.new(
  consumer_reference: 'consumer_reference2'
)
```

