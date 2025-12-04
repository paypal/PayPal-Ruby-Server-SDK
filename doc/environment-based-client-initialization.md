
# Environment-Based Client Initialization

The SDK client can also be initialized directly from environment variables using the `from_env` class method. This allows the SDK to automatically read configuration values from the runtime environment or a `.env` file.

```ruby
require 'paypal_server_sdk'
include PaypalServerSdk

# Create client from environment
client = Client.from_env
```

You can also load values from a `.env` file before creating the client.
To do this, install and use the dotenv
gem:

```
gem install dotenv
```

Now require 'dotenv/load' automatically loads all variables from a `.env` file into `ENV`,
so the `from_env` method can access them.

```ruby
require 'dotenv/load'
require 'paypal_server_sdk'
include PaypalServerSdk

# Create client from environment
client = Client.from_env
```

The same method can accept keyword arguments to override any values read from the environment.

```ruby
# To override or fill in values that are not set in the environment, pass them
# as keyword arguments when calling `from_env`
client = Client.from_env(environment: 'sandbox', timeout: 30)
```

Values provided through arguments take precedence over those defined in environment variables.

## Example .env File

```ruby
ENVIRONMENT='sandbox'

O_AUTH_CLIENT_ID='oAuthClientId'
O_AUTH_CLIENT_SECRET='oAuthClientSecret'
O_AUTH_CLOCK_SKEW=5

LOG_LEVEL=Debug
MASK_SENSITIVE_HEADERS=true
REQUEST_LOG_BODY=true
REQUEST_LOG_HEADERS=true
REQUEST_INCLUDE_QUERY_IN_PATH=true
REQUEST_HEADERS_TO_INCLUDE=Content-Type,X-Request-ID
REQUEST_HEADERS_TO_EXCLUDE=Authorization
REQUEST_HEADERS_TO_UNMASK=X-Request-ID
RESPONSE_LOG_BODY=true
RESPONSE_LOG_HEADERS=true
RESPONSE_HEADERS_TO_INCLUDE=Content-Type,X-Correlation-ID,Date,Server
RESPONSE_HEADERS_TO_EXCLUDE=Set-Cookie,Authorization,X-API-Key
RESPONSE_HEADERS_TO_UNMASK=X-Correlation-ID

TIMEOUT=60
MAX_RETRIES=3
BACKOFF_FACTOR=2
RETRY_INTERVAL=1
RETRY_STATUSES=408,413
RETRY_METHODS=GET,PUT,DELETE
PROXY_ADDRESS='http://localhost:3000'
PROXY_PORT=8080
PROXY_USERNAME='username'
PROXY_PASSWORD='password'
```

## Note

- If an environment variable is not defined, the default SDK configuration value will be used.

