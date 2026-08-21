
# Subscription Error Exception

The error details.

## Structure

`SubscriptionErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | The human-readable, unique name of the error. |
| `message` | `String` | Required | The message that describes the error. |
| `debug_id` | `String` | Required | The PayPal internal ID. Used for correlation purposes. |
| `information_link` | `String` | Optional, Read-only | The information link, or URI, that shows detailed information about this error for the developer. |
| `details` | [`Array[ErrorDetails]`](../../doc/models/error-details.md) | Optional | An array of additional details about the error. |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of request-related [HATEOAS links](https://developer.paypal.com/api/rest/responses/#hateoas-links). |

## Example

```ruby
begin
  # make the API call
rescue SubscriptionErrorException => e
  puts "Caught SubscriptionErrorException: #{e.message}"
end
```

