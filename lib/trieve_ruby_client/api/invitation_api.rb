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
  class InvitationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send Invitation
    # Send Invitation  Invitations act as a way to invite users to join an organization. After a user is invited, they will automatically be added to the organization with the role specified in the invitation once they set their.
    # @param tr_organization [String] The organization id to use for the request
    # @param invitation_data [InvitationData] JSON request payload to send an invitation
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_invitation(tr_organization, invitation_data, opts = {})
      post_invitation_with_http_info(tr_organization, invitation_data, opts)
      nil
    end

    # Send Invitation
    # Send Invitation  Invitations act as a way to invite users to join an organization. After a user is invited, they will automatically be added to the organization with the role specified in the invitation once they set their.
    # @param tr_organization [String] The organization id to use for the request
    # @param invitation_data [InvitationData] JSON request payload to send an invitation
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_invitation_with_http_info(tr_organization, invitation_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvitationApi.post_invitation ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling InvitationApi.post_invitation"
      end
      # verify the required parameter 'invitation_data' is set
      if @api_client.config.client_side_validation && invitation_data.nil?
        fail ArgumentError, "Missing the required parameter 'invitation_data' when calling InvitationApi.post_invitation"
      end
      # resource path
      local_var_path = '/api/invitation'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(invitation_data)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"InvitationApi.post_invitation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvitationApi#post_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
