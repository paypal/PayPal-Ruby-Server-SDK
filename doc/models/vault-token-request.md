
# Vault Token Request

The Tokenized Payment Source representing a Request to Vault a Token.

## Structure

`VaultTokenRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | The PayPal-generated ID for the token.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[0-9A-Za-z_-]+$` |
| `type` | [`VaultTokenRequestType`](../../doc/models/vault-token-request-type.md) | Required | The tokenization method that generated the ID.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `255`, *Pattern*: `^[0-9A-Z_-]+$` |

## Example

```ruby
vault_token_request = VaultTokenRequest.new(
  id: 'id2',
  type: VaultTokenRequestType::SETUP_TOKEN
)
```

