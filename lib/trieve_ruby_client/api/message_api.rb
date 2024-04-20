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
  class MessageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a message
    # Create a message  Create a message. Messages are attached to topics in order to coordinate memory of gen-AI chat sessions. We are considering refactoring this resource of the API soon. Currently, you can only send user messages. If the topic is a RAG topic then the response will include Chunks first on the stream. The structure will look like `[chunks]||mesage`. See docs.trieve.ai for more information.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param create_message_data [CreateMessageData] JSON request payload to create a message completion
    # @param [Hash] opts the optional parameters
    # @return [String]
    def create_message_completion_handler(tr_dataset, create_message_data, opts = {})
      data, _status_code, _headers = create_message_completion_handler_with_http_info(tr_dataset, create_message_data, opts)
      data
    end

    # Create a message
    # Create a message  Create a message. Messages are attached to topics in order to coordinate memory of gen-AI chat sessions. We are considering refactoring this resource of the API soon. Currently, you can only send user messages. If the topic is a RAG topic then the response will include Chunks first on the stream. The structure will look like &#x60;[chunks]||mesage&#x60;. See docs.trieve.ai for more information.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param create_message_data [CreateMessageData] JSON request payload to create a message completion
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def create_message_completion_handler_with_http_info(tr_dataset, create_message_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageApi.create_message_completion_handler ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling MessageApi.create_message_completion_handler"
      end
      # verify the required parameter 'create_message_data' is set
      if @api_client.config.client_side_validation && create_message_data.nil?
        fail ArgumentError, "Missing the required parameter 'create_message_data' when calling MessageApi.create_message_completion_handler"
      end
      # resource path
      local_var_path = '/api/message'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_message_data)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"MessageApi.create_message_completion_handler",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageApi#create_message_completion_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a message
    # Edit a message  Edit a message which exists within the topic's chat history. This will delete the message and replace it with a new message. The new message will be generated by the AI based on the new content provided in the request body. The response will include Chunks first on the stream if the topic is using RAG. The structure will look like `[chunks]||mesage`. See docs.trieve.ai for more information.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param edit_message_data [EditMessageData] JSON request payload to edit a message and get a new stream
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def edit_message_handler(tr_dataset, edit_message_data, opts = {})
      edit_message_handler_with_http_info(tr_dataset, edit_message_data, opts)
      nil
    end

    # Edit a message
    # Edit a message  Edit a message which exists within the topic&#39;s chat history. This will delete the message and replace it with a new message. The new message will be generated by the AI based on the new content provided in the request body. The response will include Chunks first on the stream if the topic is using RAG. The structure will look like &#x60;[chunks]||mesage&#x60;. See docs.trieve.ai for more information.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param edit_message_data [EditMessageData] JSON request payload to edit a message and get a new stream
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def edit_message_handler_with_http_info(tr_dataset, edit_message_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageApi.edit_message_handler ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling MessageApi.edit_message_handler"
      end
      # verify the required parameter 'edit_message_data' is set
      if @api_client.config.client_side_validation && edit_message_data.nil?
        fail ArgumentError, "Missing the required parameter 'edit_message_data' when calling MessageApi.edit_message_handler"
      end
      # resource path
      local_var_path = '/api/message'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(edit_message_data)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"MessageApi.edit_message_handler",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageApi#edit_message_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all messages for a given topic
    # Get all messages for a given topic  Get all messages for a given topic. If the topic is a RAG topic then the response will include Chunks first on each message. The structure will look like `[chunks]||mesage`. See docs.trieve.ai for more information.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param messages_topic_id [String] The ID of the topic to get messages for.
    # @param [Hash] opts the optional parameters
    # @return [Array<Message>]
    def get_all_topic_messages(tr_dataset, messages_topic_id, opts = {})
      data, _status_code, _headers = get_all_topic_messages_with_http_info(tr_dataset, messages_topic_id, opts)
      data
    end

    # Get all messages for a given topic
    # Get all messages for a given topic  Get all messages for a given topic. If the topic is a RAG topic then the response will include Chunks first on each message. The structure will look like &#x60;[chunks]||mesage&#x60;. See docs.trieve.ai for more information.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param messages_topic_id [String] The ID of the topic to get messages for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Message>, Integer, Hash)>] Array<Message> data, response status code and response headers
    def get_all_topic_messages_with_http_info(tr_dataset, messages_topic_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageApi.get_all_topic_messages ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling MessageApi.get_all_topic_messages"
      end
      # verify the required parameter 'messages_topic_id' is set
      if @api_client.config.client_side_validation && messages_topic_id.nil?
        fail ArgumentError, "Missing the required parameter 'messages_topic_id' when calling MessageApi.get_all_topic_messages"
      end
      # resource path
      local_var_path = '/api/messages/{messages_topic_id}'.sub('{' + 'messages_topic_id' + '}', CGI.escape(messages_topic_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Message>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"MessageApi.get_all_topic_messages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageApi#get_all_topic_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Regenerate message
    # Regenerate message  Regenerate the assistant response to the last user message of a topic. This will delete the last message and replace it with a new message. The response will include Chunks first on the stream if the topic is using RAG. The structure will look like `[chunks]||mesage`. See docs.trieve.ai for more information.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param regenerate_message_data [RegenerateMessageData] JSON request payload to delete an agent message then regenerate it in a strem
    # @param [Hash] opts the optional parameters
    # @return [String]
    def regenerate_message_handler(tr_dataset, regenerate_message_data, opts = {})
      data, _status_code, _headers = regenerate_message_handler_with_http_info(tr_dataset, regenerate_message_data, opts)
      data
    end

    # Regenerate message
    # Regenerate message  Regenerate the assistant response to the last user message of a topic. This will delete the last message and replace it with a new message. The response will include Chunks first on the stream if the topic is using RAG. The structure will look like &#x60;[chunks]||mesage&#x60;. See docs.trieve.ai for more information.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param regenerate_message_data [RegenerateMessageData] JSON request payload to delete an agent message then regenerate it in a strem
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def regenerate_message_handler_with_http_info(tr_dataset, regenerate_message_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MessageApi.regenerate_message_handler ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling MessageApi.regenerate_message_handler"
      end
      # verify the required parameter 'regenerate_message_data' is set
      if @api_client.config.client_side_validation && regenerate_message_data.nil?
        fail ArgumentError, "Missing the required parameter 'regenerate_message_data' when calling MessageApi.regenerate_message_handler"
      end
      # resource path
      local_var_path = '/api/message'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(regenerate_message_data)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"MessageApi.regenerate_message_handler",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessageApi#regenerate_message_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
