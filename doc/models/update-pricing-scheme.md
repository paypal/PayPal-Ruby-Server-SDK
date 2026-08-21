
# Update Pricing Scheme

The update pricing scheme request details.

## Structure

`UpdatePricingScheme`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `billing_cycle_sequence` | `Integer` | Required | The billing cycle sequence.<br><br>**Constraints**: `>= 1`, `<= 99` |
| `pricing_scheme` | [`SubscriptionPricingScheme`](../../doc/models/subscription-pricing-scheme.md) | Required | The pricing scheme details. |

## Example

```ruby
update_pricing_scheme = UpdatePricingScheme.new(
  billing_cycle_sequence: 99,
  pricing_scheme: SubscriptionPricingScheme.new(
    fixed_price: Money.new(
      currency_code: 'currency_code4',
      value: 'value0'
    ),
    pricing_model: SubscriptionPricingModel::VOLUME,
    tiers: [
      PricingTier.new(
        starting_quantity: 'starting_quantity8',
        amount: Money.new(
          currency_code: 'currency_code6',
          value: 'value0'
        ),
        ending_quantity: 'ending_quantity6'
      ),
      PricingTier.new(
        starting_quantity: 'starting_quantity8',
        amount: Money.new(
          currency_code: 'currency_code6',
          value: 'value0'
        ),
        ending_quantity: 'ending_quantity6'
      ),
      PricingTier.new(
        starting_quantity: 'starting_quantity8',
        amount: Money.new(
          currency_code: 'currency_code6',
          value: 'value0'
        ),
        ending_quantity: 'ending_quantity6'
      )
    ],
    create_time: 'create_time4'
  )
)
```

