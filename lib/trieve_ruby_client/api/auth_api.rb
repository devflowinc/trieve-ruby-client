=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.11.0
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module TrieveRubyClient
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # OpenID Connect callback
    # This is the callback route for the OAuth provider, it should not be called directly. Redirects to browser with set-cookie header.
    # @param [Hash] opts the optional parameters
    # @return [SlimUser]
    def callback(opts = {})
      data, _status_code, _headers = callback_with_http_info(opts)
      data
    end

    # OpenID Connect callback
    # This is the callback route for the OAuth provider, it should not be called directly. Redirects to browser with set-cookie header.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SlimUser, Integer, Hash)>] SlimUser data, response status code and response headers
    def callback_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.callback ...'
      end
      # resource path
      local_var_path = '/api/auth/callback'

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
      return_type = opts[:debug_return_type] || 'SlimUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AuthApi.callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Me
    # Get the user corresponding to your current auth credentials.
    # @param [Hash] opts the optional parameters
    # @return [SlimUser]
    def get_me(opts = {})
      data, _status_code, _headers = get_me_with_http_info(opts)
      data
    end

    # Get Me
    # Get the user corresponding to your current auth credentials.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SlimUser, Integer, Hash)>] SlimUser data, response status code and response headers
    def get_me_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.get_me ...'
      end
      # resource path
      local_var_path = '/api/auth/me'

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
      return_type = opts[:debug_return_type] || 'SlimUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AuthApi.get_me",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#get_me\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Login
    # This will redirect you to the OAuth provider for authentication with email/pass, SSO, Google, Github, etc.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id ID of organization to authenticate into
    # @option opts [String] :redirect_uri URL to redirect to after successful login
    # @option opts [String] :inv_code Code sent via email as a result of successful call to send_invitation
    # @return [nil]
    def login(opts = {})
      login_with_http_info(opts)
      nil
    end

    # Login
    # This will redirect you to the OAuth provider for authentication with email/pass, SSO, Google, Github, etc.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id ID of organization to authenticate into
    # @option opts [String] :redirect_uri URL to redirect to after successful login
    # @option opts [String] :inv_code Code sent via email as a result of successful call to send_invitation
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def login_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.login ...'
      end
      # resource path
      local_var_path = '/api/auth'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'organization_id'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?
      query_params[:'redirect_uri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?
      query_params[:'inv_code'] = opts[:'inv_code'] if !opts[:'inv_code'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AuthApi.login",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#login\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Logout
    # Invalidate your current auth credential stored typically stored in a cookie. This does not invalidate your API key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def logout(opts = {})
      logout_with_http_info(opts)
      nil
    end

    # Logout
    # Invalidate your current auth credential stored typically stored in a cookie. This does not invalidate your API key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def logout_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.logout ...'
      end
      # resource path
      local_var_path = '/api/auth'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AuthApi.logout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#logout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
