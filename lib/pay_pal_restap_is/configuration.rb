# pay_pal_restap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PayPalRestapIs
  # An enum for SDK environments.
  class Environment
    # PRODUCTION: PayPal Live Environment
    # SANDBOX: PayPal Sandbox Environment
    ENVIRONMENT = [
      PRODUCTION = 'Production'.freeze,
      SANDBOX = 'Sandbox'.freeze
    ].freeze
  end

  # An enum for API servers.
  class Server
    SERVER = [
      DEFAULT = 'default'.freeze
    ].freeze
  end

  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration < CoreLibrary::HttpClientConfiguration
    def o_auth_client_id
      @client_credentials_auth_credentials.o_auth_client_id
    end

    def o_auth_client_secret
      @client_credentials_auth_credentials.o_auth_client_secret
    end

    def o_auth_token
      @client_credentials_auth_credentials.o_auth_token
    end

    # The attribute readers for properties.
    attr_reader :environment, :client_credentials_auth_credentials

    class << self
      attr_reader :environments
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 60,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil,
      logging_configuration: nil, environment: Environment::SANDBOX,
      o_auth_client_id: nil, o_auth_client_secret: nil, o_auth_token: nil,
      client_credentials_auth_credentials: nil
    )

      super connection: connection, adapter: adapter, timeout: timeout,
            max_retries: max_retries, retry_interval: retry_interval,
            backoff_factor: backoff_factor, retry_statuses: retry_statuses,
            retry_methods: retry_methods, http_callback: http_callback,
            logging_configuration: logging_configuration

      # Current API environment
      @environment = String(environment)

      # OAuth 2 Client ID
      @o_auth_client_id = o_auth_client_id

      # OAuth 2 Client Secret
      @o_auth_client_secret = o_auth_client_secret

      # Object for storing information about the OAuth token
      @o_auth_token = if o_auth_token.is_a? OAuthToken
                        OAuthToken.from_hash o_auth_token.to_hash
                      else
                        o_auth_token
                      end

      # Initializing OAuth 2 Client Credentials Grant credentials with the provided auth parameters
      @client_credentials_auth_credentials = create_auth_credentials_object(
        o_auth_client_id, o_auth_client_secret, o_auth_token,
        client_credentials_auth_credentials
      )

      # The Http Client to use for making requests.
      set_http_client CoreLibrary::FaradayClient.new(self)
    end

    def clone_with(connection: nil, adapter: nil, timeout: nil,
                   max_retries: nil, retry_interval: nil, backoff_factor: nil,
                   retry_statuses: nil, retry_methods: nil, http_callback: nil,
                   logging_configuration: nil, environment: nil,
                   o_auth_client_id: nil, o_auth_client_secret: nil,
                   o_auth_token: nil, client_credentials_auth_credentials: nil)
      connection ||= self.connection
      adapter ||= self.adapter
      timeout ||= self.timeout
      max_retries ||= self.max_retries
      retry_interval ||= self.retry_interval
      backoff_factor ||= self.backoff_factor
      retry_statuses ||= self.retry_statuses
      retry_methods ||= self.retry_methods
      http_callback ||= self.http_callback
      logging_configuration ||= self.logging_configuration
      environment ||= self.environment
      client_credentials_auth_credentials = create_auth_credentials_object(
        o_auth_client_id, o_auth_client_secret, o_auth_token,
        client_credentials_auth_credentials || self.client_credentials_auth_credentials
      )

      Configuration.new(
        connection: connection, adapter: adapter, timeout: timeout,
        max_retries: max_retries, retry_interval: retry_interval,
        backoff_factor: backoff_factor, retry_statuses: retry_statuses,
        retry_methods: retry_methods, http_callback: http_callback,
        logging_configuration: logging_configuration, environment: environment,
        client_credentials_auth_credentials: client_credentials_auth_credentials
      )
    end

    def create_auth_credentials_object(o_auth_client_id, o_auth_client_secret,
                                       o_auth_token,
                                       client_credentials_auth_credentials)
      return client_credentials_auth_credentials if o_auth_client_id.nil? &&
                                                    o_auth_client_secret.nil? &&
                                                    o_auth_token.nil?

      warn('The \'o_auth_client_id\', \'o_auth_client_secret\', \'o_auth_token'\
           '\' params are deprecated. Use \'client_credentials_auth_credential'\
           's\' param instead.')

      unless client_credentials_auth_credentials.nil?
        return client_credentials_auth_credentials.clone_with(
          o_auth_client_id: o_auth_client_id,
          o_auth_client_secret: o_auth_client_secret,
          o_auth_token: o_auth_token
        )
      end

      ClientCredentialsAuthCredentials.new(
        o_auth_client_id: o_auth_client_id,
        o_auth_client_secret: o_auth_client_secret, o_auth_token: o_auth_token
      )
    end

    # All the environments the SDK can run in.
    ENVIRONMENTS = {
      Environment::PRODUCTION => {
        Server::DEFAULT => 'https://api-m.paypal.com'
      },
      Environment::SANDBOX => {
        Server::DEFAULT => 'https://api-m.sandbox.paypal.com'
      }
    }.freeze

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] server The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def get_base_uri(server = Server::DEFAULT)
      ENVIRONMENTS[environment][server].clone
    end
  end
end
