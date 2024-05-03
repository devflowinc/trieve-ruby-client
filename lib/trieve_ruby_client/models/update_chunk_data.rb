=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.7.6
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module TrieveRubyClient
  class UpdateChunkData
    # HTML content of the chunk you want to update. This can also be plaintext. The innerText of the HTML will be used to create the embedding vector. The point of using HTML is for convienience, as some users have applications where users submit HTML content. If no chunk_html is provided, the existing chunk_html will be used.
    attr_accessor :chunk_html

    # Id of the chunk you want to update. You can provide either the chunk_id or the tracking_id. If both are provided, the chunk_id will be used.
    attr_accessor :chunk_id

    # Convert HTML to raw text before processing to avoid adding noise to the vector embeddings. By default this is true. If you are using HTML content that you want to be included in the vector embeddings, set this to false.
    attr_accessor :convert_html_to_text

    # Group ids are the ids of the groups that the chunk should be placed into. This is useful for when you want to update a chunk and add it to a group or multiple groups in one request.
    attr_accessor :group_ids

    # Group tracking_ids are the tracking_ids of the groups that the chunk should be placed into. This is useful for when you want to update a chunk and add it to a group or multiple groups in one request.
    attr_accessor :group_tracking_ids

    # Link of the chunk you want to update. This can also be any string. Frequently, this is a link to the source of the chunk. The link value will not affect the embedding creation. If no link is provided, the existing link will be used.
    attr_accessor :link

    attr_accessor :location

    # The metadata is a JSON object which can be used to filter chunks. This is useful for when you want to filter chunks by arbitrary metadata. Unlike with tag filtering, there is a performance hit for filtering on metadata. If no metadata is provided, the existing metadata will be used.
    attr_accessor :metadata

    # Tag set is a list of tags. This can be used to filter chunks by tag. Unlike with metadata filtering, HNSW indices will exist for each tag such that there is not a performance hit for filtering on them. If no tag_set is provided, the existing tag_set will be used.
    attr_accessor :tag_set

    # Time_stamp should be an ISO 8601 combined date and time without timezone. It is used for time window filtering and recency-biasing search results. If no time_stamp is provided, the existing time_stamp will be used.
    attr_accessor :time_stamp

    # Tracking_id of the chunk you want to update. This is required to match an existing chunk.
    attr_accessor :tracking_id

    # Weight is a float which can be used to bias search results. This is useful for when you want to bias search results for a chunk. The magnitude only matters relative to other chunks in the chunk's dataset dataset. If no weight is provided, the existing weight will be used.
    attr_accessor :weight

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'chunk_html' => :'chunk_html',
        :'chunk_id' => :'chunk_id',
        :'convert_html_to_text' => :'convert_html_to_text',
        :'group_ids' => :'group_ids',
        :'group_tracking_ids' => :'group_tracking_ids',
        :'link' => :'link',
        :'location' => :'location',
        :'metadata' => :'metadata',
        :'tag_set' => :'tag_set',
        :'time_stamp' => :'time_stamp',
        :'tracking_id' => :'tracking_id',
        :'weight' => :'weight'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'chunk_html' => :'String',
        :'chunk_id' => :'String',
        :'convert_html_to_text' => :'Boolean',
        :'group_ids' => :'Array<String>',
        :'group_tracking_ids' => :'Array<String>',
        :'link' => :'String',
        :'location' => :'GeoInfo',
        :'metadata' => :'Object',
        :'tag_set' => :'Array<String>',
        :'time_stamp' => :'String',
        :'tracking_id' => :'String',
        :'weight' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'chunk_html',
        :'chunk_id',
        :'convert_html_to_text',
        :'group_ids',
        :'group_tracking_ids',
        :'link',
        :'location',
        :'metadata',
        :'tag_set',
        :'time_stamp',
        :'tracking_id',
        :'weight'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TrieveRubyClient::UpdateChunkData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TrieveRubyClient::UpdateChunkData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'chunk_html')
        self.chunk_html = attributes[:'chunk_html']
      end

      if attributes.key?(:'chunk_id')
        self.chunk_id = attributes[:'chunk_id']
      end

      if attributes.key?(:'convert_html_to_text')
        self.convert_html_to_text = attributes[:'convert_html_to_text']
      end

      if attributes.key?(:'group_ids')
        if (value = attributes[:'group_ids']).is_a?(Array)
          self.group_ids = value
        end
      end

      if attributes.key?(:'group_tracking_ids')
        if (value = attributes[:'group_tracking_ids']).is_a?(Array)
          self.group_tracking_ids = value
        end
      end

      if attributes.key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'tag_set')
        if (value = attributes[:'tag_set']).is_a?(Array)
          self.tag_set = value
        end
      end

      if attributes.key?(:'time_stamp')
        self.time_stamp = attributes[:'time_stamp']
      end

      if attributes.key?(:'tracking_id')
        self.tracking_id = attributes[:'tracking_id']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          chunk_html == o.chunk_html &&
          chunk_id == o.chunk_id &&
          convert_html_to_text == o.convert_html_to_text &&
          group_ids == o.group_ids &&
          group_tracking_ids == o.group_tracking_ids &&
          link == o.link &&
          location == o.location &&
          metadata == o.metadata &&
          tag_set == o.tag_set &&
          time_stamp == o.time_stamp &&
          tracking_id == o.tracking_id &&
          weight == o.weight
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [chunk_html, chunk_id, convert_html_to_text, group_ids, group_tracking_ids, link, location, metadata, tag_set, time_stamp, tracking_id, weight].hash
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
