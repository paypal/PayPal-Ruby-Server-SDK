
# Error Details

The error details. Required for client-side `4XX` errors.

## Structure

`ErrorDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `field` | `String` | Optional | The field that caused the error. If this field is in the body, set this value to the field's JSON pointer value. Required for client-side errors. |
| `value` | `String` | Optional | The value of the field that caused the error. |
| `location` | `String` | Optional | The location of the field that caused the error. Value is `body`, `path`, or `query`.<br><br>**Default**: `'body'` |
| `issue` | `String` | Required | The unique, fine-grained application-level error code. |
| `links` | [`Array[LinkDescription]`](../../doc/models/link-description.md) | Optional, Read-only | An array of request-related [HATEOAS links](https://developer.paypal.com/api/rest/responses/#hateoas-links) that are either relevant to the issue by providing additional information or offering potential resolutions.<br><br>**Constraints**: *Minimum Items*: `1`, *Maximum Items*: `4` |
| `description` | `String` | Optional | The human-readable description for an issue. The description can change over the lifetime of an API, so clients must not depend on this value. |

## Example

```ruby
error_details = ErrorDetails.new(
  issue: 'issue0',
  field: 'field8',
  value: 'value6',
  location: 'body',
  description: 'description4'
)
```

