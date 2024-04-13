=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.6.7
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module TrieveRubyClient
  class DatasetApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create dataset
    # Create dataset  Create a new dataset. The auth'ed user must be an owner of the organization to create a dataset.
    # @param tr_organization [String] The organization id to use for the request
    # @param create_dataset_request [CreateDatasetRequest] JSON request payload to create a new dataset
    # @param [Hash] opts the optional parameters
    # @return [Dataset]
    def create_dataset(tr_organization, create_dataset_request, opts = {})
      data, _status_code, _headers = create_dataset_with_http_info(tr_organization, create_dataset_request, opts)
      data
    end

    # Create dataset
    # Create dataset  Create a new dataset. The auth&#39;ed user must be an owner of the organization to create a dataset.
    # @param tr_organization [String] The organization id to use for the request
    # @param create_dataset_request [CreateDatasetRequest] JSON request payload to create a new dataset
    # @param [Hash] opts the optional parameters
    # @return [Array<(Dataset, Integer, Hash)>] Dataset data, response status code and response headers
    def create_dataset_with_http_info(tr_organization, create_dataset_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatasetApi.create_dataset ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling DatasetApi.create_dataset"
      end
      # verify the required parameter 'create_dataset_request' is set
      if @api_client.config.client_side_validation && create_dataset_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_dataset_request' when calling DatasetApi.create_dataset"
      end
      # resource path
      local_var_path = '/api/dataset'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_dataset_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Dataset'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"DatasetApi.create_dataset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatasetApi#create_dataset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Dataset
    # Delete Dataset  Delete a dataset. The auth'ed user must be an owner of the organization to delete a dataset.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param dataset_id [String] The id of the dataset you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_dataset(tr_dataset, dataset_id, opts = {})
      delete_dataset_with_http_info(tr_dataset, dataset_id, opts)
      nil
    end

    # Delete Dataset
    # Delete Dataset  Delete a dataset. The auth&#39;ed user must be an owner of the organization to delete a dataset.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param dataset_id [String] The id of the dataset you want to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_dataset_with_http_info(tr_dataset, dataset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatasetApi.delete_dataset ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling DatasetApi.delete_dataset"
      end
      # verify the required parameter 'dataset_id' is set
      if @api_client.config.client_side_validation && dataset_id.nil?
        fail ArgumentError, "Missing the required parameter 'dataset_id' when calling DatasetApi.delete_dataset"
      end
      # resource path
      local_var_path = '/api/dataset/{dataset_id}'.sub('{' + 'dataset_id' + '}', CGI.escape(dataset_id.to_s))

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
        :operation => :"DatasetApi.delete_dataset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatasetApi#delete_dataset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Client Configuration
    # Get Client Configuration  Get the client configuration for a dataset. Will use the TR-D
    # @param tr_dataset [String] The dataset id to use for the request
    # @param [Hash] opts the optional parameters
    # @return [ClientDatasetConfiguration]
    def get_client_dataset_config(tr_dataset, opts = {})
      data, _status_code, _headers = get_client_dataset_config_with_http_info(tr_dataset, opts)
      data
    end

    # Get Client Configuration
    # Get Client Configuration  Get the client configuration for a dataset. Will use the TR-D
    # @param tr_dataset [String] The dataset id to use for the request
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientDatasetConfiguration, Integer, Hash)>] ClientDatasetConfiguration data, response status code and response headers
    def get_client_dataset_config_with_http_info(tr_dataset, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatasetApi.get_client_dataset_config ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling DatasetApi.get_client_dataset_config"
      end
      # resource path
      local_var_path = '/api/dataset/envs'

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
      return_type = opts[:debug_return_type] || 'ClientDatasetConfiguration'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"DatasetApi.get_client_dataset_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatasetApi#get_client_dataset_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Dataset
    # Get Dataset  Get a dataset by id. The auth'ed user must be an admin or owner of the organization to get a dataset.
    # @param tr_organization [String] The organization id to use for the request
    # @param tr_dataset [String] The dataset id to use for the request
    # @param dataset_id [String] The id of the dataset you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Dataset]
    def get_dataset(tr_organization, tr_dataset, dataset_id, opts = {})
      data, _status_code, _headers = get_dataset_with_http_info(tr_organization, tr_dataset, dataset_id, opts)
      data
    end

    # Get Dataset
    # Get Dataset  Get a dataset by id. The auth&#39;ed user must be an admin or owner of the organization to get a dataset.
    # @param tr_organization [String] The organization id to use for the request
    # @param tr_dataset [String] The dataset id to use for the request
    # @param dataset_id [String] The id of the dataset you want to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Dataset, Integer, Hash)>] Dataset data, response status code and response headers
    def get_dataset_with_http_info(tr_organization, tr_dataset, dataset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatasetApi.get_dataset ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling DatasetApi.get_dataset"
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling DatasetApi.get_dataset"
      end
      # verify the required parameter 'dataset_id' is set
      if @api_client.config.client_side_validation && dataset_id.nil?
        fail ArgumentError, "Missing the required parameter 'dataset_id' when calling DatasetApi.get_dataset"
      end
      # resource path
      local_var_path = '/api/dataset/{dataset_id}'.sub('{' + 'dataset_id' + '}', CGI.escape(dataset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Organization'] = tr_organization
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Dataset'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"DatasetApi.get_dataset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatasetApi#get_dataset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Datasets from Organization
    # Get Datasets from Organization  Get all datasets for an organization. The auth'ed user must be an admin or owner of the organization to get its datasets.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] id of the organization you want to retrieve datasets for
    # @param [Hash] opts the optional parameters
    # @return [Array<DatasetAndUsage>]
    def get_datasets_from_organization(tr_organization, organization_id, opts = {})
      data, _status_code, _headers = get_datasets_from_organization_with_http_info(tr_organization, organization_id, opts)
      data
    end

    # Get Datasets from Organization
    # Get Datasets from Organization  Get all datasets for an organization. The auth&#39;ed user must be an admin or owner of the organization to get its datasets.
    # @param tr_organization [String] The organization id to use for the request
    # @param organization_id [String] id of the organization you want to retrieve datasets for
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<DatasetAndUsage>, Integer, Hash)>] Array<DatasetAndUsage> data, response status code and response headers
    def get_datasets_from_organization_with_http_info(tr_organization, organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatasetApi.get_datasets_from_organization ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling DatasetApi.get_datasets_from_organization"
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling DatasetApi.get_datasets_from_organization"
      end
      # resource path
      local_var_path = '/api/dataset/organization/{organization_id}'.sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<DatasetAndUsage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"DatasetApi.get_datasets_from_organization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatasetApi#get_datasets_from_organization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Dataset
    # Update Dataset  Update a dataset. The auth'ed user must be an owner of the organization to update a dataset.
    # @param tr_organization [String] The organization id to use for the request
    # @param update_dataset_request [UpdateDatasetRequest] JSON request payload to update a dataset
    # @param [Hash] opts the optional parameters
    # @return [Dataset]
    def update_dataset(tr_organization, update_dataset_request, opts = {})
      data, _status_code, _headers = update_dataset_with_http_info(tr_organization, update_dataset_request, opts)
      data
    end

    # Update Dataset
    # Update Dataset  Update a dataset. The auth&#39;ed user must be an owner of the organization to update a dataset.
    # @param tr_organization [String] The organization id to use for the request
    # @param update_dataset_request [UpdateDatasetRequest] JSON request payload to update a dataset
    # @param [Hash] opts the optional parameters
    # @return [Array<(Dataset, Integer, Hash)>] Dataset data, response status code and response headers
    def update_dataset_with_http_info(tr_organization, update_dataset_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatasetApi.update_dataset ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling DatasetApi.update_dataset"
      end
      # verify the required parameter 'update_dataset_request' is set
      if @api_client.config.client_side_validation && update_dataset_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_dataset_request' when calling DatasetApi.update_dataset"
      end
      # resource path
      local_var_path = '/api/dataset'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_dataset_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Dataset'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"DatasetApi.update_dataset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatasetApi#update_dataset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
