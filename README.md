
# Getting Started with PayPal Server SDK

## Introduction

### Important Notes

- **Available Features:** This SDK currently contains only 5 of PayPal's API endpoints. Additional endpoints and functionality will be added in the future.

### Information

The PayPal Server SDK provides integration access to the PayPal REST APIs. The API endpoints are divided into distinct controllers:

- Orders Controller: [Orders API v2](https://developer.paypal.com/docs/api/orders/v2/)
- Payments Controller: [Payments API v2](https://developer.paypal.com/docs/api/payments/v2)
- Vault Controller: [Payment Method Tokens API v3](https://developer.paypal.com/docs/api/payment-tokens/v3/) *Available in the US only.*
- Transaction Search Controller: [Transaction Search API v1](https://developer.paypal.com/docs/api/transaction-search/v1/)
- Subscriptions Controller: [Subscriptions API v1](https://developer.paypal.com/docs/api/subscriptions/v1/)

## Install the Package

Install the gem from the command line:

```bash
gem install paypal-server-sdk -v 2.1.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'paypal-server-sdk', '2.1.0'
```

For additional gem details, see the [RubyGems page for the paypal-server-sdk gem](https://rubygems.org/gems/paypal-server-sdk/versions/2.1.0).

## IRB Console Usage

You can explore the SDK interactively using IRB in two ways

### 1. Use IRB with Installed Gem

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and type the following command to start the irb console.

```bash
irb
```

Now you can load the SDK in the IRB

```ruby
require 'paypal_server_sdk'
include PaypalServerSdk
```

### 2. Use IRB within SDK

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and navigate to the root folder of SDK.

```
cd path/to/paypal_server_sdk
```

Now you can start the preconfigured irb console by running the following command

```bash
ruby bin/console
```

**_Note:_** This automatically loads the SDK from lib/

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| environment | `Environment` | The API environment. <br> **Default: `Environment.SANDBOX`** |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| logging_configuration | [`LoggingConfiguration`](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/logging-configuration.md) | The SDK logging configuration for API calls |
| client_credentials_auth_credentials | [`ClientCredentialsAuthCredentials`](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/auth/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |

The API client can be initialized as follows:

### Code-Based Client Initialization

```ruby
require 'paypal_server_sdk'
include PaypalServerSdk

client = Client.new(
  client_credentials_auth_credentials: ClientCredentialsAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret'
  ),
  environment: Environment::SANDBOX,
  logging_configuration: LoggingConfiguration.new(
    log_level: Logger::INFO,
    request_logging_config: RequestLoggingConfiguration.new(
      log_body: true
    ),
    response_logging_config: ResponseLoggingConfiguration.new(
      log_headers: true
    )
  )
)
```

### Environment-Based Client Initialization

```ruby
require 'paypal_server_sdk'
include PaypalServerSdk

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/environment-based-client-initialization.md) section for details.

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| Production | PayPal Live Environment |
| Sandbox | **Default** PayPal Sandbox Environment |

## Authorization

This API uses the following authentication schemes.

* [`Oauth2 (OAuth 2 Client Credentials Grant)`](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/auth/oauth-2-client-credentials-grant.md)

## List of APIs

* [Orders](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/controllers/orders.md)
* [Payments](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/controllers/payments.md)
* [Vault](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/controllers/vault.md)
* [Transaction Search](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/controllers/transaction-search.md)
* [Subscriptions](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/controllers/subscriptions.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/proxy-settings.md)
* [Environment-Based Client Initialization](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/environment-based-client-initialization.md)
* [AbstractLogger](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/abstract-logger.md)
* [LoggingConfiguration](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/logging-configuration.md)
* [RequestLoggingConfiguration](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/request-logging-configuration.md)
* [ResponseLoggingConfiguration](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/response-logging-configuration.md)

### HTTP

* [HttpResponse](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/http-request.md)

### Utilities

* [ApiResponse](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/api-response.md)
* [ApiHelper](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/2.1.0/doc/date-time-helper.md)

