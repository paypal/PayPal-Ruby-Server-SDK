
# Transactions List

The list transactions for a subscription request details.

## Structure

`TransactionsList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transactions` | [`Array[SubscriptionTransactionDetails]`](../../doc/models/subscription-transaction-details.md) | Optional | An array of transactions.<br><br>**Constraints**: *Minimum Items*: `0`, *Maximum Items*: `32767` |
| `total_items` | `Integer` | Optional | The total number of items.<br><br>**Constraints**: `>= 0`, `<= 500000000` |
| `total_pages` | `Integer` | Optional | The total number of pages.<br><br>**Constraints**: `>= 0`, `<= 100000000` |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of request-related [HATEOAS links](/docs/api/reference/api-responses/#hateoas-links).<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `10` |

## Example

```ruby
transactions_list = TransactionsList.new(
  transactions: [
    SubscriptionTransactionDetails.new(
      id: nil,
      amount_with_breakdown: SubscriptionAmountWithBreakdown.new(
        gross_amount: Money.new(
          currency_code: 'currency_code4',
          value: 'value0'
        ),
        total_item_amount: Money.new(
          currency_code: 'currency_code8',
          value: 'value4'
        ),
        fee_amount: Money.new(
          currency_code: 'currency_code2',
          value: 'value4'
        ),
        shipping_amount: Money.new(
          currency_code: 'currency_code0',
          value: 'value6'
        ),
        tax_amount: Money.new(
          currency_code: 'currency_code2',
          value: 'value8'
        ),
        net_amount: Money.new(
          currency_code: 'currency_code6',
          value: 'value2'
        )
      ),
      time: 'time8',
      payer_name: SubscriptionPayerName.new(
        prefix: 'prefix8',
        given_name: 'given_name2',
        surname: 'surname8',
        middle_name: 'middle_name0',
        suffix: 'suffix0'
      ),
      payer_email: 'payer_email6'
    ),
    SubscriptionTransactionDetails.new(
      id: nil,
      amount_with_breakdown: SubscriptionAmountWithBreakdown.new(
        gross_amount: Money.new(
          currency_code: 'currency_code4',
          value: 'value0'
        ),
        total_item_amount: Money.new(
          currency_code: 'currency_code8',
          value: 'value4'
        ),
        fee_amount: Money.new(
          currency_code: 'currency_code2',
          value: 'value4'
        ),
        shipping_amount: Money.new(
          currency_code: 'currency_code0',
          value: 'value6'
        ),
        tax_amount: Money.new(
          currency_code: 'currency_code2',
          value: 'value8'
        ),
        net_amount: Money.new(
          currency_code: 'currency_code6',
          value: 'value2'
        )
      ),
      time: 'time8',
      payer_name: SubscriptionPayerName.new(
        prefix: 'prefix8',
        given_name: 'given_name2',
        surname: 'surname8',
        middle_name: 'middle_name0',
        suffix: 'suffix0'
      ),
      payer_email: 'payer_email6'
    )
  ],
  total_items: 8,
  total_pages: 44
)
```

