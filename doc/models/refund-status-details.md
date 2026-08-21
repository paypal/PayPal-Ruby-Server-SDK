
# Refund Status Details

The details of the refund status.

## Structure

`RefundStatusDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reason` | [`RefundIncompleteReason`](../../doc/models/refund-incomplete-reason.md) | Optional | The reason why the refund has the `PENDING` or `FAILED` status. |

## Example

```ruby
refund_status_details = RefundStatusDetails.new(
  reason: RefundIncompleteReason::ECHECK
)
```

