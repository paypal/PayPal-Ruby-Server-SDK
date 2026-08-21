
# Card Attributes Response

Additional attributes associated with the use of this card.

## Structure

`CardAttributesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `vault` | [`CardVaultResponse`](../../doc/models/card-vault-response.md) | Optional | The details about a saved Card payment source. |

## Example

```ruby
card_attributes_response = CardAttributesResponse.new(
  vault: CardVaultResponse.new(
    id: 'id6',
    status: VaultStatus::APPROVED,
    customer: CardCustomerInformation.new(
      id: 'id0',
      email_address: 'email_address2',
      phone: PhoneWithType.new(
        phone_number: PhoneNumber.new(
          national_number: 'national_number6'
        ),
        phone_type: PhoneType::OTHER
      ),
      name: Name.new(
        given_name: 'given_name2',
        surname: 'surname8'
      ),
      merchant_customer_id: 'merchant_customer_id2'
    )
  )
)
```

