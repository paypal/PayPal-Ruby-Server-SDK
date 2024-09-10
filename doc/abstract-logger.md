
# Abstract Logger

An abstract class for custom logger implementation.

## Logger Methods

| Name | Description | Return Type | Parameters | Method Signature |
|  --- | --- | --- | --- | --- |
| log | Logs a message with a specified log level and additional parameters. | nil | 1. level (Integer): The log level of the message.<br>2. message (String): The message template to log.<br>3. params: (Hash): The parameters to include in the log message. | log(level, message, params) |

## Usage Example

### Client Initialization with Custom Logger

In order to provide custom logger implementation, the `AbstractLogger` class must be inherited so that you can override the `log` behavior.

```ruby
require 'ougai'
require 'logger'

include PaypalServerSdk


class CustomLogger < AbstractLogger
  def initialize
    @logger = Ougai::Logger.new($stdout)
  end
  def log(level, message, params)
    case level
    when Logger::INFO
      @logger.info(message, params)
    end
  end
end
```

Following is how the custom logger implementation can be injected in the SDK client.

```ruby
client = PaypalServerSdk::Client.new(
  logging_configuration: LoggingConfiguration.new(
    logger: CustomLogger.new
  )
)
```

