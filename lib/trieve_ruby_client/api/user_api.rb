=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.8.5
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module TrieveRubyClient
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete User Api Key
    # Delete User Api Key  Delete an api key for the auth'ed user.
    # @param api_key_id [String] The id of the api key to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<ApiKeyDTO>]
    def delete_user_api_key(api_key_id, opts = {})
      data, _status_code, _headers = delete_user_api_key_with_http_info(api_key_id, opts)
      data
    end

    # Delete User Api Key
    # Delete User Api Key  Delete an api key for the auth&#39;ed user.
    # @param api_key_id [String] The id of the api key to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ApiKeyDTO>, Integer, Hash)>] Array<ApiKeyDTO> data, response status code and response headers
    def delete_user_api_key_with_http_info(api_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.delete_user_api_key ...'
      end
      # verify the required parameter 'api_key_id' is set
      if @api_client.config.client_side_validation && api_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_id' when calling UserApi.delete_user_api_key"
      end
      # resource path
      local_var_path = '/api/user/api_key/{api_key_id}'.sub('{' + 'api_key_id' + '}', CGI.escape(api_key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ApiKeyDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"UserApi.delete_user_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#delete_user_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set User Api Key
    # Set User Api Key  Create a new api key for the auth'ed user. Successful response will contain the newly created api key. If a write role is assigned the api key will have permission level of the auth'ed user who calls this endpoint.
    # @param set_user_api_key_request [SetUserApiKeyRequest] JSON request payload to create a new user api key
    # @param [Hash] opts the optional parameters
    # @return [SetUserApiKeyResponse]
    def set_user_api_key(set_user_api_key_request, opts = {})
      data, _status_code, _headers = set_user_api_key_with_http_info(set_user_api_key_request, opts)
      data
    end

    # Set User Api Key
    # Set User Api Key  Create a new api key for the auth&#39;ed user. Successful response will contain the newly created api key. If a write role is assigned the api key will have permission level of the auth&#39;ed user who calls this endpoint.
    # @param set_user_api_key_request [SetUserApiKeyRequest] JSON request payload to create a new user api key
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetUserApiKeyResponse, Integer, Hash)>] SetUserApiKeyResponse data, response status code and response headers
    def set_user_api_key_with_http_info(set_user_api_key_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.set_user_api_key ...'
      end
      # verify the required parameter 'set_user_api_key_request' is set
      if @api_client.config.client_side_validation && set_user_api_key_request.nil?
        fail ArgumentError, "Missing the required parameter 'set_user_api_key_request' when calling UserApi.set_user_api_key"
      end
      # resource path
      local_var_path = '/api/user/api_key'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(set_user_api_key_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SetUserApiKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"UserApi.set_user_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#set_user_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update User
    # Update User  Update a user's information. If the user_id is not provided, the auth'ed user will be updated. If the user_id is provided, the auth'ed user must be an admin (1) or owner (2) of the organization.
    # @param update_user_org_role_data [UpdateUserOrgRoleData] JSON request payload to update user information for the auth&#39;ed user
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_user(update_user_org_role_data, opts = {})
      update_user_with_http_info(update_user_org_role_data, opts)
      nil
    end

    # Update User
    # Update User  Update a user&#39;s information. If the user_id is not provided, the auth&#39;ed user will be updated. If the user_id is provided, the auth&#39;ed user must be an admin (1) or owner (2) of the organization.
    # @param update_user_org_role_data [UpdateUserOrgRoleData] JSON request payload to update user information for the auth&#39;ed user
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_user_with_http_info(update_user_org_role_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.update_user ...'
      end
      # verify the required parameter 'update_user_org_role_data' is set
      if @api_client.config.client_side_validation && update_user_org_role_data.nil?
        fail ArgumentError, "Missing the required parameter 'update_user_org_role_data' when calling UserApi.update_user"
      end
      # resource path
      local_var_path = '/api/user'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_user_org_role_data)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"UserApi.update_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
