
# Bancontact Payment Request

Information needed to pay using Bancontact.

## Structure

`BancontactPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | The full name representation like Mr J Smith.<br><br>**Constraints**: *Minimum Length*: `3`, *Maximum Length*: `300` |
| `country_code` | `String` | Required | The [two-character ISO 3166-1 code](/api/rest/reference/country-codes/) that identifies the country or region. Note: The country code for Great Britain is GB and not UK as used in the top-level domain names for that country. Use the `C2` country code for China worldwide for comparable uncontrolled price (CUP) method, bank card, and cross-border transactions.<br><br>**Constraints**: *Minimum Length*: `2`, *Maximum Length*: `2`, *Pattern*: `^([A-Z]{2}\|C2)$` |
| `experience_context` | [`ExperienceContext`](../../doc/models/experience-context.md) | Optional | Customizes the payer experience during the approval process for the payment. |

## Example (as JSON)

```json
{
  "name": "name8",
  "country_code": "country_code8",
  "experience_context": {
    "brand_name": "brand_name2",
    "locale": "locale6",
    "shipping_preference": "NO_SHIPPING",
    "return_url": "return_url4",
    "cancel_url": "cancel_url6"
  }
}
```

