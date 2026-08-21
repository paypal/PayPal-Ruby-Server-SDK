
# Plan

The merchant level Recurring Billing plan metadata for the Billing Agreement.

## Structure

`Plan`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `billing_cycles` | [`Array[BillingCycle]`](../../doc/models/billing-cycle.md) | Required | An array of billing cycles for trial billing and regular billing. A plan can have at most two trial cycles and only one regular cycle.<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `3` |
| `one_time_charges` | [`OneTimeCharge`](../../doc/models/one-time-charge.md) | Required | The one-time charge info at the time of checkout. |
| `name` | `String` | Optional | Name of the recurring plan.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `127`, *Pattern*: `^[A-Za-z0-9() +',.:-]+$` |

## Example

```ruby
plan = Plan.new(
  billing_cycles: [
    BillingCycle.new(
      tenure_type: TenureType::REGULAR,
      pricing_scheme: PricingScheme.new(
        pricing_model: PricingModel::AUTO_RELOAD,
        price: Money.new(
          currency_code: 'currency_code8',
          value: 'value4'
        ),
        reload_threshold_amount: Money.new(
          currency_code: 'currency_code0',
          value: 'value6'
        )
      ),
      total_cycles: 1,
      sequence: 1,
      start_date: 'start_date6',
      frequency: CycleFrequency.new(
        interval_unit: FrequencyIntervalUnit::LIFETIME,
        interval_count: 94
      )
    )
  ],
  one_time_charges: OneTimeCharge.new(
    total_amount: Money.new(
      currency_code: 'currency_code2',
      value: 'value8'
    ),
    setup_fee: Money.new(
      currency_code: 'currency_code8',
      value: 'value4'
    ),
    shipping_amount: Money.new(
      currency_code: 'currency_code0',
      value: 'value6'
    ),
    taxes: Money.new(
      currency_code: 'currency_code6',
      value: 'value2'
    ),
    product_price: Money.new(
      currency_code: 'currency_code6',
      value: 'value2'
    ),
    subtotal: Money.new(
      currency_code: 'currency_code2',
      value: 'value8'
    )
  ),
  name: 'name4'
)
```

