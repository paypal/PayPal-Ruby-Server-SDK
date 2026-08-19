
# Modify Subscription Response

The response to a request to update the quantity of the product or service in a subscription. You can also use this method to switch the plan and update the `shipping_amount` and `shipping_address` values for the subscription. This type of update requires the buyer's consent.

## Structure

`ModifySubscriptionResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Optional | The unique PayPal-generated ID for the plan.<br><br>**Constraints**: *Minimum Length*: `26`, *Maximum Length*: `26`, *Pattern*: `^P-[A-Z0-9]*$` |
| `quantity` | `String` | Optional | The quantity of the product or service in the subscription.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `32`, *Pattern*: `^([0-9]+\|([0-9]+)?[.][0-9]+)$` |
| `shipping_amount` | [`Money`](../../doc/models/money.md) | Optional | The currency and amount for a financial transaction, such as a balance or payment due. |
| `shipping_address` | [`ShippingDetails`](../../doc/models/shipping-details.md) | Optional | The shipping details. |
| `plan` | [`PlanOverride`](../../doc/models/plan-override.md) | Optional | An inline plan object to customise the subscription. You can override plan level default attributes by providing customised values for the subscription in this object. |
| `plan_overridden` | `TrueClass \| FalseClass` | Optional, Read-only | Indicates whether the subscription has overridden any plan attributes. |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of request-related [HATEOAS links](/docs/api/reference/api-responses/#hateoas-links). |

## Example

```ruby
modify_subscription_response = ModifySubscriptionResponse.new(
  plan_id: 'plan_id8',
  quantity: 'quantity2',
  shipping_amount: Money.new(
    currency_code: 'currency_code0',
    value: 'value6'
  ),
  shipping_address: ShippingDetails.new(
    name: ShippingName.new(
      full_name: 'full_name6'
    ),
    email_address: 'email_address8',
    phone_number: PhoneNumberWithCountryCode.new(
      country_code: 'country_code2',
      national_number: 'national_number6'
    ),
    type: FulfillmentType::PICKUP_IN_STORE,
    options: [
      ShippingOption.new(
        id: 'id2',
        label: 'label2',
        selected: false,
        type: ShippingType::SHIPPING,
        amount: Money.new(
          currency_code: 'currency_code6',
          value: 'value0'
        )
      )
    ]
  ),
  plan: PlanOverride.new(
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
      ),
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
)
```

