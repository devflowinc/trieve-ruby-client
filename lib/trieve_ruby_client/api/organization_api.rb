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
  class OrganizationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Organization
    # Create Organization  Create a new organization. The auth'ed user who creates the organization will be the default owner of the organization.
    # @param create_organization_data [CreateOrganizationData] The organization data that you want to create
    # @param [Hash] opts the optional parameters
    # @return [Organization]
    def create_organization(create_organization_data, opts = {})
      data, _status_code, _headers = create_organization_with_http_info(create_organization_data, opts)
      data
    end

    # Create Organization
    # Create Organization  Create a new organization. The auth&#39;ed user who creates the organization will be the default owner of the organization.
    # @param create_organization_data [CreateOrganizationData] The organization data that you want to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    def create_organization_with_http_info(create_organization_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationApi.create_organization ...'
      end
      # verify the required parameter 'create_organization_data' is set
      if @api_client.config.client_side_validation && create_organization_data.nil?
        fail ArgumentError, "Missing the required parameter 'create_organization_data' when calling OrganizationApi.create_organization"
      end
      # resource path
      local_var_path = '/api/organization'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_organization_data)

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"OrganizationApi.create_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#create_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Organization
    # Delete Organization  Delete an organization by its id. The auth'ed user must be an owner of the organization to delete it.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] The id of the organization you want to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Organization]
    def delete_organization_by_id(tr_organization, organization_id, opts = {})
      data, _status_code, _headers = delete_organization_by_id_with_http_info(tr_organization, organization_id, opts)
      data
    end

    # Delete Organization
    # Delete Organization  Delete an organization by its id. The auth&#39;ed user must be an owner of the organization to delete it.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] The id of the organization you want to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    def delete_organization_by_id_with_http_info(tr_organization, organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationApi.delete_organization_by_id ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling OrganizationApi.delete_organization_by_id"
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationApi.delete_organization_by_id"
      end
      # resource path
      local_var_path = '/api/organization/{organization_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Organization'] = tr_organization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"OrganizationApi.delete_organization_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#delete_organization_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Organization
    # Get Organization  Fetch the details of an organization by its id. The auth'ed user must be an admin or owner of the organization to fetch it.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] The id of the organization you want to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Organization]
    def get_organization_by_id(tr_organization, organization_id, opts = {})
      data, _status_code, _headers = get_organization_by_id_with_http_info(tr_organization, organization_id, opts)
      data
    end

    # Get Organization
    # Get Organization  Fetch the details of an organization by its id. The auth&#39;ed user must be an admin or owner of the organization to fetch it.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] The id of the organization you want to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    def get_organization_by_id_with_http_info(tr_organization, organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationApi.get_organization_by_id ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling OrganizationApi.get_organization_by_id"
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationApi.get_organization_by_id"
      end
      # resource path
      local_var_path = '/api/organization/{organization_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Organization'] = tr_organization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"OrganizationApi.get_organization_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#get_organization_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Organization Usage
    # Get Organization Usage  Fetch the current usage specification of an organization by its id. The auth'ed user must be an admin or owner of the organization to fetch it.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] The id of the organization you want to fetch the usage of.
    # @param [Hash] opts the optional parameters
    # @return [OrganizationUsageCount]
    def get_organization_usage(tr_organization, organization_id, opts = {})
      data, _status_code, _headers = get_organization_usage_with_http_info(tr_organization, organization_id, opts)
      data
    end

    # Get Organization Usage
    # Get Organization Usage  Fetch the current usage specification of an organization by its id. The auth&#39;ed user must be an admin or owner of the organization to fetch it.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] The id of the organization you want to fetch the usage of.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrganizationUsageCount, Integer, Hash)>] OrganizationUsageCount data, response status code and response headers
    def get_organization_usage_with_http_info(tr_organization, organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationApi.get_organization_usage ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling OrganizationApi.get_organization_usage"
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationApi.get_organization_usage"
      end
      # resource path
      local_var_path = '/api/organization/usage/{organization_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Organization'] = tr_organization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationUsageCount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"OrganizationApi.get_organization_usage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#get_organization_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Organization Users
    # Get Organization Users  Fetch the users of an organization by its id. The auth'ed user must be an admin or owner of the organization to fetch it.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] The id of the organization you want to fetch the users of.
    # @param [Hash] opts the optional parameters
    # @return [Array<SlimUser>]
    def get_organization_users(tr_organization, organization_id, opts = {})
      data, _status_code, _headers = get_organization_users_with_http_info(tr_organization, organization_id, opts)
      data
    end

    # Get Organization Users
    # Get Organization Users  Fetch the users of an organization by its id. The auth&#39;ed user must be an admin or owner of the organization to fetch it.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] The id of the organization you want to fetch the users of.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SlimUser>, Integer, Hash)>] Array<SlimUser> data, response status code and response headers
    def get_organization_users_with_http_info(tr_organization, organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationApi.get_organization_users ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling OrganizationApi.get_organization_users"
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationApi.get_organization_users"
      end
      # resource path
      local_var_path = '/api/organization/users/{organization_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Organization'] = tr_organization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<SlimUser>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"OrganizationApi.get_organization_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#get_organization_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Organization
    # Update Organization  Update an organization. Only the owner of the organization can update it.
    # @param tr_organization [String] The organization id to use for the request
    # @param update_organization_data [UpdateOrganizationData] The organization data that you want to update
    # @param [Hash] opts the optional parameters
    # @return [Organization]
    def update_organization(tr_organization, update_organization_data, opts = {})
      data, _status_code, _headers = update_organization_with_http_info(tr_organization, update_organization_data, opts)
      data
    end

    # Update Organization
    # Update Organization  Update an organization. Only the owner of the organization can update it.
    # @param tr_organization [String] The organization id to use for the request
    # @param update_organization_data [UpdateOrganizationData] The organization data that you want to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(Organization, Integer, Hash)>] Organization data, response status code and response headers
    def update_organization_with_http_info(tr_organization, update_organization_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrganizationApi.update_organization ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling OrganizationApi.update_organization"
      end
      # verify the required parameter 'update_organization_data' is set
      if @api_client.config.client_side_validation && update_organization_data.nil?
        fail ArgumentError, "Missing the required parameter 'update_organization_data' when calling OrganizationApi.update_organization"
      end
      # resource path
      local_var_path = '/api/organization'

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
      header_params[:'TR-Organization'] = tr_organization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_organization_data)

      # return_type
      return_type = opts[:debug_return_type] || 'Organization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"OrganizationApi.update_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationApi#update_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
