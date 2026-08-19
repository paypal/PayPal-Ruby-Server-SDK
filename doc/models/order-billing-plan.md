
# Order Billing Plan

Metadata for merchant-managed recurring billing plans. Valid only during the saved payment method token or billing agreement creation.

## Structure

`OrderBillingPlan`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `billing_cycles` | [`Array[BillingCycle]`](../../doc/models/billing-cycle.md) | Required | An array of billing cycles for trial billing and regular billing. A plan can have at most two trial cycles and only one regular cycle.<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `3` |
| `setup_fee` | [`Money`](../../doc/models/money.md) | Optional | The currency and amount for a financial transaction, such as a balance or payment due. |
| `name` | `String` | Optional | Name of the recurring plan.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `127`, *Pattern*: `^[A-Za-z0-9() +',.:-]+$` |

## Example

```ruby
order_billing_plan = OrderBillingPlan.new(
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
  setup_fee: Money.new(
    currency_code: 'currency_code8',
    value: 'value4'
  ),
  name: 'name4'
)
```

