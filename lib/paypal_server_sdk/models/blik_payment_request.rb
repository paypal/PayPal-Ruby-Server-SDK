# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # Information needed to pay using BLIK.
  class BlikPaymentRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The full name representation like Mr J Smith.
    # @return [String]
    attr_accessor :name

    # The [two-character ISO 3166-1 code](/api/rest/reference/country-codes/)
    # that identifies the country or region. Note: The country code for Great
    # Britain is GB and not UK as used in the top-level domain names for that
    # country. Use the `C2` country code for China worldwide for comparable
    # uncontrolled price (CUP) method, bank card, and cross-border transactions.
    # @return [String]
    attr_accessor :country_code

    # The internationalized email address. Note: Up to 64 characters are allowed
    # before and 255 characters are allowed after the @ sign. However, the
    # generally accepted maximum length for an email address is 254 characters.
    # The pattern verifies that an unquoted @ sign exists.
    # @return [String]
    attr_accessor :email

    # Customizes the payer experience during the approval process for the BLIK
    # payment.
    # @return [BlikExperienceContext]
    attr_accessor :experience_context

    # Information used to pay using BLIK level_0 flow.
    # @return [BlikLevel0PaymentObject]
    attr_accessor :level_0

    # Information used to pay using BLIK one-click flow.
    # @return [BlikOneClickPaymentRequest]
    attr_accessor :one_click

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['country_code'] = 'country_code'
      @_hash['email'] = 'email'
      @_hash['experience_context'] = 'experience_context'
      @_hash['level_0'] = 'level_0'
      @_hash['one_click'] = 'one_click'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        email
        experience_context
        level_0
        one_click
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name:, country_code:, email: SKIP, experience_context: SKIP,
                   level_0: SKIP, one_click: SKIP)
      @name = name
      @country_code = country_code
      @email = email unless email == SKIP
      @experience_context = experience_context unless experience_context == SKIP
      @level_0 = level_0 unless level_0 == SKIP
      @one_click = one_click unless one_click == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      country_code = hash.key?('country_code') ? hash['country_code'] : nil
      email = hash.key?('email') ? hash['email'] : SKIP
      experience_context = BlikExperienceContext.from_hash(hash['experience_context']) if
        hash['experience_context']
      level_0 = BlikLevel0PaymentObject.from_hash(hash['level_0']) if hash['level_0']
      one_click = BlikOneClickPaymentRequest.from_hash(hash['one_click']) if hash['one_click']

      # Create object from extracted values.
      BlikPaymentRequest.new(name: name,
                             country_code: country_code,
                             email: email,
                             experience_context: experience_context,
                             level_0: level_0,
                             one_click: one_click)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, country_code: #{@country_code}, email: #{@email},"\
      " experience_context: #{@experience_context}, level_0: #{@level_0}, one_click:"\
      " #{@one_click}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, country_code: #{@country_code.inspect}, email:"\
      " #{@email.inspect}, experience_context: #{@experience_context.inspect}, level_0:"\
      " #{@level_0.inspect}, one_click: #{@one_click.inspect}>"
    end
  end
end
