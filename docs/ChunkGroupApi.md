# TrieveRubyClient::ChunkGroupApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_chunk_to_group**](ChunkGroupApi.md#add_chunk_to_group) | **POST** /api/chunk_group/chunk/{group_id} | Add Chunk to Group |
| [**add_chunk_to_group_by_tracking_id**](ChunkGroupApi.md#add_chunk_to_group_by_tracking_id) | **POST** /api/chunk_group/tracking_id/{tracking_id} | Add Chunk to Group by Tracking ID |
| [**create_chunk_group**](ChunkGroupApi.md#create_chunk_group) | **POST** /api/chunk_group | Create Chunk Group |
| [**delete_chunk_group**](ChunkGroupApi.md#delete_chunk_group) | **DELETE** /api/chunk_group/{group_id} | Delete Group |
| [**delete_group_by_tracking_id**](ChunkGroupApi.md#delete_group_by_tracking_id) | **DELETE** /api/chunk_group/tracking_id/{tracking_id} | Delete Group by Tracking ID |
| [**get_chunk_group**](ChunkGroupApi.md#get_chunk_group) | **GET** /api/chunk_group/{group_id} | Get Group |
| [**get_chunks_in_group**](ChunkGroupApi.md#get_chunks_in_group) | **GET** /api/chunk_group/{group_id}/{page} | Get Chunks in Group |
| [**get_chunks_in_group_by_tracking_id**](ChunkGroupApi.md#get_chunks_in_group_by_tracking_id) | **GET** /api/chunk_group/tracking_id/{group_tracking_id}/{page} | Get Chunks in Group by Tracking ID |
| [**get_group_by_tracking_id**](ChunkGroupApi.md#get_group_by_tracking_id) | **GET** /api/chunk_group/tracking_id/{tracking_id} | Get Group by Tracking ID |
| [**get_groups_chunk_is_in**](ChunkGroupApi.md#get_groups_chunk_is_in) | **POST** /api/chunk_group/chunks | Get Groups for Chunks |
| [**get_groups_for_dataset**](ChunkGroupApi.md#get_groups_for_dataset) | **GET** /api/dataset/groups/{dataset_id}/{page} | Get Groups for Dataset |
| [**get_recommended_groups**](ChunkGroupApi.md#get_recommended_groups) | **POST** /api/chunk_group/recommend | Get Recommended Groups |
| [**remove_chunk_from_group**](ChunkGroupApi.md#remove_chunk_from_group) | **DELETE** /api/chunk_group/chunk/{group_id} | Remove Chunk from Group |
| [**search_over_groups**](ChunkGroupApi.md#search_over_groups) | **POST** /api/chunk_group/group_oriented_search | Search Over Groups |
| [**search_within_group**](ChunkGroupApi.md#search_within_group) | **POST** /api/chunk_group/search | Search Within Group |
| [**update_chunk_group**](ChunkGroupApi.md#update_chunk_group) | **PUT** /api/chunk_group | Update Group |
| [**update_group_by_tracking_id**](ChunkGroupApi.md#update_group_by_tracking_id) | **PUT** /api/chunk_group/tracking_id/{tracking_id} | Update Group by Tracking ID |


## add_chunk_to_group

> add_chunk_to_group(tr_dataset, group_id, add_chunk_to_group_data)

Add Chunk to Group

Route to add a chunk to a group. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group to add the chunk to as a bookmark
add_chunk_to_group_data = TrieveRubyClient::AddChunkToGroupData.new # AddChunkToGroupData | JSON request payload to add a chunk to a group (bookmark it)

begin
  # Add Chunk to Group
  api_instance.add_chunk_to_group(tr_dataset, group_id, add_chunk_to_group_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->add_chunk_to_group: #{e}"
end
```

#### Using the add_chunk_to_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_chunk_to_group_with_http_info(tr_dataset, group_id, add_chunk_to_group_data)

```ruby
begin
  # Add Chunk to Group
  data, status_code, headers = api_instance.add_chunk_to_group_with_http_info(tr_dataset, group_id, add_chunk_to_group_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->add_chunk_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **group_id** | **String** | Id of the group to add the chunk to as a bookmark |  |
| **add_chunk_to_group_data** | [**AddChunkToGroupData**](AddChunkToGroupData.md) | JSON request payload to add a chunk to a group (bookmark it) |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_chunk_to_group_by_tracking_id

> add_chunk_to_group_by_tracking_id(tr_dataset, tracking_id, add_chunk_to_group_data)

Add Chunk to Group by Tracking ID

Route to add a chunk to a group by tracking id. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = 'tracking_id_example' # String | Id of the group to add the chunk to as a bookmark
add_chunk_to_group_data = TrieveRubyClient::AddChunkToGroupData.new # AddChunkToGroupData | JSON request payload to add a chunk to a group (bookmark it)

begin
  # Add Chunk to Group by Tracking ID
  api_instance.add_chunk_to_group_by_tracking_id(tr_dataset, tracking_id, add_chunk_to_group_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->add_chunk_to_group_by_tracking_id: #{e}"
end
```

#### Using the add_chunk_to_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_chunk_to_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, add_chunk_to_group_data)

```ruby
begin
  # Add Chunk to Group by Tracking ID
  data, status_code, headers = api_instance.add_chunk_to_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, add_chunk_to_group_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->add_chunk_to_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | Id of the group to add the chunk to as a bookmark |  |
| **add_chunk_to_group_data** | [**AddChunkToGroupData**](AddChunkToGroupData.md) | JSON request payload to add a chunk to a group (bookmark it) |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_chunk_group

> <ChunkGroup> create_chunk_group(tr_dataset, create_chunk_group_req_payload)

Create Chunk Group

Create a new chunk_group. This is a way to group chunks together. If you try to create a chunk_group with the same tracking_id as an existing chunk_group, this operation will fail. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
create_chunk_group_req_payload = TrieveRubyClient::CreateChunkGroupReqPayload.new # CreateChunkGroupReqPayload | JSON request payload to cretea a chunkGroup

begin
  # Create Chunk Group
  result = api_instance.create_chunk_group(tr_dataset, create_chunk_group_req_payload)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->create_chunk_group: #{e}"
end
```

#### Using the create_chunk_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkGroup>, Integer, Hash)> create_chunk_group_with_http_info(tr_dataset, create_chunk_group_req_payload)

```ruby
begin
  # Create Chunk Group
  data, status_code, headers = api_instance.create_chunk_group_with_http_info(tr_dataset, create_chunk_group_req_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkGroup>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->create_chunk_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **create_chunk_group_req_payload** | [**CreateChunkGroupReqPayload**](CreateChunkGroupReqPayload.md) | JSON request payload to cretea a chunkGroup |  |

### Return type

[**ChunkGroup**](ChunkGroup.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_chunk_group

> delete_chunk_group(tr_dataset, group_id, delete_chunks)

Delete Group

This will delete a chunk_group. If you set delete_chunks to true, it will also delete the chunks within the group. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group you want to fetch.
delete_chunks = true # Boolean | Delete the chunks within the group

begin
  # Delete Group
  api_instance.delete_chunk_group(tr_dataset, group_id, delete_chunks)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->delete_chunk_group: #{e}"
end
```

#### Using the delete_chunk_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_chunk_group_with_http_info(tr_dataset, group_id, delete_chunks)

```ruby
begin
  # Delete Group
  data, status_code, headers = api_instance.delete_chunk_group_with_http_info(tr_dataset, group_id, delete_chunks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->delete_chunk_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **group_id** | **String** | Id of the group you want to fetch. |  |
| **delete_chunks** | **Boolean** | Delete the chunks within the group |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_group_by_tracking_id

> delete_group_by_tracking_id(tr_dataset, tracking_id, delete_chunks)

Delete Group by Tracking ID

Delete a chunk_group with the given tracking id. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = 'tracking_id_example' # String | Tracking id of the chunk_group to delete
delete_chunks = true # Boolean | Delete the chunks within the group

begin
  # Delete Group by Tracking ID
  api_instance.delete_group_by_tracking_id(tr_dataset, tracking_id, delete_chunks)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->delete_group_by_tracking_id: #{e}"
end
```

#### Using the delete_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, delete_chunks)

```ruby
begin
  # Delete Group by Tracking ID
  data, status_code, headers = api_instance.delete_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, delete_chunks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->delete_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | Tracking id of the chunk_group to delete |  |
| **delete_chunks** | **Boolean** | Delete the chunks within the group |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunk_group

> <ChunkGroupAndFileId> get_chunk_group(tr_dataset, group_id)

Get Group

Fetch the group with the given id. get_group

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group you want to fetch.

begin
  # Get Group
  result = api_instance.get_chunk_group(tr_dataset, group_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunk_group: #{e}"
end
```

#### Using the get_chunk_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkGroupAndFileId>, Integer, Hash)> get_chunk_group_with_http_info(tr_dataset, group_id)

```ruby
begin
  # Get Group
  data, status_code, headers = api_instance.get_chunk_group_with_http_info(tr_dataset, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkGroupAndFileId>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunk_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **group_id** | **String** | Id of the group you want to fetch. |  |

### Return type

[**ChunkGroupAndFileId**](ChunkGroupAndFileId.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunks_in_group

> <BookmarkGroupResponse> get_chunks_in_group(tr_dataset, group_id, page, opts)

Get Chunks in Group

Route to get all chunks for a group. The response is paginated, with each page containing 10 chunks. Page is 1-indexed.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group you want to fetch.
page = 789 # Integer | The page of chunks to get from the group
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The version of the API to use for the request
}

begin
  # Get Chunks in Group
  result = api_instance.get_chunks_in_group(tr_dataset, group_id, page, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunks_in_group: #{e}"
end
```

#### Using the get_chunks_in_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookmarkGroupResponse>, Integer, Hash)> get_chunks_in_group_with_http_info(tr_dataset, group_id, page, opts)

```ruby
begin
  # Get Chunks in Group
  data, status_code, headers = api_instance.get_chunks_in_group_with_http_info(tr_dataset, group_id, page, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookmarkGroupResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunks_in_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **group_id** | **String** | Id of the group you want to fetch. |  |
| **page** | **Integer** | The page of chunks to get from the group |  |
| **x_api_version** | [**APIVersion**](.md) | The version of the API to use for the request | [optional] |

### Return type

[**BookmarkGroupResponse**](BookmarkGroupResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunks_in_group_by_tracking_id

> <BookmarkGroupResponse> get_chunks_in_group_by_tracking_id(tr_dataset, group_tracking_id, page, opts)

Get Chunks in Group by Tracking ID

Route to get all chunks for a group. The response is paginated, with each page containing 10 chunks. Support for custom page size is coming soon. Page is 1-indexed.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
group_tracking_id = 'group_tracking_id_example' # String | The id of the group to get the chunks from
page = 789 # Integer | The page of chunks to get from the group
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The version of the API to use for the request
}

begin
  # Get Chunks in Group by Tracking ID
  result = api_instance.get_chunks_in_group_by_tracking_id(tr_dataset, group_tracking_id, page, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunks_in_group_by_tracking_id: #{e}"
end
```

#### Using the get_chunks_in_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookmarkGroupResponse>, Integer, Hash)> get_chunks_in_group_by_tracking_id_with_http_info(tr_dataset, group_tracking_id, page, opts)

```ruby
begin
  # Get Chunks in Group by Tracking ID
  data, status_code, headers = api_instance.get_chunks_in_group_by_tracking_id_with_http_info(tr_dataset, group_tracking_id, page, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookmarkGroupResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunks_in_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **group_tracking_id** | **String** | The id of the group to get the chunks from |  |
| **page** | **Integer** | The page of chunks to get from the group |  |
| **x_api_version** | [**APIVersion**](.md) | The version of the API to use for the request | [optional] |

### Return type

[**BookmarkGroupResponse**](BookmarkGroupResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_by_tracking_id

> <ChunkGroupAndFileId> get_group_by_tracking_id(tr_dataset, tracking_id)

Get Group by Tracking ID

Fetch the group with the given tracking id. get_group_by_tracking_id

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = 'tracking_id_example' # String | The tracking id of the group to fetch.

begin
  # Get Group by Tracking ID
  result = api_instance.get_group_by_tracking_id(tr_dataset, tracking_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_group_by_tracking_id: #{e}"
end
```

#### Using the get_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkGroupAndFileId>, Integer, Hash)> get_group_by_tracking_id_with_http_info(tr_dataset, tracking_id)

```ruby
begin
  # Get Group by Tracking ID
  data, status_code, headers = api_instance.get_group_by_tracking_id_with_http_info(tr_dataset, tracking_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkGroupAndFileId>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | The tracking id of the group to fetch. |  |

### Return type

[**ChunkGroupAndFileId**](ChunkGroupAndFileId.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_chunk_is_in

> <Array<BookmarkGroupResponse>> get_groups_chunk_is_in(tr_dataset, get_groups_for_chunks_data)

Get Groups for Chunks

Route to get the groups that a chunk is in.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
get_groups_for_chunks_data = TrieveRubyClient::GetGroupsForChunksData.new({chunk_ids: ['chunk_ids_example']}) # GetGroupsForChunksData | JSON request payload to get the groups that a chunk is in

begin
  # Get Groups for Chunks
  result = api_instance.get_groups_chunk_is_in(tr_dataset, get_groups_for_chunks_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_groups_chunk_is_in: #{e}"
end
```

#### Using the get_groups_chunk_is_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BookmarkGroupResponse>>, Integer, Hash)> get_groups_chunk_is_in_with_http_info(tr_dataset, get_groups_for_chunks_data)

```ruby
begin
  # Get Groups for Chunks
  data, status_code, headers = api_instance.get_groups_chunk_is_in_with_http_info(tr_dataset, get_groups_for_chunks_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BookmarkGroupResponse>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_groups_chunk_is_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **get_groups_for_chunks_data** | [**GetGroupsForChunksData**](GetGroupsForChunksData.md) | JSON request payload to get the groups that a chunk is in |  |

### Return type

[**Array&lt;BookmarkGroupResponse&gt;**](BookmarkGroupResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_groups_for_dataset

> <GroupData> get_groups_for_dataset(tr_dataset, dataset_id, page)

Get Groups for Dataset

Fetch the groups which belong to a dataset specified by its id.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
dataset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the dataset to fetch groups for.
page = 789 # Integer | The page of groups to fetch. Page is 1-indexed.

begin
  # Get Groups for Dataset
  result = api_instance.get_groups_for_dataset(tr_dataset, dataset_id, page)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_groups_for_dataset: #{e}"
end
```

#### Using the get_groups_for_dataset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupData>, Integer, Hash)> get_groups_for_dataset_with_http_info(tr_dataset, dataset_id, page)

```ruby
begin
  # Get Groups for Dataset
  data, status_code, headers = api_instance.get_groups_for_dataset_with_http_info(tr_dataset, dataset_id, page)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupData>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_groups_for_dataset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **dataset_id** | **String** | The id of the dataset to fetch groups for. |  |
| **page** | **Integer** | The page of groups to fetch. Page is 1-indexed. |  |

### Return type

[**GroupData**](GroupData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_recommended_groups

> <RecommendGroupsResponse> get_recommended_groups(tr_dataset, recommend_group_chunks_request, opts)

Get Recommended Groups

Route to get recommended groups. This route will return groups which are similar to the groups in the request body. You must provide at least one positive group id or group tracking id.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
recommend_group_chunks_request = TrieveRubyClient::RecommendGroupChunksRequest.new # RecommendGroupChunksRequest | JSON request payload to get recommendations of chunks similar to the chunks in the request
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Get Recommended Groups
  result = api_instance.get_recommended_groups(tr_dataset, recommend_group_chunks_request, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_recommended_groups: #{e}"
end
```

#### Using the get_recommended_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecommendGroupsResponse>, Integer, Hash)> get_recommended_groups_with_http_info(tr_dataset, recommend_group_chunks_request, opts)

```ruby
begin
  # Get Recommended Groups
  data, status_code, headers = api_instance.get_recommended_groups_with_http_info(tr_dataset, recommend_group_chunks_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecommendGroupsResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_recommended_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **recommend_group_chunks_request** | [**RecommendGroupChunksRequest**](RecommendGroupChunksRequest.md) | JSON request payload to get recommendations of chunks similar to the chunks in the request |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**RecommendGroupsResponse**](RecommendGroupsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_chunk_from_group

> remove_chunk_from_group(tr_dataset, group_id, remove_chunk_from_group_req_payload)

Remove Chunk from Group

Route to remove a chunk from a group. Auth'ed user or api key must be an admin or owner of the dataset's organization to remove a chunk from a group.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group you want to remove the chunk from.
remove_chunk_from_group_req_payload = TrieveRubyClient::RemoveChunkFromGroupReqPayload.new({chunk_id: 'chunk_id_example'}) # RemoveChunkFromGroupReqPayload | JSON request payload to remove a chunk from a group

begin
  # Remove Chunk from Group
  api_instance.remove_chunk_from_group(tr_dataset, group_id, remove_chunk_from_group_req_payload)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->remove_chunk_from_group: #{e}"
end
```

#### Using the remove_chunk_from_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_chunk_from_group_with_http_info(tr_dataset, group_id, remove_chunk_from_group_req_payload)

```ruby
begin
  # Remove Chunk from Group
  data, status_code, headers = api_instance.remove_chunk_from_group_with_http_info(tr_dataset, group_id, remove_chunk_from_group_req_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->remove_chunk_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **group_id** | **String** | Id of the group you want to remove the chunk from. |  |
| **remove_chunk_from_group_req_payload** | [**RemoveChunkFromGroupReqPayload**](RemoveChunkFromGroupReqPayload.md) | JSON request payload to remove a chunk from a group |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_over_groups

> <SearchOverGroupsResponseTypes> search_over_groups(tr_dataset, search_over_groups_data, opts)

Search Over Groups

This route allows you to get groups as results instead of chunks. Each group returned will have the matching chunks sorted by similarity within the group. This is useful for when you want to get groups of chunks which are similar to the search query. If choosing hybrid search, the results will be re-ranked using scores from a cross encoder model. Compatible with semantic, fulltext, or hybrid search modes.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
search_over_groups_data = TrieveRubyClient::SearchOverGroupsData.new({query: 'query_example', search_type: TrieveRubyClient::SearchMethod::FULL_TEXT}) # SearchOverGroupsData | JSON request payload to semantically search over groups
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Search Over Groups
  result = api_instance.search_over_groups(tr_dataset, search_over_groups_data, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->search_over_groups: #{e}"
end
```

#### Using the search_over_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchOverGroupsResponseTypes>, Integer, Hash)> search_over_groups_with_http_info(tr_dataset, search_over_groups_data, opts)

```ruby
begin
  # Search Over Groups
  data, status_code, headers = api_instance.search_over_groups_with_http_info(tr_dataset, search_over_groups_data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchOverGroupsResponseTypes>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->search_over_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **search_over_groups_data** | [**SearchOverGroupsData**](SearchOverGroupsData.md) | JSON request payload to semantically search over groups |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**SearchOverGroupsResponseTypes**](SearchOverGroupsResponseTypes.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_within_group

> <SearchGroupResponseTypes> search_within_group(tr_dataset, search_within_group_data, opts)

Search Within Group

This route allows you to search only within a group. This is useful for when you only want search results to contain chunks which are members of a specific group. If choosing hybrid search, the results will be re-ranked using scores from a cross encoder model.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
search_within_group_data = TrieveRubyClient::SearchWithinGroupData.new({query: 'query_example', search_type: TrieveRubyClient::SearchMethod::FULL_TEXT}) # SearchWithinGroupData | JSON request payload to semantically search a group
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Search Within Group
  result = api_instance.search_within_group(tr_dataset, search_within_group_data, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->search_within_group: #{e}"
end
```

#### Using the search_within_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchGroupResponseTypes>, Integer, Hash)> search_within_group_with_http_info(tr_dataset, search_within_group_data, opts)

```ruby
begin
  # Search Within Group
  data, status_code, headers = api_instance.search_within_group_with_http_info(tr_dataset, search_within_group_data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchGroupResponseTypes>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->search_within_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **search_within_group_data** | [**SearchWithinGroupData**](SearchWithinGroupData.md) | JSON request payload to semantically search a group |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**SearchGroupResponseTypes**](SearchGroupResponseTypes.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_chunk_group

> update_chunk_group(tr_dataset, update_chunk_group_data)

Update Group

Update a chunk_group. If you try to change the tracking_id to one that already exists, this operation will fail. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
update_chunk_group_data = TrieveRubyClient::UpdateChunkGroupData.new # UpdateChunkGroupData | JSON request payload to update a chunkGroup

begin
  # Update Group
  api_instance.update_chunk_group(tr_dataset, update_chunk_group_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->update_chunk_group: #{e}"
end
```

#### Using the update_chunk_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_chunk_group_with_http_info(tr_dataset, update_chunk_group_data)

```ruby
begin
  # Update Group
  data, status_code, headers = api_instance.update_chunk_group_with_http_info(tr_dataset, update_chunk_group_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->update_chunk_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **update_chunk_group_data** | [**UpdateChunkGroupData**](UpdateChunkGroupData.md) | JSON request payload to update a chunkGroup |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_group_by_tracking_id

> update_group_by_tracking_id(tr_dataset, tracking_id, update_group_by_tracking_id_req_payload)

Update Group by Tracking ID

Update a chunk_group with the given tracking id. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Tracking id of the chunk_group to update
update_group_by_tracking_id_req_payload = TrieveRubyClient::UpdateGroupByTrackingIDReqPayload.new({tracking_id: 'tracking_id_example'}) # UpdateGroupByTrackingIDReqPayload | JSON request payload to update a chunkGroup

begin
  # Update Group by Tracking ID
  api_instance.update_group_by_tracking_id(tr_dataset, tracking_id, update_group_by_tracking_id_req_payload)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->update_group_by_tracking_id: #{e}"
end
```

#### Using the update_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, update_group_by_tracking_id_req_payload)

```ruby
begin
  # Update Group by Tracking ID
  data, status_code, headers = api_instance.update_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, update_group_by_tracking_id_req_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->update_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | Tracking id of the chunk_group to update |  |
| **update_group_by_tracking_id_req_payload** | [**UpdateGroupByTrackingIDReqPayload**](UpdateGroupByTrackingIDReqPayload.md) | JSON request payload to update a chunkGroup |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

