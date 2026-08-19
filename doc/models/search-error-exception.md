
# Search Error Exception

The error details.

## Structure

`SearchErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | The human-readable, unique name of the error. |
| `message` | `String` | Required | The message that describes the error. |
| `debug_id` | `String` | Required | The PayPal internal ID. Used for correlation purposes. |
| `information_link` | `String` | Optional, Read-only | The information link, or URI, that shows detailed information about this error for the developer. |
| `details` | [`Array[TransactionSearchErrorDetails]`](../../doc/models/transaction-search-error-details.md) | Optional | An array of additional details about the error. |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of request-related [HATEOAS links](/docs/api/reference/api-responses/#hateoas-links). |
| `total_items` | `Integer` | Optional | The total number of transactions. Valid only for `RESULTSET_TOO_LARGE`.<br><br>**Constraints**: `>= 0`, `<= 2147483647` |
| `maximum_items` | `Integer` | Optional | The maximum number of transactions. Valid only for `RESULTSET_TOO_LARGE`.<br><br>**Constraints**: `>= 0`, `<= 2147483647` |

## Example

```ruby
begin
  # make the API call
rescue SearchErrorException => e
  puts "Caught SearchErrorException: #{e.message}"
end
```

