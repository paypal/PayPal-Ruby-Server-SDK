# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # OAuth 2 Authorization endpoint response
  class OAuthToken < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Access token
    # @return [String]
    attr_accessor :access_token

    # Type of access token
    # @return [String]
    attr_accessor :token_type

    # Time in seconds before the access token expires
    # @return [Integer]
    attr_accessor :expires_in

    # List of scopes granted
    # This is a space-delimited list of strings.
    # @return [String]
    attr_accessor :scope

    # Time of token expiry as unix timestamp (UTC)
    # @return [Integer]
    attr_accessor :expiry

    # Refresh token
    # Used to get a new access token when it expires.
    # @return [String]
    attr_accessor :refresh_token

    # An ID token response type is of JSON Web Token (JWT) that contains claims
    # about the identity of the authenticated user.
    # @return [String]
    attr_accessor :id_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access_token'] = 'access_token'
      @_hash['token_type'] = 'token_type'
      @_hash['expires_in'] = 'expires_in'
      @_hash['scope'] = 'scope'
      @_hash['expiry'] = 'expiry'
      @_hash['refresh_token'] = 'refresh_token'
      @_hash['id_token'] = 'id_token'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        expires_in
        scope
        expiry
        refresh_token
        id_token
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(access_token:, token_type:, expires_in: SKIP, scope: SKIP,
                   expiry: SKIP, refresh_token: SKIP, id_token: SKIP)
      @access_token = access_token
      @token_type = token_type
      @expires_in = expires_in unless expires_in == SKIP
      @scope = scope unless scope == SKIP
      @expiry = expiry unless expiry == SKIP
      @refresh_token = refresh_token unless refresh_token == SKIP
      @id_token = id_token unless id_token == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access_token = hash.key?('access_token') ? hash['access_token'] : nil
      token_type = hash.key?('token_type') ? hash['token_type'] : nil
      expires_in = hash.key?('expires_in') ? hash['expires_in'] : SKIP
      scope = hash.key?('scope') ? hash['scope'] : SKIP
      expiry = hash.key?('expiry') ? hash['expiry'] : SKIP
      refresh_token = hash.key?('refresh_token') ? hash['refresh_token'] : SKIP
      id_token = hash.key?('id_token') ? hash['id_token'] : SKIP

      # Create object from extracted values.
      OAuthToken.new(access_token: access_token,
                     token_type: token_type,
                     expires_in: expires_in,
                     scope: scope,
                     expiry: expiry,
                     refresh_token: refresh_token,
                     id_token: id_token)
    end
  end
end
