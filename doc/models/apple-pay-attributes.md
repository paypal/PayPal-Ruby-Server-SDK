
# Apple Pay Attributes

Additional attributes associated with apple pay.

## Structure

`ApplePayAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`CustomerInformation`](../../doc/models/customer-information.md) | Optional | This object represents a merchant’s customer, allowing them to store contact details, and track all payments associated with the same customer. |
| `vault` | [`VaultInstruction`](../../doc/models/vault-instruction.md) | Optional | Base vaulting specification. The object can be extended for specific use cases within each payment_source that supports vaulting. |

## Example

```ruby
apple_pay_attributes = ApplePayAttributes.new(
  customer: CustomerInformation.new(
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
    )
  ),
  vault: VaultInstruction.new(
    store_in_vault: StoreInVaultInstruction::ON_SUCCESS
  )
)
```

