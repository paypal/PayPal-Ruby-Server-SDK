
# Card Attributes

Additional attributes associated with the use of this card.

## Structure

`CardAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`CardCustomerInformation`](../../doc/models/card-customer-information.md) | Optional | The details about a customer in PayPal's system of record. |
| `vault` | [`VaultInstructionBase`](../../doc/models/vault-instruction-base.md) | Optional | Basic vault instruction specification that can be extended by specific payment sources that supports vaulting. |
| `verification` | [`CardVerification`](../../doc/models/card-verification.md) | Optional | The API caller can opt in to verify the card through PayPal offered verification services (e.g. Smart Dollar Auth, 3DS). |

## Example

```ruby
card_attributes = CardAttributes.new(
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
  ),
  vault: VaultInstructionBase.new(
    store_in_vault: StoreInVaultInstruction::ON_SUCCESS
  ),
  verification: CardVerification.new(
    method: OrdersCardVerificationMethod::ENUM_3D_SECURE
  )
)
```

