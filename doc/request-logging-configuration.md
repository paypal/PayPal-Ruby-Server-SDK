
# RequestLoggingConfiguration

Represents the logging configuration for API request.

## Parameters

| Name | Type | Tag | Description |
|  --- | --- | --- | --- |
| log_body | `Boolean` | optional | Toggles the logging of the request body. **Default : `false`** |
| log_headers | `Boolean` | optional | Toggles the logging of the request headers. **Default : `false`** |
| headers_to_include | `Array` | optional | Includes only specified request headers in the log output. **Default : `[]`** |
| headers_to_exclude | `Array` | optional | Excludes specified request headers from the log output. **Default : `[]`** |
| headers_to_unmask | `Array` | optional | Logs specified request headers without masking, revealing their actual values. **Default : `[]`** |
| include_query_in_path | `Boolean` | optional | Toggles the inclusion of query parameters in the logged request path. **Default : `false`** |

