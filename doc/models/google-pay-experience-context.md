
# Google Pay Experience Context

Customizes the payer experience during the approval process for the payment.

## Structure

`GooglePayExperienceContext`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `return_url` | `String` | Required | Describes the URL. |
| `cancel_url` | `String` | Required | Describes the URL. |

## Example

```ruby
google_pay_experience_context = GooglePayExperienceContext.new(
  return_url: 'return_url0',
  cancel_url: 'cancel_url2'
)
```

