
# Activate Subscription Request

The activate subscription request details.

## Structure

`ActivateSubscriptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reason` | `String` | Optional | The reason for activation of a subscription. Required to reactivate the subscription.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `128`, *Pattern*: `^.*$` |

## Example

```ruby
activate_subscription_request = ActivateSubscriptionRequest.new(
  reason: 'reason4'
)
```

