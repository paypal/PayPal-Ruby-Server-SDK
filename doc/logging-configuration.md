
# LoggingConfiguration

Represents the logging configuration for API calls.

## Parameters

| Name | Type | Tag | Description |
|  --- | --- | --- | --- |
| abstract_logger | [`AbstractLogger`](../doc/abstract-logger.md) | optional | Takes in your custom implementation of the abstract logger class here. **Default Implementation : `ConsoleLogger`** |
| log_level | `Integer` | optional | Defines the log message severity available in ruby logging module (e.g., DEBUG, INFO, WARN, ERROR, FATAL, UNKNOWN5). **Default : `Logger::INFO`** |
| mask_sensitive_headers | `Boolean` | optional | Toggles the global setting to mask sensitive HTTP headers in both requests and responses before logging, safeguarding confidential data. **Default : `true`** |
| request_logging_config | [`RequestLoggingConfiguration`](../doc/request-logging-configuration.md) | optional | The logging configuration for an API request. |
| response_logging_config | [`ResponseLoggingConfiguration`](../doc/response-logging-configuration.md) | optional | The logging configuration for an API response. |

