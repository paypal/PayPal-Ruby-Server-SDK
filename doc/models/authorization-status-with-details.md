
# Authorization Status with Details

The status fields and status details for an authorized payment.

## Structure

`AuthorizationStatusWithDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | [`AuthorizationStatus`](../../doc/models/authorization-status.md) | Optional, Read-only | The status for the authorized payment. |
| `status_details` | [`AuthorizationStatusDetails`](../../doc/models/authorization-status-details.md) | Optional | The details of the authorized payment status. |

## Example

```ruby
authorization_status_with_details = AuthorizationStatusWithDetails.new(
  status_details: AuthorizationStatusDetails.new(
    reason: AuthorizationIncompleteReason::PENDING_REVIEW
  )
)
```

