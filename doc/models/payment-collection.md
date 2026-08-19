
# Payment Collection

The collection of payments, or transactions, for a purchase unit in an order. For example, authorized payments, captured payments, and refunds.

## Structure

`PaymentCollection`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `authorizations` | [`Array[AuthorizationWithAdditionalData]`](../../doc/models/authorization-with-additional-data.md) | Optional | An array of authorized payments for a purchase unit. A purchase unit can have zero or more authorized payments. |
| `captures` | [`Array[OrdersCapture]`](../../doc/models/orders-capture.md) | Optional | An array of captured payments for a purchase unit. A purchase unit can have zero or more captured payments. |
| `refunds` | [`Array[Refund]`](../../doc/models/refund.md) | Optional | An array of refunds for a purchase unit. A purchase unit can have zero or more refunds. |

## Example

```ruby
payment_collection = PaymentCollection.new(
  authorizations: [
    AuthorizationWithAdditionalData.new(
      status_details: AuthorizationStatusDetails.new(
        reason: AuthorizationIncompleteReason::PENDING_REVIEW
      ),
      amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value0'
      )
    ),
    AuthorizationWithAdditionalData.new(
      status_details: AuthorizationStatusDetails.new(
        reason: AuthorizationIncompleteReason::PENDING_REVIEW
      ),
      amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value0'
      )
    ),
    AuthorizationWithAdditionalData.new(
      status_details: AuthorizationStatusDetails.new(
        reason: AuthorizationIncompleteReason::PENDING_REVIEW
      ),
      amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value0'
      )
    )
  ],
  captures: [
    OrdersCapture.new(
      status_details: CaptureStatusDetails.new(
        reason: CaptureIncompleteReason::VERIFICATION_REQUIRED
      ),
      amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value0'
      )
    ),
    OrdersCapture.new(
      status_details: CaptureStatusDetails.new(
        reason: CaptureIncompleteReason::VERIFICATION_REQUIRED
      ),
      amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value0'
      )
    )
  ],
  refunds: [
    Refund.new(
      status_details: RefundStatusDetails.new(
        reason: RefundIncompleteReason::ECHECK
      ),
      amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value0'
      )
    ),
    Refund.new(
      status_details: RefundStatusDetails.new(
        reason: RefundIncompleteReason::ECHECK
      ),
      amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value0'
      )
    )
  ]
)
```

