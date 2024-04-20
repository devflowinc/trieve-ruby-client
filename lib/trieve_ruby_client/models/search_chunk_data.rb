=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.7.2
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module TrieveRubyClient
  class SearchChunkData
    # Set date_bias to true to bias search results towards more recent chunks. This will work best in hybrid search mode.
    attr_accessor :date_bias

    attr_accessor :filters

    # Set get_collisions to true to get the collisions for each chunk. This will only apply if environment variable COLLISIONS_ENABLED is set to true.
    attr_accessor :get_collisions

    # Set highlight_delimiters to a list of strings to use as delimiters for highlighting. If not specified, this defaults to [\"?\", \",\", \".\", \"!\"].
    attr_accessor :highlight_delimiters

    # Set highlight_results to true to highlight the results. If not specified, this defaults to true.
    attr_accessor :highlight_results

    # Page of chunks to fetch. Page is 1-indexed.
    attr_accessor :page

    # Page size is the number of chunks to fetch. This can be used to fetch more than 10 chunks at a time.
    attr_accessor :page_size

    # Query is the search query. This can be any string. The query will be used to create an embedding vector and/or SPLADE vector which will be used to find the result set.
    attr_accessor :query

    # Set score_threshold to a float to filter out chunks with a score below the threshold.
    attr_accessor :score_threshold

    # Can be either \"semantic\", \"fulltext\", or \"hybrid\". \"hybrid\" will pull in one page (10 chunks) of both semantic and full-text results then re-rank them using BAAI/bge-reranker-large. \"semantic\" will pull in one page (10 chunks) of the nearest cosine distant vectors. \"fulltext\" will pull in one page (10 chunks) of full-text results based on SPLADE.
    attr_accessor :search_type

    # Set slim_chunks to true to avoid returning the content and chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement. Default is false.
    attr_accessor :slim_chunks

    # Set use_weights to true to use the weights of the chunks in the result set in order to sort them. If not specified, this defaults to true.
    attr_accessor :use_weights

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date_bias' => :'date_bias',
        :'filters' => :'filters',
        :'get_collisions' => :'get_collisions',
        :'highlight_delimiters' => :'highlight_delimiters',
        :'highlight_results' => :'highlight_results',
        :'page' => :'page',
        :'page_size' => :'page_size',
        :'query' => :'query',
        :'score_threshold' => :'score_threshold',
        :'search_type' => :'search_type',
        :'slim_chunks' => :'slim_chunks',
        :'use_weights' => :'use_weights'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'date_bias' => :'Boolean',
        :'filters' => :'ChunkFilter',
        :'get_collisions' => :'Boolean',
        :'highlight_delimiters' => :'Array<String>',
        :'highlight_results' => :'Boolean',
        :'page' => :'Integer',
        :'page_size' => :'Integer',
        :'query' => :'String',
        :'score_threshold' => :'Float',
        :'search_type' => :'String',
        :'slim_chunks' => :'Boolean',
        :'use_weights' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'date_bias',
        :'filters',
        :'get_collisions',
        :'highlight_delimiters',
        :'highlight_results',
        :'page',
        :'page_size',
        :'score_threshold',
        :'slim_chunks',
        :'use_weights'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TrieveRubyClient::SearchChunkData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TrieveRubyClient::SearchChunkData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date_bias')
        self.date_bias = attributes[:'date_bias']
      end

      if attributes.key?(:'filters')
        self.filters = attributes[:'filters']
      end

      if attributes.key?(:'get_collisions')
        self.get_collisions = attributes[:'get_collisions']
      end

      if attributes.key?(:'highlight_delimiters')
        if (value = attributes[:'highlight_delimiters']).is_a?(Array)
          self.highlight_delimiters = value
        end
      end

      if attributes.key?(:'highlight_results')
        self.highlight_results = attributes[:'highlight_results']
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'page_size')
        self.page_size = attributes[:'page_size']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      else
        self.query = nil
      end

      if attributes.key?(:'score_threshold')
        self.score_threshold = attributes[:'score_threshold']
      end

      if attributes.key?(:'search_type')
        self.search_type = attributes[:'search_type']
      else
        self.search_type = nil
      end

      if attributes.key?(:'slim_chunks')
        self.slim_chunks = attributes[:'slim_chunks']
      end

      if attributes.key?(:'use_weights')
        self.use_weights = attributes[:'use_weights']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@page.nil? && @page < 0
        invalid_properties.push('invalid value for "page", must be greater than or equal to 0.')
      end

      if !@page_size.nil? && @page_size < 0
        invalid_properties.push('invalid value for "page_size", must be greater than or equal to 0.')
      end

      if @query.nil?
        invalid_properties.push('invalid value for "query", query cannot be nil.')
      end

      if @search_type.nil?
        invalid_properties.push('invalid value for "search_type", search_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@page.nil? && @page < 0
      return false if !@page_size.nil? && @page_size < 0
      return false if @query.nil?
      return false if @search_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] page Value to be assigned
    def page=(page)
      if !page.nil? && page < 0
        fail ArgumentError, 'invalid value for "page", must be greater than or equal to 0.'
      end

      @page = page
    end

    # Custom attribute writer method with validation
    # @param [Object] page_size Value to be assigned
    def page_size=(page_size)
      if !page_size.nil? && page_size < 0
        fail ArgumentError, 'invalid value for "page_size", must be greater than or equal to 0.'
      end

      @page_size = page_size
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date_bias == o.date_bias &&
          filters == o.filters &&
          get_collisions == o.get_collisions &&
          highlight_delimiters == o.highlight_delimiters &&
          highlight_results == o.highlight_results &&
          page == o.page &&
          page_size == o.page_size &&
          query == o.query &&
          score_threshold == o.score_threshold &&
          search_type == o.search_type &&
          slim_chunks == o.slim_chunks &&
          use_weights == o.use_weights
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date_bias, filters, get_collisions, highlight_delimiters, highlight_results, page, page_size, query, score_threshold, search_type, slim_chunks, use_weights].hash
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
