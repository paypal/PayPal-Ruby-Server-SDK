
# Ideal Payment Request

Information needed to pay using iDEAL.

## Structure

`IdealPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | The full name representation like Mr J Smith.<br><br>**Constraints**: *Minimum Length*: `3`, *Maximum Length*: `300` |
| `country_code` | `String` | Required | The [two-character ISO 3166-1 code](https://developer.paypal.com/api/rest/reference/country-codes/) that identifies the country or region. Note: The country code for Great Britain is GB and not UK as used in the top-level domain names for that country. Use the `C2` country code for China worldwide for comparable uncontrolled price (CUP) method, bank card, and cross-border transactions.<br><br>**Constraints**: *Minimum Length*: `2`, *Maximum Length*: `2`, *Pattern*: `^([A-Z]{2}\|C2)$` |
| `bic` | `String` | Optional | The business identification code (BIC). In payments systems, a BIC is used to identify a specific business, most commonly a bank.<br><br>**Constraints**: *Minimum Length*: `8`, *Maximum Length*: `11`, *Pattern*: `^[A-Z-a-z0-9]{4}[A-Z-a-z]{2}[A-Z-a-z0-9]{2}([A-Z-a-z0-9]{3})?$` |
| `experience_context` | [`ExperienceContext`](../../doc/models/experience-context.md) | Optional | Customizes the payer experience during the approval process for the payment. |

## Example

```ruby
ideal_payment_request = IdealPaymentRequest.new(
  name: 'name0',
  country_code: 'country_code0',
  bic: 'bic2',
  experience_context: ExperienceContext.new(
    brand_name: 'brand_name2',
    locale: 'locale6',
    shipping_preference: ExperienceContextShippingPreference::NO_SHIPPING,
    return_url: 'return_url4',
    cancel_url: 'cancel_url6'
  )
)
```

