# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Class for exceptions when there is a network error, status code error, etc.
  class APIException < CoreLibrary::ApiException
    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} status_code: #{@response_code}, reason: #{@reason}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} status_code: #{@response_code.inspect}, reason: #{@reason.inspect}>"
    end
  end
end
