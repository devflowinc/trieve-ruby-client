=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.7.2
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module TrieveRubyClient
  class ChunkApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or Upsert Chunk or Chunks
    # Create or Upsert Chunk or Chunks  Create a new chunk. If the chunk has the same tracking_id as an existing chunk, the request will fail. Once a chunk is created, it can be searched for using the search endpoint.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param create_chunk_data [CreateChunkData] JSON request payload to create a new chunk (chunk)
    # @param [Hash] opts the optional parameters
    # @return [ReturnQueuedChunk]
    def create_chunk(tr_dataset, create_chunk_data, opts = {})
      data, _status_code, _headers = create_chunk_with_http_info(tr_dataset, create_chunk_data, opts)
      data
    end

    # Create or Upsert Chunk or Chunks
    # Create or Upsert Chunk or Chunks  Create a new chunk. If the chunk has the same tracking_id as an existing chunk, the request will fail. Once a chunk is created, it can be searched for using the search endpoint.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param create_chunk_data [CreateChunkData] JSON request payload to create a new chunk (chunk)
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReturnQueuedChunk, Integer, Hash)>] ReturnQueuedChunk data, response status code and response headers
    def create_chunk_with_http_info(tr_dataset, create_chunk_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.create_chunk ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.create_chunk"
      end
      # verify the required parameter 'create_chunk_data' is set
      if @api_client.config.client_side_validation && create_chunk_data.nil?
        fail ArgumentError, "Missing the required parameter 'create_chunk_data' when calling ChunkApi.create_chunk"
      end
      # resource path
      local_var_path = '/api/chunk'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_chunk_data)

      # return_type
      return_type = opts[:debug_return_type] || 'ReturnQueuedChunk'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.create_chunk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#create_chunk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate suggested queries
    # Generate suggested queries  This endpoint will generate 3 suggested queries based off the query provided in the request body and return them as a JSON object.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param suggested_queries_request [SuggestedQueriesRequest] JSON request payload to get alternative suggested queries
    # @param [Hash] opts the optional parameters
    # @return [SuggestedQueriesResponse]
    def create_suggested_queries_handler(tr_dataset, suggested_queries_request, opts = {})
      data, _status_code, _headers = create_suggested_queries_handler_with_http_info(tr_dataset, suggested_queries_request, opts)
      data
    end

    # Generate suggested queries
    # Generate suggested queries  This endpoint will generate 3 suggested queries based off the query provided in the request body and return them as a JSON object.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param suggested_queries_request [SuggestedQueriesRequest] JSON request payload to get alternative suggested queries
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuggestedQueriesResponse, Integer, Hash)>] SuggestedQueriesResponse data, response status code and response headers
    def create_suggested_queries_handler_with_http_info(tr_dataset, suggested_queries_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.create_suggested_queries_handler ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.create_suggested_queries_handler"
      end
      # verify the required parameter 'suggested_queries_request' is set
      if @api_client.config.client_side_validation && suggested_queries_request.nil?
        fail ArgumentError, "Missing the required parameter 'suggested_queries_request' when calling ChunkApi.create_suggested_queries_handler"
      end
      # resource path
      local_var_path = '/api/chunk/gen_suggestions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(suggested_queries_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SuggestedQueriesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.create_suggested_queries_handler",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#create_suggested_queries_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Chunk
    # Delete Chunk  Delete a chunk by its id. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param chunk_id [String] Id of the chunk you want to fetch.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_chunk(tr_dataset, chunk_id, opts = {})
      delete_chunk_with_http_info(tr_dataset, chunk_id, opts)
      nil
    end

    # Delete Chunk
    # Delete Chunk  Delete a chunk by its id. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param chunk_id [String] Id of the chunk you want to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_chunk_with_http_info(tr_dataset, chunk_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.delete_chunk ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.delete_chunk"
      end
      # verify the required parameter 'chunk_id' is set
      if @api_client.config.client_side_validation && chunk_id.nil?
        fail ArgumentError, "Missing the required parameter 'chunk_id' when calling ChunkApi.delete_chunk"
      end
      # resource path
      local_var_path = '/api/chunk/{chunk_id}'.sub('{' + 'chunk_id' + '}', CGI.escape(chunk_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.delete_chunk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#delete_chunk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Chunk By Tracking Id
    # Delete Chunk By Tracking Id  Delete a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param tracking_id [String] tracking_id of the chunk you want to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_chunk_by_tracking_id(tr_dataset, tracking_id, opts = {})
      delete_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id, opts)
      nil
    end

    # Delete Chunk By Tracking Id
    # Delete Chunk By Tracking Id  Delete a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param tracking_id [String] tracking_id of the chunk you want to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.delete_chunk_by_tracking_id ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.delete_chunk_by_tracking_id"
      end
      # verify the required parameter 'tracking_id' is set
      if @api_client.config.client_side_validation && tracking_id.nil?
        fail ArgumentError, "Missing the required parameter 'tracking_id' when calling ChunkApi.delete_chunk_by_tracking_id"
      end
      # resource path
      local_var_path = '/api/chunk/tracking_id/{tracking_id}'.sub('{' + 'tracking_id' + '}', CGI.escape(tracking_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.delete_chunk_by_tracking_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#delete_chunk_by_tracking_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RAG on Specified Chunks
    # RAG on Specified Chunks  This endpoint exists as an alternative to the topic+message concept where our API handles chat memory. With this endpoint, the user is responsible for providing the context window and the prompt. See more in the \"search before generate\" page at docs.trieve.ai.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param generate_chunks_request [GenerateChunksRequest] JSON request payload to perform RAG on some chunks (chunks)
    # @param [Hash] opts the optional parameters
    # @return [String]
    def generate_off_chunks(tr_dataset, generate_chunks_request, opts = {})
      data, _status_code, _headers = generate_off_chunks_with_http_info(tr_dataset, generate_chunks_request, opts)
      data
    end

    # RAG on Specified Chunks
    # RAG on Specified Chunks  This endpoint exists as an alternative to the topic+message concept where our API handles chat memory. With this endpoint, the user is responsible for providing the context window and the prompt. See more in the \&quot;search before generate\&quot; page at docs.trieve.ai.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param generate_chunks_request [GenerateChunksRequest] JSON request payload to perform RAG on some chunks (chunks)
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def generate_off_chunks_with_http_info(tr_dataset, generate_chunks_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.generate_off_chunks ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.generate_off_chunks"
      end
      # verify the required parameter 'generate_chunks_request' is set
      if @api_client.config.client_side_validation && generate_chunks_request.nil?
        fail ArgumentError, "Missing the required parameter 'generate_chunks_request' when calling ChunkApi.generate_off_chunks"
      end
      # resource path
      local_var_path = '/api/chunk/generate'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(generate_chunks_request)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.generate_off_chunks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#generate_off_chunks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Chunk By Id
    # Get Chunk By Id  Get a singular chunk by id.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param chunk_id [String] Id of the chunk you want to fetch.
    # @param [Hash] opts the optional parameters
    # @return [ChunkMetadata]
    def get_chunk_by_id(tr_dataset, chunk_id, opts = {})
      data, _status_code, _headers = get_chunk_by_id_with_http_info(tr_dataset, chunk_id, opts)
      data
    end

    # Get Chunk By Id
    # Get Chunk By Id  Get a singular chunk by id.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param chunk_id [String] Id of the chunk you want to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChunkMetadata, Integer, Hash)>] ChunkMetadata data, response status code and response headers
    def get_chunk_by_id_with_http_info(tr_dataset, chunk_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.get_chunk_by_id ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.get_chunk_by_id"
      end
      # verify the required parameter 'chunk_id' is set
      if @api_client.config.client_side_validation && chunk_id.nil?
        fail ArgumentError, "Missing the required parameter 'chunk_id' when calling ChunkApi.get_chunk_by_id"
      end
      # resource path
      local_var_path = '/api/chunk/{chunk_id}'.sub('{' + 'chunk_id' + '}', CGI.escape(chunk_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ChunkMetadata'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.get_chunk_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#get_chunk_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Chunk By Tracking Id
    # Get Chunk By Tracking Id  Get a singular chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use your own id as the primary reference for a chunk.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param tracking_id [String] tracking_id of the chunk you want to fetch
    # @param [Hash] opts the optional parameters
    # @return [ChunkMetadata]
    def get_chunk_by_tracking_id(tr_dataset, tracking_id, opts = {})
      data, _status_code, _headers = get_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id, opts)
      data
    end

    # Get Chunk By Tracking Id
    # Get Chunk By Tracking Id  Get a singular chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use your own id as the primary reference for a chunk.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param tracking_id [String] tracking_id of the chunk you want to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChunkMetadata, Integer, Hash)>] ChunkMetadata data, response status code and response headers
    def get_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.get_chunk_by_tracking_id ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.get_chunk_by_tracking_id"
      end
      # verify the required parameter 'tracking_id' is set
      if @api_client.config.client_side_validation && tracking_id.nil?
        fail ArgumentError, "Missing the required parameter 'tracking_id' when calling ChunkApi.get_chunk_by_tracking_id"
      end
      # resource path
      local_var_path = '/api/chunk/tracking_id/{tracking_id}'.sub('{' + 'tracking_id' + '}', CGI.escape(tracking_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ChunkMetadata'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.get_chunk_by_tracking_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#get_chunk_by_tracking_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Recommended Chunks
    # Get Recommended Chunks  Get recommendations of chunks similar to the chunks in the request. Think about this as a feature similar to the \"add to playlist\" recommendation feature on Spotify. This request pairs especially well with our groups endpoint.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param recommend_chunks_request [RecommendChunksRequest] JSON request payload to get recommendations of chunks similar to the chunks in the request
    # @param [Hash] opts the optional parameters
    # @return [Array<ChunkMetadataWithScore>]
    def get_recommended_chunks(tr_dataset, recommend_chunks_request, opts = {})
      data, _status_code, _headers = get_recommended_chunks_with_http_info(tr_dataset, recommend_chunks_request, opts)
      data
    end

    # Get Recommended Chunks
    # Get Recommended Chunks  Get recommendations of chunks similar to the chunks in the request. Think about this as a feature similar to the \&quot;add to playlist\&quot; recommendation feature on Spotify. This request pairs especially well with our groups endpoint.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param recommend_chunks_request [RecommendChunksRequest] JSON request payload to get recommendations of chunks similar to the chunks in the request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ChunkMetadataWithScore>, Integer, Hash)>] Array<ChunkMetadataWithScore> data, response status code and response headers
    def get_recommended_chunks_with_http_info(tr_dataset, recommend_chunks_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.get_recommended_chunks ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.get_recommended_chunks"
      end
      # verify the required parameter 'recommend_chunks_request' is set
      if @api_client.config.client_side_validation && recommend_chunks_request.nil?
        fail ArgumentError, "Missing the required parameter 'recommend_chunks_request' when calling ChunkApi.get_recommended_chunks"
      end
      # resource path
      local_var_path = '/api/chunk/recommend'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(recommend_chunks_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ChunkMetadataWithScore>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.get_recommended_chunks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#get_recommended_chunks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Search  This route provides the primary search functionality for the API. It can be used to search for chunks by semantic similarity, full-text similarity, or a combination of both. Results' `chunk_html` values will be modified with `<b><mark>` tags for sub-sentence highlighting.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param search_chunk_data [SearchChunkData] JSON request payload to semantically search for chunks (chunks)
    # @param [Hash] opts the optional parameters
    # @return [SearchChunkQueryResponseBody]
    def search_chunk(tr_dataset, search_chunk_data, opts = {})
      data, _status_code, _headers = search_chunk_with_http_info(tr_dataset, search_chunk_data, opts)
      data
    end

    # Search
    # Search  This route provides the primary search functionality for the API. It can be used to search for chunks by semantic similarity, full-text similarity, or a combination of both. Results&#39; &#x60;chunk_html&#x60; values will be modified with &#x60;&lt;b&gt;&lt;mark&gt;&#x60; tags for sub-sentence highlighting.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param search_chunk_data [SearchChunkData] JSON request payload to semantically search for chunks (chunks)
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchChunkQueryResponseBody, Integer, Hash)>] SearchChunkQueryResponseBody data, response status code and response headers
    def search_chunk_with_http_info(tr_dataset, search_chunk_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.search_chunk ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.search_chunk"
      end
      # verify the required parameter 'search_chunk_data' is set
      if @api_client.config.client_side_validation && search_chunk_data.nil?
        fail ArgumentError, "Missing the required parameter 'search_chunk_data' when calling ChunkApi.search_chunk"
      end
      # resource path
      local_var_path = '/api/chunk/search'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(search_chunk_data)

      # return_type
      return_type = opts[:debug_return_type] || 'SearchChunkQueryResponseBody'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.search_chunk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#search_chunk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Chunk
    # Update Chunk  Update a chunk. If you try to change the tracking_id of the chunk to have the same tracking_id as an existing chunk, the request will fail.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param update_chunk_data [UpdateChunkData] JSON request payload to update a chunk (chunk)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_chunk(tr_dataset, update_chunk_data, opts = {})
      update_chunk_with_http_info(tr_dataset, update_chunk_data, opts)
      nil
    end

    # Update Chunk
    # Update Chunk  Update a chunk. If you try to change the tracking_id of the chunk to have the same tracking_id as an existing chunk, the request will fail.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param update_chunk_data [UpdateChunkData] JSON request payload to update a chunk (chunk)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_chunk_with_http_info(tr_dataset, update_chunk_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.update_chunk ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.update_chunk"
      end
      # verify the required parameter 'update_chunk_data' is set
      if @api_client.config.client_side_validation && update_chunk_data.nil?
        fail ArgumentError, "Missing the required parameter 'update_chunk_data' when calling ChunkApi.update_chunk"
      end
      # resource path
      local_var_path = '/api/chunk'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_chunk_data)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.update_chunk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#update_chunk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Chunk By Tracking Id
    # Update Chunk By Tracking Id  Update a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param update_chunk_by_tracking_id_data [UpdateChunkByTrackingIdData] JSON request payload to update a chunk by tracking_id (chunks)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_chunk_by_tracking_id(tr_dataset, update_chunk_by_tracking_id_data, opts = {})
      update_chunk_by_tracking_id_with_http_info(tr_dataset, update_chunk_by_tracking_id_data, opts)
      nil
    end

    # Update Chunk By Tracking Id
    # Update Chunk By Tracking Id  Update a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param update_chunk_by_tracking_id_data [UpdateChunkByTrackingIdData] JSON request payload to update a chunk by tracking_id (chunks)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_chunk_by_tracking_id_with_http_info(tr_dataset, update_chunk_by_tracking_id_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChunkApi.update_chunk_by_tracking_id ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling ChunkApi.update_chunk_by_tracking_id"
      end
      # verify the required parameter 'update_chunk_by_tracking_id_data' is set
      if @api_client.config.client_side_validation && update_chunk_by_tracking_id_data.nil?
        fail ArgumentError, "Missing the required parameter 'update_chunk_by_tracking_id_data' when calling ChunkApi.update_chunk_by_tracking_id"
      end
      # resource path
      local_var_path = '/api/chunk/tracking_id/update'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_chunk_by_tracking_id_data)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"ChunkApi.update_chunk_by_tracking_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChunkApi#update_chunk_by_tracking_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
