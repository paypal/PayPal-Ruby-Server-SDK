
# Refund Status with Details

The refund status with details.

## Structure

`RefundStatusWithDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | [`RefundStatus`](../../doc/models/refund-status.md) | Optional, Read-only | The status of the refund. |
| `status_details` | [`RefundStatusDetails`](../../doc/models/refund-status-details.md) | Optional | The details of the refund status. |

## Example

```ruby
refund_status_with_details = RefundStatusWithDetails.new(
  status_details: RefundStatusDetails.new(
    reason: RefundIncompleteReason::ECHECK
  )
)
```

