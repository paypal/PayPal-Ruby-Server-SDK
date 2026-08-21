
# Bank Request

A Resource representing a request to vault a Bank used for ACH Debit.

## Structure

`BankRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ach_debit` | `Object` | Optional | A Resource representing a request to vault a ACH Debit. |
| `sepa_debit` | [`SepaDebitRequest`](../../doc/models/sepa-debit-request.md) | Optional | An API resource denoting a request to securely store a SEPA Debit. |

## Example

```ruby
bank_request = BankRequest.new(
  ach_debit: JSON.parse('{"key1":"val1","key2":"val2"}'),
  sepa_debit: SepaDebitRequest.new(
    experience_context: SepaDebitExperienceContext.new(
      return_url: 'return_url4',
      cancel_url: 'cancel_url6',
      locale: 'locale6'
    )
  )
)
```

