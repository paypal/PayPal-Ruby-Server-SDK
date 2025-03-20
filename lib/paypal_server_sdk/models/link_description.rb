# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The request-related [HATEOAS link](/api/rest/responses/#hateoas-links)
  # information.
  class LinkDescription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The complete target URL. To make the related call, combine the method with
    # this [URI Template-formatted](https://tools.ietf.org/html/rfc6570) link.
    # For pre-processing, include the `$`, `(`, and `)` characters. The `href`
    # is the key HATEOAS component that links a completed call with a subsequent
    # call.
    # @return [String]
    attr_accessor :href

    # The [link relation type](https://tools.ietf.org/html/rfc5988#section-4),
    # which serves as an ID for a link that unambiguously describes the
    # semantics of the link. See [Link
    # Relations](https://www.iana.org/assignments/link-relations/link-relations.
    # xhtml).
    # @return [String]
    attr_accessor :rel

    # The HTTP method required to make the related call.
    # @return [LinkHttpMethod]
    attr_accessor :method

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['href'] = 'href'
      @_hash['rel'] = 'rel'
      @_hash['method'] = 'method'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        method
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(href:, rel:, method: SKIP)
      @href = href
      @rel = rel
      @method = method unless method == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      href = hash.key?('href') ? hash['href'] : nil
      rel = hash.key?('rel') ? hash['rel'] : nil
      method = hash.key?('method') ? hash['method'] : SKIP

      # Create object from extracted values.
      LinkDescription.new(href: href,
                          rel: rel,
                          method: method)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} href: #{@href}, rel: #{@rel}, method: #{@method}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} href: #{@href.inspect}, rel: #{@rel.inspect}, method: #{@method.inspect}>"
    end
  end
end
