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
  class HealthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Health Check
    # Health Check  Confirmation that the service is healthy and can make embedding vectors
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def health_check(opts = {})
      health_check_with_http_info(opts)
      nil
    end

    # Health Check
    # Health Check  Confirmation that the service is healthy and can make embedding vectors
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def health_check_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HealthApi.health_check ...'
      end
      # resource path
      local_var_path = '/api/health'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"HealthApi.health_check",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HealthApi#health_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
