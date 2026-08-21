
# Card Experience Context

Customizes the payer experience during the 3DS Approval for payment.

## Structure

`CardExperienceContext`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `return_url` | `String` | Optional | Describes the URL. |
| `cancel_url` | `String` | Optional | Describes the URL. |

## Example

```ruby
card_experience_context = CardExperienceContext.new(
  return_url: 'return_url2',
  cancel_url: 'cancel_url4'
)
```

