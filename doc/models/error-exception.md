
# Error Exception

The error details.

## Structure

`ErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | The human-readable, unique name of the error. |
| `message` | `String` | Required | The message that describes the error. |
| `debug_id` | `String` | Required | The PayPal internal ID. Used for correlation purposes. |
| `details` | [`Array[ErrorDetails]`](../../doc/models/error-details.md) | Optional | An array of additional details about the error. |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of request-related [HATEOAS links](https://developer.paypal.com/api/rest/responses/#hateoas-links). |

## Example

```ruby
begin
  # make the API call
rescue ErrorException => e
  puts "Caught ErrorException: #{e.message}"
end
```

