
# ApiResponse

Represents the complete HTTP response received from the API.

## Properties

| Name | Type | Description |
|  --- | --- | --- |
| status_code | `Integer` | The HTTP status code of the response. |
| reason_phrase | `String` | The reason phrase returned with the status code. |
| headers | `Hash<String, String>` | The HTTP response headers. |
| raw_body | `String` | The raw response body as a string. |
| request | [`HttpRequest`](../doc/http-request.md) | The original HTTP request sent. |
| data | `Object` | The parsed response data, if applicable. |

## Usage Example

```ruby
begin
  # Perform API request
  response = client.example_controller.example_endpoint(input)

  # Inspect response attributes
  puts "Status Code: #{response.status_code}"
  puts "Headers: #{response.headers}"
  puts "Parsed Data: #{response.data}"
rescue APIException => e
  puts "Caught APIException: #{e.message}"
end
```

