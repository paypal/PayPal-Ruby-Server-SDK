
# Update Pricing Schemes Request

The update pricing scheme request details.

## Structure

`UpdatePricingSchemesRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pricing_schemes` | [`Array[UpdatePricingScheme]`](../../doc/models/update-pricing-scheme.md) | Required | An array of pricing schemes.<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `99` |

## Example

```ruby
update_pricing_schemes_request = UpdatePricingSchemesRequest.new(
  pricing_schemes: [
    UpdatePricingScheme.new(
      billing_cycle_sequence: 34,
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
  ]
)
```

