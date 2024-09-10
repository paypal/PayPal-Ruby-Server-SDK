
# OAuth 2 Client Credentials Grant



Documentation for accessing and setting credentials for Oauth2.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| OAuthClientId | `String` | OAuth 2 Client ID | `o_auth_client_id` |
| OAuthClientSecret | `String` | OAuth 2 Client Secret | `o_auth_client_secret` |
| OAuthToken | `OAuthToken` | Object for storing information about the OAuth token | `o_auth_token` |
| OAuthTokenProvider | `proc { \| OAuthToken, OAuth2 \| }` | Registers a callback for oAuth Token Provider used for automatic token fetching/refreshing. | `o_auth_token_provider` |
| OAuthOnTokenUpdate | `proc { \| OAuthToken \| }` | Registers a callback for token update event. | `o_auth_on_token_update` |
| OAuthClockSkew | `Integer` | Clock skew time in seconds applied while checking the OAuth Token expiry. | `o_auth_clock_skew` |



**Note:** Auth credentials can be set using named parameter for any of the above credentials (e.g. `o_auth_client_id`) in the client initialization.

## Usage Example

### Client Initialization

You must initialize the client with *OAuth 2.0 Client Credentials Grant* credentials as shown in the following code snippet. This will fetch the OAuth token automatically when any of the endpoints, requiring *OAuth 2.0 Client Credentials Grant* autentication, are called.

```ruby
client = PaypalServerSdk::Client.new(
  client_credentials_auth_credentials: ClientCredentialsAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret'
  )
)
```



Your application can also manually provide an OAuthToken using the setter `in` object. This function takes in an instance of OAuthToken containing information for authorizing client requests and refreshing the token itself.

### Adding OAuth Token Update Callback

Whenever the OAuth Token gets updated, the provided callback implementation will be executed. For instance, you may use it to store your access token whenever it gets updated.

```ruby
client = PaypalServerSdk::Client.new(
  client_credentials_auth_credentials: ClientCredentialsAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret',
    o_auth_on_token_update: Proc.new { | o_auth_token | 
                              # Add the callback handler to perform operations like save to DB or file etc.
                              # It will be triggered whenever the token gets updated
                              save_token_to_database(o_auth_token)
                            }
  )
)
```

### Adding Custom OAuth Token Provider



```ruby
def o_auth_token_provider(last_oauth_token, auth_manager)
  # Add the callback handler to provide a new OAuth token
  # It will be triggered whenever the last provided o_auth_token is null or expired
  o_auth_token = load_token_from_database()
  o_auth_token = auth_manager.fetch_token() if o_auth_token is nil?
  return o_auth_token
end

_o_auth_token_provider = proc do | last_oauth_token, auth_manager |
  o_auth_token_provider(last_oauth_token, auth_manager)
end


client = PaypalServerSdk::Client.new(
  client_credentials_auth_credentials: ClientCredentialsAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret',
    o_auth_token_provider: _o_auth_token_provider
  )
)
```


