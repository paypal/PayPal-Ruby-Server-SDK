Gem::Specification.new do |s|
  s.name = 'paypal-server-sdk'
  s.version = '0.6.0'
  s.summary = 'PayPal\'s SDK for interacting with the REST APIs'
  s.description = ''
  s.authors = ['PayPal']
  s.email = []
  s.homepage = 'https://github.com/paypal/PayPal-Ruby-Server-SDK'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.1')
  s.add_dependency('apimatic_core', '~> 0.3.9')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.4')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
