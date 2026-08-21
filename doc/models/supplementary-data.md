
# Supplementary Data

Supplementary data about a payment. This object passes information that can be used to improve risk assessments and processing costs, for example, by providing Level 2 and Level 3 payment data.

## Structure

`SupplementaryData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card` | [`CardSupplementaryData`](../../doc/models/card-supplementary-data.md) | Optional | Merchants and partners can add Level 2 and 3 data to payments to reduce risk and payment processing costs. For more information about processing payments, see checkout or multiparty checkout. |
| `risk` | [`RiskSupplementaryData`](../../doc/models/risk-supplementary-data.md) | Optional | Additional information necessary to evaluate the risk profile of a transaction. |

## Example

```ruby
supplementary_data = SupplementaryData.new(
  card: CardSupplementaryData.new(
    level_2: Level2CardProcessingData.new(
      invoice_id: 'invoice_id4',
      tax_total: Money.new(
        currency_code: 'currency_code4',
        value: 'value0'
      )
    ),
    level_3: Level3CardProcessingData.new(
      shipping_amount: Money.new(
        currency_code: 'currency_code0',
        value: 'value6'
      ),
      duty_amount: Money.new(
        currency_code: 'currency_code6',
        value: 'value2'
      ),
      discount_amount: Money.new(
        currency_code: 'currency_code2',
        value: 'value8'
      ),
      shipping_address: Address.new(
        country_code: 'country_code0',
        address_line_1: 'address_line_10',
        address_line_2: 'address_line_20',
        admin_area_2: 'admin_area_24',
        admin_area_1: 'admin_area_16',
        postal_code: 'postal_code2'
      ),
      ships_from_postal_code: 'ships_from_postal_code4'
    )
  ),
  risk: RiskSupplementaryData.new(
    customer: ParticipantMetadata.new(
      ip_address: 'ip_address0'
    )
  )
)
```

