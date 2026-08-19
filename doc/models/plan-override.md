
# Plan Override

An inline plan object to customise the subscription. You can override plan level default attributes by providing customised values for the subscription in this object.

## Structure

`PlanOverride`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `billing_cycles` | [`Array[BillingCycleOverride]`](../../doc/models/billing-cycle-override.md) | Optional | An array of billing cycles for trial billing and regular billing. The subscription billing cycle definition has to adhere to the plan billing cycle definition.<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `12` |
| `payment_preferences` | [`PaymentPreferencesOverride`](../../doc/models/payment-preferences-override.md) | Optional | The payment preferences to override at subscription level. |
| `taxes` | [`TaxesOverride`](../../doc/models/taxes-override.md) | Optional | The tax details. |

## Example

```ruby
plan_override = PlanOverride.new(
  billing_cycles: [
    BillingCycleOverride.new(
      sequence: 8,
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
      ),
      total_cycles: 198
    )
  ],
  payment_preferences: PaymentPreferencesOverride.new(
    auto_bill_outstanding: false,
    setup_fee: Money.new(
      currency_code: 'currency_code8',
      value: 'value4'
    ),
    setup_fee_failure_action: SetupFeeFailureAction::CONTINUE,
    payment_failure_threshold: 104
  ),
  taxes: TaxesOverride.new(
    percentage: 'percentage8',
    inclusive: false
  )
)
```

