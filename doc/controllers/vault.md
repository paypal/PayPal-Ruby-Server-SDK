# Vault

Use the `/vault` resource to create, retrieve, and delete payment and setup tokens.

```ruby
vault_controller = client.vault
```

## Class Name

`VaultController`

## Methods

* [Delete Payment Token](../../doc/controllers/vault.md#delete-payment-token)
* [Create Setup Token](../../doc/controllers/vault.md#create-setup-token)
* [Get Setup Token](../../doc/controllers/vault.md#get-setup-token)
* [Create Payment Token](../../doc/controllers/vault.md#create-payment-token)
* [List Customer Payment Tokens](../../doc/controllers/vault.md#list-customer-payment-tokens)
* [Get Payment Token](../../doc/controllers/vault.md#get-payment-token)


# Delete Payment Token

Delete the payment token associated with the payment token id.

```ruby
def delete_payment_token(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | ID of the payment token.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `36`, *Pattern*: `^[0-9a-zA-Z_-]+$` |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance.

## Example Usage

```ruby
id = 'id0'

result = vault_controller.delete_payment_token(id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Request is not well-formed, syntactically incorrect, or violates schema. | [`ErrorException`](../../doc/models/error-exception.md) |
| 403 | Authorization failed due to insufficient permissions. | [`ErrorException`](../../doc/models/error-exception.md) |
| 500 | An internal server error has occurred. | [`ErrorException`](../../doc/models/error-exception.md) |


# Create Setup Token

Creates a Setup Token from the given payment source and adds it to the Vault of the associated customer.

```ruby
def create_setup_token(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`SetupTokenRequest`](../../doc/models/setup-token-request.md) | Body, Required | Setup Token creation with a instrument type optional financial instrument details and customer_id. |
| `paypal_request_id` | `String` | Header, Optional | The server stores keys for 3 hours.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `10000`, *Pattern*: `^.*$` |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property in this instance returns the response data which is of type [`SetupTokenResponse`](../../doc/models/setup-token-response.md).

## Example Usage

```ruby
collect = {
  'body' => SetupTokenRequest.new(
    payment_source: SetupTokenRequestPaymentSource.new
  )
}

result = vault_controller.create_setup_token(collect)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Request is not well-formed, syntactically incorrect, or violates schema. | [`ErrorException`](../../doc/models/error-exception.md) |
| 403 | Authorization failed due to insufficient permissions. | [`ErrorException`](../../doc/models/error-exception.md) |
| 422 | The requested action could not be performed, semantically incorrect, or failed business validation. | [`ErrorException`](../../doc/models/error-exception.md) |
| 500 | An internal server error has occurred. | [`ErrorException`](../../doc/models/error-exception.md) |


# Get Setup Token

Returns a readable representation of temporarily vaulted payment source associated with the setup token id.

```ruby
def get_setup_token(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | ID of the setup token.<br><br>**Constraints**: *Minimum Length*: `7`, *Maximum Length*: `36`, *Pattern*: `^[0-9a-zA-Z_-]+$` |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property in this instance returns the response data which is of type [`SetupTokenResponse`](../../doc/models/setup-token-response.md).

## Example Usage

```ruby
id = 'id0'

result = vault_controller.get_setup_token(id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 403 | Authorization failed due to insufficient permissions. | [`ErrorException`](../../doc/models/error-exception.md) |
| 404 | The specified resource does not exist. | [`ErrorException`](../../doc/models/error-exception.md) |
| 422 | The requested action could not be performed, semantically incorrect, or failed business validation. | [`ErrorException`](../../doc/models/error-exception.md) |
| 500 | An internal server error has occurred. | [`ErrorException`](../../doc/models/error-exception.md) |


# Create Payment Token

Creates a Payment Token from the given payment source and adds it to the Vault of the associated customer.

```ruby
def create_payment_token(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`PaymentTokenRequest`](../../doc/models/payment-token-request.md) | Body, Required | Payment Token creation with a financial instrument and an optional customer_id. |
| `paypal_request_id` | `String` | Header, Optional | The server stores keys for 3 hours.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `10000`, *Pattern*: `^.*$` |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property in this instance returns the response data which is of type [`PaymentTokenResponse`](../../doc/models/payment-token-response.md).

## Example Usage

```ruby
collect = {
  'body' => PaymentTokenRequest.new(
    payment_source: PaymentTokenRequestPaymentSource.new
  )
}

result = vault_controller.create_payment_token(collect)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Request is not well-formed, syntactically incorrect, or violates schema. | [`ErrorException`](../../doc/models/error-exception.md) |
| 403 | Authorization failed due to insufficient permissions. | [`ErrorException`](../../doc/models/error-exception.md) |
| 404 | Request contains reference to resources that do not exist. | [`ErrorException`](../../doc/models/error-exception.md) |
| 422 | The requested action could not be performed, semantically incorrect, or failed business validation. | [`ErrorException`](../../doc/models/error-exception.md) |
| 500 | An internal server error has occurred. | [`ErrorException`](../../doc/models/error-exception.md) |


# List Customer Payment Tokens

Returns all payment tokens for a customer.

```ruby
def list_customer_payment_tokens(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Query, Required | A unique identifier representing a specific customer in merchant's/partner's system or records.<br><br>**Constraints**: *Minimum Length*: `7`, *Maximum Length*: `36`, *Pattern*: `^[0-9a-zA-Z_-]+$` |
| `page_size` | `Integer` | Query, Optional | A non-negative, non-zero integer indicating the maximum number of results to return at one time.<br><br>**Default**: `5`<br><br>**Constraints**: `>= 1`, `<= 5` |
| `page` | `Integer` | Query, Optional | A non-negative, non-zero integer representing the page of the results.<br><br>**Default**: `1`<br><br>**Constraints**: `>= 1`, `<= 10` |
| `total_required` | `TrueClass \| FalseClass` | Query, Optional | A boolean indicating total number of items (total_items) and pages (total_pages) are expected to be returned in the response.<br><br>**Default**: `false` |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property in this instance returns the response data which is of type [`CustomerVaultPaymentTokensResponse`](../../doc/models/customer-vault-payment-tokens-response.md).

## Example Usage

```ruby
collect = {
  'customer_id' => 'customer_id8',
  'page_size' => 5,
  'page' => 1,
  'total_required' => false
}

result = vault_controller.list_customer_payment_tokens(collect)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Request is not well-formed, syntactically incorrect, or violates schema. | [`ErrorException`](../../doc/models/error-exception.md) |
| 403 | Authorization failed due to insufficient permissions. | [`ErrorException`](../../doc/models/error-exception.md) |
| 500 | An internal server error has occurred. | [`ErrorException`](../../doc/models/error-exception.md) |


# Get Payment Token

Returns a readable representation of vaulted payment source associated with the payment token id.

```ruby
def get_payment_token(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | ID of the payment token.<br><br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `36`, *Pattern*: `^[0-9a-zA-Z_-]+$` |

## Response Type

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property in this instance returns the response data which is of type [`PaymentTokenResponse`](../../doc/models/payment-token-response.md).

## Example Usage

```ruby
id = 'id0'

result = vault_controller.get_payment_token(id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 403 | Authorization failed due to insufficient permissions. | [`ErrorException`](../../doc/models/error-exception.md) |
| 404 | The specified resource does not exist. | [`ErrorException`](../../doc/models/error-exception.md) |
| 422 | The requested action could not be performed, semantically incorrect, or failed business validation. | [`ErrorException`](../../doc/models/error-exception.md) |
| 500 | An internal server error has occurred. | [`ErrorException`](../../doc/models/error-exception.md) |

