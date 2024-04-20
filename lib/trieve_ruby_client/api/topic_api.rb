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
  class TopicApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Topic
    # Create Topic  Create a new chat topic. Topics are attached to a owner_id's and act as a coordinator for conversation message history of gen-AI chat sessions.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param create_topic_data [CreateTopicData] JSON request payload to create chat topic
    # @param [Hash] opts the optional parameters
    # @return [Topic]
    def create_topic(tr_dataset, create_topic_data, opts = {})
      data, _status_code, _headers = create_topic_with_http_info(tr_dataset, create_topic_data, opts)
      data
    end

    # Create Topic
    # Create Topic  Create a new chat topic. Topics are attached to a owner_id&#39;s and act as a coordinator for conversation message history of gen-AI chat sessions.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param create_topic_data [CreateTopicData] JSON request payload to create chat topic
    # @param [Hash] opts the optional parameters
    # @return [Array<(Topic, Integer, Hash)>] Topic data, response status code and response headers
    def create_topic_with_http_info(tr_dataset, create_topic_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopicApi.create_topic ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling TopicApi.create_topic"
      end
      # verify the required parameter 'create_topic_data' is set
      if @api_client.config.client_side_validation && create_topic_data.nil?
        fail ArgumentError, "Missing the required parameter 'create_topic_data' when calling TopicApi.create_topic"
      end
      # resource path
      local_var_path = '/api/topic'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_topic_data)

      # return_type
      return_type = opts[:debug_return_type] || 'Topic'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TopicApi.create_topic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopicApi#create_topic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Topic
    # Delete Topic  Delete an existing chat topic. When a topic is deleted, all associated chat messages are also deleted.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param topic_id [String] The id of the topic you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_topic(tr_dataset, topic_id, opts = {})
      delete_topic_with_http_info(tr_dataset, topic_id, opts)
      nil
    end

    # Delete Topic
    # Delete Topic  Delete an existing chat topic. When a topic is deleted, all associated chat messages are also deleted.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param topic_id [String] The id of the topic you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_topic_with_http_info(tr_dataset, topic_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopicApi.delete_topic ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling TopicApi.delete_topic"
      end
      # verify the required parameter 'topic_id' is set
      if @api_client.config.client_side_validation && topic_id.nil?
        fail ArgumentError, "Missing the required parameter 'topic_id' when calling TopicApi.delete_topic"
      end
      # resource path
      local_var_path = '/api/topic/{topic_id}'.sub('{' + 'topic_id' + '}', CGI.escape(topic_id.to_s))

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
        :operation => :"TopicApi.delete_topic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopicApi#delete_topic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get All Topics for Owner ID
    # Get All Topics for Owner ID  Get all topics belonging to an arbitary owner_id. This is useful for managing message history and chat sessions. It is common to use a browser fingerprint or your user's id as the owner_id.
    # @param owner_id [String] The owner_id to get topics of; A common approach is to use a browser fingerprint or your user&#39;s id
    # @param tr_dataset [String] The dataset id to use for the request
    # @param [Hash] opts the optional parameters
    # @return [Array<Topic>]
    def get_all_topics_for_owner_id(owner_id, tr_dataset, opts = {})
      data, _status_code, _headers = get_all_topics_for_owner_id_with_http_info(owner_id, tr_dataset, opts)
      data
    end

    # Get All Topics for Owner ID
    # Get All Topics for Owner ID  Get all topics belonging to an arbitary owner_id. This is useful for managing message history and chat sessions. It is common to use a browser fingerprint or your user&#39;s id as the owner_id.
    # @param owner_id [String] The owner_id to get topics of; A common approach is to use a browser fingerprint or your user&#39;s id
    # @param tr_dataset [String] The dataset id to use for the request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Topic>, Integer, Hash)>] Array<Topic> data, response status code and response headers
    def get_all_topics_for_owner_id_with_http_info(owner_id, tr_dataset, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopicApi.get_all_topics_for_owner_id ...'
      end
      # verify the required parameter 'owner_id' is set
      if @api_client.config.client_side_validation && owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'owner_id' when calling TopicApi.get_all_topics_for_owner_id"
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling TopicApi.get_all_topics_for_owner_id"
      end
      # resource path
      local_var_path = '/api/topic/owner/{owner_id}'.sub('{' + 'owner_id' + '}', CGI.escape(owner_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Topic>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TopicApi.get_all_topics_for_owner_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopicApi#get_all_topics_for_owner_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Topic
    # Update Topic  Update an existing chat topic. Currently, only the name of the topic can be updated.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param update_topic_data [UpdateTopicData] JSON request payload to update a chat topic
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_topic(tr_dataset, update_topic_data, opts = {})
      update_topic_with_http_info(tr_dataset, update_topic_data, opts)
      nil
    end

    # Update Topic
    # Update Topic  Update an existing chat topic. Currently, only the name of the topic can be updated.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param update_topic_data [UpdateTopicData] JSON request payload to update a chat topic
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_topic_with_http_info(tr_dataset, update_topic_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopicApi.update_topic ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling TopicApi.update_topic"
      end
      # verify the required parameter 'update_topic_data' is set
      if @api_client.config.client_side_validation && update_topic_data.nil?
        fail ArgumentError, "Missing the required parameter 'update_topic_data' when calling TopicApi.update_topic"
      end
      # resource path
      local_var_path = '/api/topic'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_topic_data)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TopicApi.update_topic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopicApi#update_topic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
