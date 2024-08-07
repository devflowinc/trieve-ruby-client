=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.11.0
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module TrieveRubyClient
  class Message
    attr_accessor :completion_tokens

    attr_accessor :content

    attr_accessor :created_at

    attr_accessor :dataset_id

    attr_accessor :deleted

    attr_accessor :id

    attr_accessor :prompt_tokens

    attr_accessor :role

    attr_accessor :sort_order

    attr_accessor :topic_id

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'completion_tokens' => :'completion_tokens',
        :'content' => :'content',
        :'created_at' => :'created_at',
        :'dataset_id' => :'dataset_id',
        :'deleted' => :'deleted',
        :'id' => :'id',
        :'prompt_tokens' => :'prompt_tokens',
        :'role' => :'role',
        :'sort_order' => :'sort_order',
        :'topic_id' => :'topic_id',
        :'updated_at' => :'updated_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'completion_tokens' => :'Integer',
        :'content' => :'String',
        :'created_at' => :'Time',
        :'dataset_id' => :'String',
        :'deleted' => :'Boolean',
        :'id' => :'String',
        :'prompt_tokens' => :'Integer',
        :'role' => :'String',
        :'sort_order' => :'Integer',
        :'topic_id' => :'String',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'completion_tokens',
        :'prompt_tokens',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TrieveRubyClient::Message` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TrieveRubyClient::Message`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'completion_tokens')
        self.completion_tokens = attributes[:'completion_tokens']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      else
        self.content = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'dataset_id')
        self.dataset_id = attributes[:'dataset_id']
      else
        self.dataset_id = nil
      end

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
      else
        self.deleted = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'prompt_tokens')
        self.prompt_tokens = attributes[:'prompt_tokens']
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      else
        self.role = nil
      end

      if attributes.key?(:'sort_order')
        self.sort_order = attributes[:'sort_order']
      else
        self.sort_order = nil
      end

      if attributes.key?(:'topic_id')
        self.topic_id = attributes[:'topic_id']
      else
        self.topic_id = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      else
        self.updated_at = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @content.nil?
        invalid_properties.push('invalid value for "content", content cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @dataset_id.nil?
        invalid_properties.push('invalid value for "dataset_id", dataset_id cannot be nil.')
      end

      if @deleted.nil?
        invalid_properties.push('invalid value for "deleted", deleted cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @role.nil?
        invalid_properties.push('invalid value for "role", role cannot be nil.')
      end

      if @sort_order.nil?
        invalid_properties.push('invalid value for "sort_order", sort_order cannot be nil.')
      end

      if @topic_id.nil?
        invalid_properties.push('invalid value for "topic_id", topic_id cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @content.nil?
      return false if @created_at.nil?
      return false if @dataset_id.nil?
      return false if @deleted.nil?
      return false if @id.nil?
      return false if @role.nil?
      return false if @sort_order.nil?
      return false if @topic_id.nil?
      return false if @updated_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          completion_tokens == o.completion_tokens &&
          content == o.content &&
          created_at == o.created_at &&
          dataset_id == o.dataset_id &&
          deleted == o.deleted &&
          id == o.id &&
          prompt_tokens == o.prompt_tokens &&
          role == o.role &&
          sort_order == o.sort_order &&
          topic_id == o.topic_id &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [completion_tokens, content, created_at, dataset_id, deleted, id, prompt_tokens, role, sort_order, topic_id, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = TrieveRubyClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
