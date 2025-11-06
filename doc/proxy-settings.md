
# ProxySettings

Represents the proxy server configurations for API calls.

## Properties

| Name | Type | Tag | Description |
|  --- | --- | --- | --- |
| address | `String` | required | The proxy server URL. |
| port | `Integer` | optional | The port to connect to the proxy server. |
| username | `String` | optional | Username for proxy authentication. |
| password | `String` | optional | Password for proxy authentication. |

## Usage Example

```ruby
require 'paypal_server_sdk'
include PaypalServerSdk


client = PaypalServerSdk::Client.new(
  proxy_settings: ProxySettings.new(
    address: "http://localhost",
    port: 8888,
    username: 'user',
    password: 'pass'
  )
)
```

