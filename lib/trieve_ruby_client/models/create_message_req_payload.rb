=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.10.7
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module TrieveRubyClient
  class CreateMessageReqPayload
    # Completion first decides whether the stream should contain the stream of the completion response or the chunks first. Default is false. Keep in mind that || is used to separate the chunks from the completion response. If || is in the completion then you may want to split on ||{ instead.
    attr_accessor :completion_first

    attr_accessor :filters

    # Frequency penalty is a number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim. Default is 0.7.
    attr_accessor :frequency_penalty

    # The delimiters to use for highlighting the citations. If this is not included, the default delimiters will be used. Default is `[\".\", \"!\", \"?\", \"\\n\", \"\\t\", \",\"]`.
    attr_accessor :highlight_delimiters

    # Set highlight_results to false for a slight latency improvement (1-10ms). If not specified, this defaults to true. This will add `<b><mark>` tags to the chunk_html of the chunks to highlight matching splits and return the highlights on each scored chunk in the response.
    attr_accessor :highlight_results

    # The maximum number of tokens to generate in the chat completion. Default is None.
    attr_accessor :max_tokens

    # The content of the user message to attach to the topic and then generate an assistant message in response to.
    attr_accessor :new_message_content

    # Presence penalty is a number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics. Default is 0.7.
    attr_accessor :presence_penalty

    # Search_type can be either \"semantic\", \"fulltext\", or \"hybrid\". \"hybrid\" will pull in one page (10 chunks) of both semantic and full-text results then re-rank them using BAAI/bge-reranker-large. \"semantic\" will pull in one page (10 chunks) of the nearest cosine distant vectors. \"fulltext\" will pull in one page (10 chunks) of full-text results based on SPLADE. Default is \"hybrid\".
    attr_accessor :search_type

    # Stop tokens are up to 4 sequences where the API will stop generating further tokens. Default is None.
    attr_accessor :stop_tokens

    # Whether or not to stream the response. If this is set to true or not included, the response will be a stream. If this is set to false, the response will be a normal JSON response. Default is true.
    attr_accessor :stream_response

    # What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. Default is 0.5.
    attr_accessor :temperature

    # The ID of the topic to attach the message to.
    attr_accessor :topic_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'completion_first' => :'completion_first',
        :'filters' => :'filters',
        :'frequency_penalty' => :'frequency_penalty',
        :'highlight_delimiters' => :'highlight_delimiters',
        :'highlight_results' => :'highlight_results',
        :'max_tokens' => :'max_tokens',
        :'new_message_content' => :'new_message_content',
        :'presence_penalty' => :'presence_penalty',
        :'search_type' => :'search_type',
        :'stop_tokens' => :'stop_tokens',
        :'stream_response' => :'stream_response',
        :'temperature' => :'temperature',
        :'topic_id' => :'topic_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'completion_first' => :'Boolean',
        :'filters' => :'ChunkFilter',
        :'frequency_penalty' => :'Float',
        :'highlight_delimiters' => :'Array<String>',
        :'highlight_results' => :'Boolean',
        :'max_tokens' => :'Integer',
        :'new_message_content' => :'String',
        :'presence_penalty' => :'Float',
        :'search_type' => :'String',
        :'stop_tokens' => :'Array<String>',
        :'stream_response' => :'Boolean',
        :'temperature' => :'Float',
        :'topic_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'completion_first',
        :'filters',
        :'frequency_penalty',
        :'highlight_delimiters',
        :'highlight_results',
        :'max_tokens',
        :'presence_penalty',
        :'search_type',
        :'stop_tokens',
        :'stream_response',
        :'temperature',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TrieveRubyClient::CreateMessageReqPayload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TrieveRubyClient::CreateMessageReqPayload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'completion_first')
        self.completion_first = attributes[:'completion_first']
      end

      if attributes.key?(:'filters')
        self.filters = attributes[:'filters']
      end

      if attributes.key?(:'frequency_penalty')
        self.frequency_penalty = attributes[:'frequency_penalty']
      end

      if attributes.key?(:'highlight_delimiters')
        if (value = attributes[:'highlight_delimiters']).is_a?(Array)
          self.highlight_delimiters = value
        end
      end

      if attributes.key?(:'highlight_results')
        self.highlight_results = attributes[:'highlight_results']
      end

      if attributes.key?(:'max_tokens')
        self.max_tokens = attributes[:'max_tokens']
      end

      if attributes.key?(:'new_message_content')
        self.new_message_content = attributes[:'new_message_content']
      else
        self.new_message_content = nil
      end

      if attributes.key?(:'presence_penalty')
        self.presence_penalty = attributes[:'presence_penalty']
      end

      if attributes.key?(:'search_type')
        self.search_type = attributes[:'search_type']
      end

      if attributes.key?(:'stop_tokens')
        if (value = attributes[:'stop_tokens']).is_a?(Array)
          self.stop_tokens = value
        end
      end

      if attributes.key?(:'stream_response')
        self.stream_response = attributes[:'stream_response']
      end

      if attributes.key?(:'temperature')
        self.temperature = attributes[:'temperature']
      end

      if attributes.key?(:'topic_id')
        self.topic_id = attributes[:'topic_id']
      else
        self.topic_id = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@max_tokens.nil? && @max_tokens < 0
        invalid_properties.push('invalid value for "max_tokens", must be greater than or equal to 0.')
      end

      if @new_message_content.nil?
        invalid_properties.push('invalid value for "new_message_content", new_message_content cannot be nil.')
      end

      if @topic_id.nil?
        invalid_properties.push('invalid value for "topic_id", topic_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@max_tokens.nil? && @max_tokens < 0
      return false if @new_message_content.nil?
      return false if @topic_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] max_tokens Value to be assigned
    def max_tokens=(max_tokens)
      if !max_tokens.nil? && max_tokens < 0
        fail ArgumentError, 'invalid value for "max_tokens", must be greater than or equal to 0.'
      end

      @max_tokens = max_tokens
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          completion_first == o.completion_first &&
          filters == o.filters &&
          frequency_penalty == o.frequency_penalty &&
          highlight_delimiters == o.highlight_delimiters &&
          highlight_results == o.highlight_results &&
          max_tokens == o.max_tokens &&
          new_message_content == o.new_message_content &&
          presence_penalty == o.presence_penalty &&
          search_type == o.search_type &&
          stop_tokens == o.stop_tokens &&
          stream_response == o.stream_response &&
          temperature == o.temperature &&
          topic_id == o.topic_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [completion_first, filters, frequency_penalty, highlight_delimiters, highlight_results, max_tokens, new_message_content, presence_penalty, search_type, stop_tokens, stream_response, temperature, topic_id].hash
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
