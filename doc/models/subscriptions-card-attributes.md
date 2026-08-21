
# Subscriptions Card Attributes

Additional attributes associated with the use of this card.

## Structure

`SubscriptionsCardAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`CardCustomer`](../../doc/models/card-customer.md) | Optional | The details about a customer in PayPal's system of record. |
| `vault` | [`VaultInstructionBase`](../../doc/models/vault-instruction-base.md) | Optional | Basic vault instruction specification that can be extended by specific payment sources that supports vaulting. |
| `verification` | [`CardVerification`](../../doc/models/card-verification.md) | Optional | The API caller can opt in to verify the card through PayPal offered verification services (e.g. Smart Dollar Auth, 3DS). |

## Example

```ruby
subscriptions_card_attributes = SubscriptionsCardAttributes.new(
  customer: CardCustomer.new(
    id: 'id0',
    email_address: 'email_address2',
    phone: PhoneWithType.new(
      phone_number: PhoneNumber.new(
        national_number: 'national_number6'
      ),
      phone_type: PhoneType::OTHER
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

