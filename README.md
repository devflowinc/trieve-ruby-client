# trieve_ruby_client

TrieveRubyClient - the Ruby gem for the Trieve API

Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.3.4
- Package version: 0.3.4
- Generator version: 7.4.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://trieve.ai](https://trieve.ai)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build trieve_ruby_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./trieve_ruby_client-0.3.4.gem
```

(for development, run `gem install --dev ./trieve_ruby_client-0.3.4.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'trieve_ruby_client', '~> 0.3.4'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'trieve_ruby_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'trieve_ruby_client'

api_instance = TrieveRubyClient::AuthApi.new

begin
  #openid_callback
  result = api_instance.callback
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Exception when calling AuthApi->callback: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*TrieveRubyClient::AuthApi* | [**callback**](docs/AuthApi.md#callback) | **GET** /api/auth/callback | openid_callback
*TrieveRubyClient::AuthApi* | [**get_me**](docs/AuthApi.md#get_me) | **GET** /api/auth/me | get_me
*TrieveRubyClient::AuthApi* | [**login**](docs/AuthApi.md#login) | **GET** /api/auth | login
*TrieveRubyClient::AuthApi* | [**logout**](docs/AuthApi.md#logout) | **DELETE** /api/auth | logout
*TrieveRubyClient::ChunkApi* | [**bulk_create_chunk**](docs/ChunkApi.md#bulk_create_chunk) | **POST** /api/chunk/bulk | bulk_create_chunk
*TrieveRubyClient::ChunkApi* | [**create_chunk**](docs/ChunkApi.md#create_chunk) | **POST** /api/chunk | create_chunk
*TrieveRubyClient::ChunkApi* | [**create_suggested_queries_handler**](docs/ChunkApi.md#create_suggested_queries_handler) | **POST** /api/chunk/gen_suggestions | get_suggested_queries
*TrieveRubyClient::ChunkApi* | [**delete_chunk**](docs/ChunkApi.md#delete_chunk) | **DELETE** /api/{tracking_or_chunk}/{chunk_id} | delete_chunk
*TrieveRubyClient::ChunkApi* | [**delete_chunk_by_tracking_id**](docs/ChunkApi.md#delete_chunk_by_tracking_id) | **DELETE** /api/chunk/tracking_id/{tracking_id} | delete_chunk_by_tracking_id
*TrieveRubyClient::ChunkApi* | [**generate_off_chunks**](docs/ChunkApi.md#generate_off_chunks) | **POST** /api/chunk/generate | augmented_generation_from_chunks
*TrieveRubyClient::ChunkApi* | [**get_chunk_by_id**](docs/ChunkApi.md#get_chunk_by_id) | **GET** /api/{tracking_or_chunk}/{chunk_id} | get_chunk
*TrieveRubyClient::ChunkApi* | [**get_chunk_by_tracking_id**](docs/ChunkApi.md#get_chunk_by_tracking_id) | **GET** /api/chunk/tracking_id/{tracking_id} | get_chunk_by_tracking_id
*TrieveRubyClient::ChunkApi* | [**get_recommended_chunks**](docs/ChunkApi.md#get_recommended_chunks) | **POST** /api/chunk/recommend | get_recommended_chunks
*TrieveRubyClient::ChunkApi* | [**search_chunk**](docs/ChunkApi.md#search_chunk) | **POST** /api/chunk/search | search
*TrieveRubyClient::ChunkApi* | [**update_chunk**](docs/ChunkApi.md#update_chunk) | **PUT** /api/chunk/update | update_chunk
*TrieveRubyClient::ChunkApi* | [**update_chunk_by_tracking_id**](docs/ChunkApi.md#update_chunk_by_tracking_id) | **PUT** /api/chunk/tracking_id/update | update_chunk_by_tracking_id
*TrieveRubyClient::ChunkGroupApi* | [**add_chunk_to_group**](docs/ChunkGroupApi.md#add_chunk_to_group) | **POST** /api/chunk_group/chunk/{group_id} | add_chunk_to_group
*TrieveRubyClient::ChunkGroupApi* | [**add_chunk_to_group_by_tracking_id**](docs/ChunkGroupApi.md#add_chunk_to_group_by_tracking_id) | **POST** /api/chunk_group/tracking_id/{tracking_id} | add_chunk_to_group_by_tracking_id
*TrieveRubyClient::ChunkGroupApi* | [**create_chunk_group**](docs/ChunkGroupApi.md#create_chunk_group) | **POST** /api/chunk_group | create_chunk_group
*TrieveRubyClient::ChunkGroupApi* | [**delete_chunk_group**](docs/ChunkGroupApi.md#delete_chunk_group) | **DELETE** /api/{tracking_or_chunk}/{group_id} | delete_chunk_group
*TrieveRubyClient::ChunkGroupApi* | [**delete_group_by_tracking_id**](docs/ChunkGroupApi.md#delete_group_by_tracking_id) | **DELETE** /api/chunk_group/tracking_id/{tracking_id} | 
*TrieveRubyClient::ChunkGroupApi* | [**get_chunks_in_group**](docs/ChunkGroupApi.md#get_chunks_in_group) | **GET** /api/chunk_group/{tracking_or_chunk}/{group_id}/{page} | get_chunks_in_group
*TrieveRubyClient::ChunkGroupApi* | [**get_chunks_in_group_by_tracking_id**](docs/ChunkGroupApi.md#get_chunks_in_group_by_tracking_id) | **GET** /api/chunk_group/tracking_id/{group_tracking_id}/{page} | get_chunks_in_group_by_tracking_id
*TrieveRubyClient::ChunkGroupApi* | [**get_group_by_tracking_id**](docs/ChunkGroupApi.md#get_group_by_tracking_id) | **GET** /api/chunk_group/tracking_id/{tracking_id} | get_group_by_tracking_id
*TrieveRubyClient::ChunkGroupApi* | [**get_groups_chunk_is_in**](docs/ChunkGroupApi.md#get_groups_chunk_is_in) | **POST** /api/chunk_group/chunks | 
*TrieveRubyClient::ChunkGroupApi* | [**get_recommended_groups**](docs/ChunkGroupApi.md#get_recommended_groups) | **POST** /api/chunk_group/recommend | 
*TrieveRubyClient::ChunkGroupApi* | [**get_specific_dataset_chunk_groups**](docs/ChunkGroupApi.md#get_specific_dataset_chunk_groups) | **GET** /api/dataset/groups/{dataset_id}/{page} | get_dataset_groups
*TrieveRubyClient::ChunkGroupApi* | [**remove_chunk_from_group**](docs/ChunkGroupApi.md#remove_chunk_from_group) | **DELETE** /api/chunk_group/chunk/{group_id} | remove_chunk_from_group
*TrieveRubyClient::ChunkGroupApi* | [**search_over_groups**](docs/ChunkGroupApi.md#search_over_groups) | **POST** /api/chunk_group/group_oriented_search | group_oriented_search
*TrieveRubyClient::ChunkGroupApi* | [**search_within_group**](docs/ChunkGroupApi.md#search_within_group) | **POST** /api/chunk_group/search | search_within_group
*TrieveRubyClient::ChunkGroupApi* | [**update_chunk_group**](docs/ChunkGroupApi.md#update_chunk_group) | **PUT** /api/chunk_group | update_chunk_group
*TrieveRubyClient::ChunkGroupApi* | [**update_group_by_tracking_id**](docs/ChunkGroupApi.md#update_group_by_tracking_id) | **PUT** /api/chunk_group/tracking_id/{tracking_id} | 
*TrieveRubyClient::DatasetApi* | [**create_dataset**](docs/DatasetApi.md#create_dataset) | **POST** /api/dataset | create_dataset
*TrieveRubyClient::DatasetApi* | [**delete_dataset**](docs/DatasetApi.md#delete_dataset) | **DELETE** /api/dataset | delete_dataset
*TrieveRubyClient::DatasetApi* | [**get_client_dataset_config**](docs/DatasetApi.md#get_client_dataset_config) | **GET** /api/dataset/envs | get_client_dataset_config
*TrieveRubyClient::DatasetApi* | [**get_dataset**](docs/DatasetApi.md#get_dataset) | **GET** /api/dataset/{dataset_id} | get_dataset
*TrieveRubyClient::DatasetApi* | [**get_datasets_from_organization**](docs/DatasetApi.md#get_datasets_from_organization) | **GET** /api/dataset/organization/{organization_id} | get_organization_datasets
*TrieveRubyClient::DatasetApi* | [**update_dataset**](docs/DatasetApi.md#update_dataset) | **PUT** /api/dataset | update_dataset
*TrieveRubyClient::EventsApi* | [**get_events**](docs/EventsApi.md#get_events) | **GET** /api/events/{page} | get_events
*TrieveRubyClient::FileApi* | [**delete_file_handler**](docs/FileApi.md#delete_file_handler) | **DELETE** /api/file/{file_id} | delete_file
*TrieveRubyClient::FileApi* | [**get_dataset_files_handler**](docs/FileApi.md#get_dataset_files_handler) | **GET** /api/dataset/files/{dataset_id}/{page} | get_dataset_files
*TrieveRubyClient::FileApi* | [**get_file_handler**](docs/FileApi.md#get_file_handler) | **GET** /api/file/{file_id} | get_file
*TrieveRubyClient::FileApi* | [**upload_file_handler**](docs/FileApi.md#upload_file_handler) | **POST** /api/file | upload_file
*TrieveRubyClient::HealthApi* | [**health_check**](docs/HealthApi.md#health_check) | **GET** /api/health | 
*TrieveRubyClient::InvitationApi* | [**post_invitation**](docs/InvitationApi.md#post_invitation) | **POST** /api/invitation | send_invitation
*TrieveRubyClient::MessageApi* | [**create_message_completion_handler**](docs/MessageApi.md#create_message_completion_handler) | **POST** /api/message | create_message
*TrieveRubyClient::MessageApi* | [**edit_message_handler**](docs/MessageApi.md#edit_message_handler) | **PUT** /api/message | edit_message
*TrieveRubyClient::MessageApi* | [**get_all_topic_messages**](docs/MessageApi.md#get_all_topic_messages) | **GET** /api/messages/{messages_topic_id} | get_all_messages
*TrieveRubyClient::MessageApi* | [**regenerate_message_handler**](docs/MessageApi.md#regenerate_message_handler) | **DELETE** /api/message | regenerate_message
*TrieveRubyClient::OrganizationApi* | [**create_organization**](docs/OrganizationApi.md#create_organization) | **POST** /api/organization | create_organization
*TrieveRubyClient::OrganizationApi* | [**delete_organization_by_id**](docs/OrganizationApi.md#delete_organization_by_id) | **DELETE** /api/organization/{organization_id} | delete_organization
*TrieveRubyClient::OrganizationApi* | [**get_organization_by_id**](docs/OrganizationApi.md#get_organization_by_id) | **GET** /api/organization/{organization_id} | get_organization
*TrieveRubyClient::OrganizationApi* | [**get_organization_usage**](docs/OrganizationApi.md#get_organization_usage) | **GET** /api/organization/usage/{organization_id} | get_organization_usage
*TrieveRubyClient::OrganizationApi* | [**get_organization_users**](docs/OrganizationApi.md#get_organization_users) | **GET** /api/organization/users/{organization_id} | get_organization_users
*TrieveRubyClient::OrganizationApi* | [**update_organization**](docs/OrganizationApi.md#update_organization) | **PUT** /api/organization | update_organization
*TrieveRubyClient::StripeApi* | [**cancel_subscription**](docs/StripeApi.md#cancel_subscription) | **DELETE** /api/stripe/subscription/{subscription_id} | 
*TrieveRubyClient::StripeApi* | [**direct_to_payment_link**](docs/StripeApi.md#direct_to_payment_link) | **GET** /api/stripe/payment_link/{plan_id}/{organization_id} | 
*TrieveRubyClient::StripeApi* | [**get_all_plans**](docs/StripeApi.md#get_all_plans) | **GET** /api/stripe/plans | 
*TrieveRubyClient::StripeApi* | [**update_subscription_plan**](docs/StripeApi.md#update_subscription_plan) | **PATCH** /api/stripe/subscription_plan/{subscription_id}/{plan_id} | 
*TrieveRubyClient::TopicApi* | [**create_topic**](docs/TopicApi.md#create_topic) | **POST** /api/topic | create_topic
*TrieveRubyClient::TopicApi* | [**delete_topic**](docs/TopicApi.md#delete_topic) | **DELETE** /api/topic | delete_topic
*TrieveRubyClient::TopicApi* | [**get_all_topics_for_user**](docs/TopicApi.md#get_all_topics_for_user) | **GET** /api/topic/user/{user_id} | get_all_topics_for_user
*TrieveRubyClient::TopicApi* | [**update_topic**](docs/TopicApi.md#update_topic) | **PUT** /api/topic | update_topic
*TrieveRubyClient::UserApi* | [**delete_user_api_key**](docs/UserApi.md#delete_user_api_key) | **DELETE** /api/user/delete_api_key | delete_user_api_key
*TrieveRubyClient::UserApi* | [**set_user_api_key**](docs/UserApi.md#set_user_api_key) | **POST** /api/user/set_api_key | set_user_api_key
*TrieveRubyClient::UserApi* | [**update_user**](docs/UserApi.md#update_user) | **PUT** /api/user | update_user


## Documentation for Models

 - [TrieveRubyClient::AddChunkToGroupData](docs/AddChunkToGroupData.md)
 - [TrieveRubyClient::ApiKeyDTO](docs/ApiKeyDTO.md)
 - [TrieveRubyClient::BookmarkData](docs/BookmarkData.md)
 - [TrieveRubyClient::BookmarkGroupResult](docs/BookmarkGroupResult.md)
 - [TrieveRubyClient::ChatMessageProxy](docs/ChatMessageProxy.md)
 - [TrieveRubyClient::ChunkFilter](docs/ChunkFilter.md)
 - [TrieveRubyClient::ChunkGroup](docs/ChunkGroup.md)
 - [TrieveRubyClient::ChunkGroupAndFile](docs/ChunkGroupAndFile.md)
 - [TrieveRubyClient::ChunkMetadata](docs/ChunkMetadata.md)
 - [TrieveRubyClient::ChunkMetadataWithFileData](docs/ChunkMetadataWithFileData.md)
 - [TrieveRubyClient::ClientDatasetConfiguration](docs/ClientDatasetConfiguration.md)
 - [TrieveRubyClient::CreateChunkData](docs/CreateChunkData.md)
 - [TrieveRubyClient::CreateChunkGroupData](docs/CreateChunkGroupData.md)
 - [TrieveRubyClient::CreateDatasetRequest](docs/CreateDatasetRequest.md)
 - [TrieveRubyClient::CreateMessageData](docs/CreateMessageData.md)
 - [TrieveRubyClient::CreateOrganizationData](docs/CreateOrganizationData.md)
 - [TrieveRubyClient::CreateTopicData](docs/CreateTopicData.md)
 - [TrieveRubyClient::Dataset](docs/Dataset.md)
 - [TrieveRubyClient::DatasetAndUsage](docs/DatasetAndUsage.md)
 - [TrieveRubyClient::DatasetDTO](docs/DatasetDTO.md)
 - [TrieveRubyClient::DatasetUsageCount](docs/DatasetUsageCount.md)
 - [TrieveRubyClient::DeleteDatasetRequest](docs/DeleteDatasetRequest.md)
 - [TrieveRubyClient::DeleteTopicData](docs/DeleteTopicData.md)
 - [TrieveRubyClient::DeleteUserApiKeyRequest](docs/DeleteUserApiKeyRequest.md)
 - [TrieveRubyClient::EditMessageData](docs/EditMessageData.md)
 - [TrieveRubyClient::ErrorResponseBody](docs/ErrorResponseBody.md)
 - [TrieveRubyClient::Event](docs/Event.md)
 - [TrieveRubyClient::EventReturn](docs/EventReturn.md)
 - [TrieveRubyClient::FieldCondition](docs/FieldCondition.md)
 - [TrieveRubyClient::File](docs/File.md)
 - [TrieveRubyClient::FileDTO](docs/FileDTO.md)
 - [TrieveRubyClient::GenerateChunksRequest](docs/GenerateChunksRequest.md)
 - [TrieveRubyClient::GetGroupsForChunksData](docs/GetGroupsForChunksData.md)
 - [TrieveRubyClient::GroupData](docs/GroupData.md)
 - [TrieveRubyClient::GroupScoreChunkDTO](docs/GroupScoreChunkDTO.md)
 - [TrieveRubyClient::InvitationData](docs/InvitationData.md)
 - [TrieveRubyClient::MatchCondition](docs/MatchCondition.md)
 - [TrieveRubyClient::Message](docs/Message.md)
 - [TrieveRubyClient::Organization](docs/Organization.md)
 - [TrieveRubyClient::OrganizationUsageCount](docs/OrganizationUsageCount.md)
 - [TrieveRubyClient::Range](docs/Range.md)
 - [TrieveRubyClient::ReccomendGroupChunksRequest](docs/ReccomendGroupChunksRequest.md)
 - [TrieveRubyClient::RecommendChunksRequest](docs/RecommendChunksRequest.md)
 - [TrieveRubyClient::RegenerateMessageData](docs/RegenerateMessageData.md)
 - [TrieveRubyClient::ReturnQueuedChunk](docs/ReturnQueuedChunk.md)
 - [TrieveRubyClient::ScoreChunkDTO](docs/ScoreChunkDTO.md)
 - [TrieveRubyClient::SearchChunkData](docs/SearchChunkData.md)
 - [TrieveRubyClient::SearchChunkQueryResponseBody](docs/SearchChunkQueryResponseBody.md)
 - [TrieveRubyClient::SearchGroupsResult](docs/SearchGroupsResult.md)
 - [TrieveRubyClient::SearchOverGroupsData](docs/SearchOverGroupsData.md)
 - [TrieveRubyClient::SearchOverGroupsResponseBody](docs/SearchOverGroupsResponseBody.md)
 - [TrieveRubyClient::SearchWithinGroupData](docs/SearchWithinGroupData.md)
 - [TrieveRubyClient::SetUserApiKeyRequest](docs/SetUserApiKeyRequest.md)
 - [TrieveRubyClient::SetUserApiKeyResponse](docs/SetUserApiKeyResponse.md)
 - [TrieveRubyClient::SlimGroup](docs/SlimGroup.md)
 - [TrieveRubyClient::SlimUser](docs/SlimUser.md)
 - [TrieveRubyClient::StripePlan](docs/StripePlan.md)
 - [TrieveRubyClient::StripeSubscription](docs/StripeSubscription.md)
 - [TrieveRubyClient::SuggestedQueriesRequest](docs/SuggestedQueriesRequest.md)
 - [TrieveRubyClient::SuggestedQueriesResponse](docs/SuggestedQueriesResponse.md)
 - [TrieveRubyClient::Topic](docs/Topic.md)
 - [TrieveRubyClient::UpdateChunkByTrackingIdData](docs/UpdateChunkByTrackingIdData.md)
 - [TrieveRubyClient::UpdateChunkData](docs/UpdateChunkData.md)
 - [TrieveRubyClient::UpdateChunkGroupData](docs/UpdateChunkGroupData.md)
 - [TrieveRubyClient::UpdateDatasetRequest](docs/UpdateDatasetRequest.md)
 - [TrieveRubyClient::UpdateGroupByTrackingIDData](docs/UpdateGroupByTrackingIDData.md)
 - [TrieveRubyClient::UpdateOrganizationData](docs/UpdateOrganizationData.md)
 - [TrieveRubyClient::UpdateTopicData](docs/UpdateTopicData.md)
 - [TrieveRubyClient::UpdateUserData](docs/UpdateUserData.md)
 - [TrieveRubyClient::UploadFileData](docs/UploadFileData.md)
 - [TrieveRubyClient::UploadFileResult](docs/UploadFileResult.md)
 - [TrieveRubyClient::UserOrganization](docs/UserOrganization.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### ApiKey


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

### Cookie


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: 
