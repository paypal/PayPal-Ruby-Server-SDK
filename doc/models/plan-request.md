
# Plan Request

The create plan request details.

## Structure

`PlanRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product_id` | `String` | Required | The ID of the product created through Catalog Products API.<br><br>**Constraints**: *Minimum Length*: `22`, *Maximum Length*: `22`, *Pattern*: `^PROD-[A-Z0-9]*$` |
| `name` | `String` | Required | The plan name.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `127`, *Pattern*: `^.*$` |
| `status` | [`PlanRequestStatus`](../../doc/models/plan-request-status.md) | Optional | The initial state of the plan. Allowed input values are CREATED and ACTIVE.<br><br>**Default**: `PlanRequestStatus::ACTIVE`<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `24`, *Pattern*: `^[A-Z_]+$` |
| `description` | `String` | Optional | The detailed description of the plan.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `127`, *Pattern*: `^.*$` |
| `billing_cycles` | [`Array[SubscriptionBillingCycle]`](../../doc/models/subscription-billing-cycle.md) | Required | An array of billing cycles for trial billing and regular billing. A plan can have at most two trial cycles and only one regular cycle.<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `12` |
| `payment_preferences` | [`PaymentPreferences`](../../doc/models/payment-preferences.md) | Required | The payment preferences for a subscription. |
| `merchant_preferences` | [`MerchantPreferences`](../../doc/models/merchant-preferences.md) | Optional | The merchant preferences for a subscription. |
| `taxes` | [`Taxes`](../../doc/models/taxes.md) | Optional | The tax details. |
| `quantity_supported` | `TrueClass \| FalseClass` | Optional | Indicates whether you can subscribe to this plan by providing a quantity for the goods or service.<br><br>**Default**: `false` |

## Example

```ruby
plan_request = PlanRequest.new(
  product_id: 'product_id8',
  name: 'name2',
  billing_cycles: [
    SubscriptionBillingCycle.new(
      frequency: Frequency.new(
        interval_unit: IntervalUnit::DAY,
        interval_count: 1
      ),
      tenure_type: TenureType::REGULAR,
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
      total_cycles: 1
    )
  ],
  payment_preferences: PaymentPreferences.new(
    auto_bill_outstanding: true,
    setup_fee: Money.new(
      currency_code: 'currency_code8',
      value: 'value4'
    ),
    setup_fee_failure_action: SetupFeeFailureAction::CANCEL,
    payment_failure_threshold: 0
  ),
  status: PlanRequestStatus::ACTIVE,
  description: 'description2',
  merchant_preferences: MerchantPreferences.new(
    return_url: 'return_url4',
    cancel_url: 'cancel_url6'
  ),
  taxes: Taxes.new(
    percentage: 'percentage8',
    inclusive: false
  ),
  quantity_supported: false
)
```

