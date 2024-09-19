
# Getting Started with PayPal Server SDK

## Introduction

### ⚠️ Beta Release Notice

This version is considered a **beta release**. While we have done our best to ensure stability and functionality, there may still be bugs, incomplete features, or breaking changes in future updates.

#### Important Notes

- **Available Features:** This SDK currently contains only 3 of PayPal's API endpoints. Additional endpoints and functionality will be added in the future.
- **API Changes:** Expect potential changes in APIs and features as we finalize the product.

### Information

The PayPal Server SDK provides integration access to the PayPal REST APIs. The API endpoints are divided into distinct controllers:

- Orders Controller: <a href="https://developer.paypal.com/docs/api/orders/v2/">Orders API v2</a>
- Payments Controller: <a href="https://developer.paypal.com/docs/api/payments/v2/">Payments API v2</a>
- Vault Controller: <a href="https://developer.paypal.com/docs/api/payment-tokens/v3/">Payment Method Tokens API v3</a> *Available in the US only.*

Find out more here: [https://developer.paypal.com/docs/api/orders/v2/](https://developer.paypal.com/docs/api/orders/v2/)

## Install the Package

Install the gem from the command line:

```ruby
gem install paypal-server-sdk -v 0.6.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'paypal-server-sdk', '0.6.0'
```

For additional gem details, see the [RubyGems page for the paypal-server-sdk gem](https://rubygems.org/gems/paypal-server-sdk/versions/0.6.0).

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `environment` | `Environment` | The API environment. <br> **Default: `Environment.SANDBOX`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `logging_configuration` | [`LoggingConfiguration`](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/logging-configuration.md) | The SDK logging configuration for API calls |
| `client_credentials_auth_credentials` | [`ClientCredentialsAuthCredentials`](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/auth/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |

The API client can be initialized as follows:

```ruby
client = PaypalServerSdk::Client.new(
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

API calls return an `ApiResponse` object that includes the following fields:

| Field | Description |
|  --- | --- |
| `status_code` | Status code of the HTTP response |
| `reason_phrase` | Reason phrase of the HTTP response |
| `headers` | Headers of the HTTP response as a Hash |
| `raw_body` | The body of the HTTP response as a String |
| `request` | HTTP request info |
| `errors` | Errors, if they exist |
| `data` | The deserialized body of the HTTP response |

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| Production | PayPal Live Environment |
| Sandbox | **Default** PayPal Sandbox Environment |

## Authorization

This API uses the following authentication schemes.

* [`Oauth2 (OAuth 2 Client Credentials Grant)`](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/auth/oauth-2-client-credentials-grant.md)

## List of APIs

* [Orders](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/controllers/orders.md)
* [Payments](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/controllers/payments.md)
* [Vault](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/controllers/vault.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/http-request.md)
* [LoggingConfiguration](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/logging-configuration.md)
* [RequestLoggingConfiguration](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/request-logging-configuration.md)
* [ResponseLoggingConfiguration](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/response-logging-configuration.md)
* [Abstract Logger](https://www.github.com/paypal/PayPal-Ruby-Server-SDK/tree/0.6.0/doc/abstract-logger.md)

