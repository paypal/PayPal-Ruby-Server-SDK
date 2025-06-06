# paypal_server_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PaypalServerSdk
  # The JSON patch object to apply partial updates to resources.
  class Patch < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The operation.
    # @return [PatchOp]
    attr_accessor :op

    # The JSON Pointer to the target document location at which to complete the
    # operation.
    # @return [String]
    attr_accessor :path

    # The value to apply. The remove, copy, and move operations do not require a
    # value. Since JSON Patch allows any type for value, the type property is
    # not specified.
    # @return [Object]
    attr_accessor :value

    # The JSON Pointer to the target document location from which to move the
    # value. Required for the move operation.
    # @return [String]
    attr_accessor :from

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['op'] = 'op'
      @_hash['path'] = 'path'
      @_hash['value'] = 'value'
      @_hash['from'] = 'from'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        path
        value
        from
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(op:, path: SKIP, value: SKIP, from: SKIP)
      @op = op
      @path = path unless path == SKIP
      @value = value unless value == SKIP
      @from = from unless from == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      op = hash.key?('op') ? hash['op'] : nil
      path = hash.key?('path') ? hash['path'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP
      from = hash.key?('from') ? hash['from'] : SKIP

      # Create object from extracted values.
      Patch.new(op: op,
                path: path,
                value: value,
                from: from)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} op: #{@op}, path: #{@path}, value: #{@value}, from: #{@from}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} op: #{@op.inspect}, path: #{@path.inspect}, value: #{@value.inspect}, from:"\
      " #{@from.inspect}>"
    end
  end
end
