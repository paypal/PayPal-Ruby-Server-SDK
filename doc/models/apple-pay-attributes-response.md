
# Apple Pay Attributes Response

Additional attributes associated with the use of Apple Pay.

## Structure

`ApplePayAttributesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `vault` | [`VaultResponse`](../../doc/models/vault-response.md) | Optional | The details about a saved payment source. |

## Example

```ruby
apple_pay_attributes_response = ApplePayAttributesResponse.new(
  vault: VaultResponse.new(
    id: 'id6',
    status: VaultStatus::APPROVED,
    customer: VaultCustomer.new(
      id: 'id0',
      name: Name.new(
        given_name: 'given_name2',
        surname: 'surname8'
      )
    )
  )
)
```

