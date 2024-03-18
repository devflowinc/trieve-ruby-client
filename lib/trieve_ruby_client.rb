=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.3.4
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

# Common files
require 'trieve_ruby_client/api_client'
require 'trieve_ruby_client/api_error'
require 'trieve_ruby_client/version'
require 'trieve_ruby_client/configuration'

# Models
require 'trieve_ruby_client/models/add_chunk_to_group_data'
require 'trieve_ruby_client/models/api_key_dto'
require 'trieve_ruby_client/models/bookmark_data'
require 'trieve_ruby_client/models/bookmark_group_result'
require 'trieve_ruby_client/models/chat_message_proxy'
require 'trieve_ruby_client/models/chunk_filter'
require 'trieve_ruby_client/models/chunk_group'
require 'trieve_ruby_client/models/chunk_group_and_file'
require 'trieve_ruby_client/models/chunk_metadata'
require 'trieve_ruby_client/models/chunk_metadata_with_file_data'
require 'trieve_ruby_client/models/client_dataset_configuration'
require 'trieve_ruby_client/models/create_chunk_data'
require 'trieve_ruby_client/models/create_chunk_group_data'
require 'trieve_ruby_client/models/create_dataset_request'
require 'trieve_ruby_client/models/create_message_data'
require 'trieve_ruby_client/models/create_organization_data'
require 'trieve_ruby_client/models/create_topic_data'
require 'trieve_ruby_client/models/dataset'
require 'trieve_ruby_client/models/dataset_and_usage'
require 'trieve_ruby_client/models/dataset_dto'
require 'trieve_ruby_client/models/dataset_usage_count'
require 'trieve_ruby_client/models/delete_dataset_request'
require 'trieve_ruby_client/models/delete_topic_data'
require 'trieve_ruby_client/models/delete_user_api_key_request'
require 'trieve_ruby_client/models/edit_message_data'
require 'trieve_ruby_client/models/error_response_body'
require 'trieve_ruby_client/models/event'
require 'trieve_ruby_client/models/event_return'
require 'trieve_ruby_client/models/field_condition'
require 'trieve_ruby_client/models/file'
require 'trieve_ruby_client/models/file_dto'
require 'trieve_ruby_client/models/generate_chunks_request'
require 'trieve_ruby_client/models/get_groups_for_chunks_data'
require 'trieve_ruby_client/models/group_data'
require 'trieve_ruby_client/models/group_score_chunk_dto'
require 'trieve_ruby_client/models/invitation_data'
require 'trieve_ruby_client/models/match_condition'
require 'trieve_ruby_client/models/message'
require 'trieve_ruby_client/models/organization'
require 'trieve_ruby_client/models/organization_usage_count'
require 'trieve_ruby_client/models/range'
require 'trieve_ruby_client/models/reccomend_group_chunks_request'
require 'trieve_ruby_client/models/recommend_chunks_request'
require 'trieve_ruby_client/models/regenerate_message_data'
require 'trieve_ruby_client/models/return_queued_chunk'
require 'trieve_ruby_client/models/score_chunk_dto'
require 'trieve_ruby_client/models/search_chunk_data'
require 'trieve_ruby_client/models/search_chunk_query_response_body'
require 'trieve_ruby_client/models/search_groups_result'
require 'trieve_ruby_client/models/search_over_groups_data'
require 'trieve_ruby_client/models/search_over_groups_response_body'
require 'trieve_ruby_client/models/search_within_group_data'
require 'trieve_ruby_client/models/set_user_api_key_request'
require 'trieve_ruby_client/models/set_user_api_key_response'
require 'trieve_ruby_client/models/slim_group'
require 'trieve_ruby_client/models/slim_user'
require 'trieve_ruby_client/models/stripe_plan'
require 'trieve_ruby_client/models/stripe_subscription'
require 'trieve_ruby_client/models/suggested_queries_request'
require 'trieve_ruby_client/models/suggested_queries_response'
require 'trieve_ruby_client/models/topic'
require 'trieve_ruby_client/models/update_chunk_by_tracking_id_data'
require 'trieve_ruby_client/models/update_chunk_data'
require 'trieve_ruby_client/models/update_chunk_group_data'
require 'trieve_ruby_client/models/update_dataset_request'
require 'trieve_ruby_client/models/update_group_by_tracking_id_data'
require 'trieve_ruby_client/models/update_organization_data'
require 'trieve_ruby_client/models/update_topic_data'
require 'trieve_ruby_client/models/update_user_data'
require 'trieve_ruby_client/models/upload_file_data'
require 'trieve_ruby_client/models/upload_file_result'
require 'trieve_ruby_client/models/user_organization'

# APIs
require 'trieve_ruby_client/api/auth_api'
require 'trieve_ruby_client/api/chunk_api'
require 'trieve_ruby_client/api/chunk_group_api'
require 'trieve_ruby_client/api/dataset_api'
require 'trieve_ruby_client/api/events_api'
require 'trieve_ruby_client/api/file_api'
require 'trieve_ruby_client/api/health_api'
require 'trieve_ruby_client/api/invitation_api'
require 'trieve_ruby_client/api/message_api'
require 'trieve_ruby_client/api/organization_api'
require 'trieve_ruby_client/api/stripe_api'
require 'trieve_ruby_client/api/topic_api'
require 'trieve_ruby_client/api/user_api'

module TrieveRubyClient
  class << self
    # Customize default settings for the SDK using block.
    #   TrieveRubyClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
