
# Venmo Wallet Additional Attributes

Additional attributes associated with the use of this Venmo Wallet.

## Structure

`VenmoWalletAdditionalAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`VenmoWalletCustomerInformation`](../../doc/models/venmo-wallet-customer-information.md) | Optional | The details about a customer in PayPal's system of record. |
| `vault` | [`VenmoWalletVaultAttributes`](../../doc/models/venmo-wallet-vault-attributes.md) | Optional | Resource consolidating common request and response attirbutes for vaulting Venmo Wallet. |

## Example

```ruby
venmo_wallet_additional_attributes = VenmoWalletAdditionalAttributes.new(
  customer: VenmoWalletCustomerInformation.new(
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
  vault: VenmoWalletVaultAttributes.new(
    store_in_vault: StoreInVaultInstruction::ON_SUCCESS,
    usage_type: VenmoPaymentTokenUsageType::MERCHANT,
    description: 'description6',
    usage_pattern: VenmoPaymentTokenUsagePattern::THRESHOLD_PREPAID,
    customer_type: VenmoPaymentTokenCustomerType::CONSUMER,
    permit_multiple_payment_tokens: false
  )
)
```

