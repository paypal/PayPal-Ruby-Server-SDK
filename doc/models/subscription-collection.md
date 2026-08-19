
# Subscription Collection

The list of subscriptions.

## Structure

`SubscriptionCollection`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscriptions` | [`Array[Subscription]`](../../doc/models/subscription.md) | Optional | An array of subscriptions.<br><br>**Constraints**: *Minimum Items*: `0`, *Maximum Items*: `32767` |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of request-related [HATEOAS links](/docs/api/reference/api-responses/#hateoas-links).<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10` |

## Example

```ruby
subscription_collection = SubscriptionCollection.new(
  subscriptions: [
    Subscription.new(
      plan_id: 'plan_id8',
      start_time: 'start_time0',
      quantity: 'quantity2',
      shipping_amount: Money.new(
        currency_code: 'currency_code0',
        value: 'value6'
      )
    )
  ]
)
```

