require 'json'
require 'minitest/autorun'
require 'pay_pal_restap_is'
require_relative '../flows/ui_flow_executor'
require 'dotenv'

class FlowTestBase < Minitest::Test
  include PayPalRestapIs
  include CoreLibrary
  Dotenv.load

  def setup_class
    _config = Configuration.new(
      environment: Environment::SANDBOX,
      client_credentials_auth_credentials: ClientCredentialsAuthCredentials.new(
        o_auth_client_id: ENV['CLIENT_ID'],
        o_auth_client_secret: ENV['CLIENT_SECRET']))
    @client = Client.new(config: _config)
    @ui_flow_executor = UIFlowExecutor.new
  end
end
