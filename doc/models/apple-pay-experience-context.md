
# Apple Pay Experience Context

Customizes the payer experience during the approval process for the payment.

## Structure

`ApplePayExperienceContext`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `return_url` | `String` | Required | Describes the URL. |
| `cancel_url` | `String` | Required | Describes the URL. |

## Example

```ruby
apple_pay_experience_context = ApplePayExperienceContext.new(
  return_url: 'return_url4',
  cancel_url: 'cancel_url6'
)
```

