
# Venmo Wallet Attributes Response

Additional attributes associated with the use of a Venmo Wallet.

## Structure

`VenmoWalletAttributesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `vault` | [`VenmoVaultResponse`](../../doc/models/venmo-vault-response.md) | Optional | The details about a saved venmo payment source. |

## Example

```ruby
venmo_wallet_attributes_response = VenmoWalletAttributesResponse.new(
  vault: VenmoVaultResponse.new(
    id: 'id6',
    status: VenmoVaultResponseStatus::APPROVED,
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
    )
  )
)
```

