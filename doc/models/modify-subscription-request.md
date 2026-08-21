
# Modify Subscription Request

The request to update the quantity of the product or service in a subscription. You can also use this method to switch the plan and update the `shipping_amount` and `shipping_address` values for the subscription. This type of update requires the buyer's consent.

## Structure

`ModifySubscriptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Optional | The unique PayPal-generated ID for the plan.<br><br>**Constraints**: *Minimum Length*: `26`, *Maximum Length*: `26`, *Pattern*: `^P-[A-Z0-9]*$` |
| `quantity` | `String` | Optional | The quantity of the product or service in the subscription.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `32`, *Pattern*: `^([0-9]+\|([0-9]+)?[.][0-9]+)$` |
| `shipping_amount` | [`Money`](../../doc/models/money.md) | Optional | The currency and amount for a financial transaction, such as a balance or payment due. |
| `shipping_address` | [`ShippingDetails`](../../doc/models/shipping-details.md) | Optional | The shipping details. |
| `application_context` | [`SubscriptionPatchApplicationContext`](../../doc/models/subscription-patch-application-context.md) | Optional | The application context, which customizes the payer experience during the subscription approval process with PayPal. |
| `plan` | [`PlanOverride`](../../doc/models/plan-override.md) | Optional | An inline plan object to customise the subscription. You can override plan level default attributes by providing customised values for the subscription in this object. |

## Example

```ruby
modify_subscription_request = ModifySubscriptionRequest.new(
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
  application_context: SubscriptionPatchApplicationContext.new(
    return_url: 'return_url0',
    cancel_url: 'cancel_url2',
    brand_name: 'brand_name8',
    locale: 'locale2',
    shipping_preference: ExperienceContextShippingPreference::SET_PROVIDED_ADDRESS,
    payment_method: PaymentMethod.new(
      payee_preferred: PayeePaymentMethodPreference::UNRESTRICTED
    )
  )
)
```

