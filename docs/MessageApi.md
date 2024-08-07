# TrieveRubyClient::MessageApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_message**](MessageApi.md#create_message) | **POST** /api/message | Create message |
| [**edit_message**](MessageApi.md#edit_message) | **PUT** /api/message | Edit message |
| [**get_all_topic_messages**](MessageApi.md#get_all_topic_messages) | **GET** /api/messages/{messages_topic_id} | Get all messages for a given topic |
| [**regenerate_message**](MessageApi.md#regenerate_message) | **DELETE** /api/message | Regenerate message |


## create_message

> String create_message(tr_dataset, create_message_req_payload)

Create message

Create message. Messages are attached to topics in order to coordinate memory of gen-AI chat sessions.Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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

api_instance = TrieveRubyClient::MessageApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
create_message_req_payload = TrieveRubyClient::CreateMessageReqPayload.new({new_message_content: 'new_message_content_example', topic_id: 'topic_id_example'}) # CreateMessageReqPayload | JSON request payload to create a message completion

begin
  # Create message
  result = api_instance.create_message(tr_dataset, create_message_req_payload)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MessageApi->create_message: #{e}"
end
```

#### Using the create_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> create_message_with_http_info(tr_dataset, create_message_req_payload)

```ruby
begin
  # Create message
  data, status_code, headers = api_instance.create_message_with_http_info(tr_dataset, create_message_req_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MessageApi->create_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **create_message_req_payload** | [**CreateMessageReqPayload**](CreateMessageReqPayload.md) | JSON request payload to create a message completion |  |

### Return type

**String**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json


## edit_message

> edit_message(tr_dataset, edit_message_req_payload)

Edit message

Edit message which exists within the topic's chat history. This will delete the message and replace it with a new message. The new message will be generated by the AI based on the new content provided in the request body. The response will include Chunks first on the stream if the topic is using RAG. The structure will look like `[chunks]||mesage`. See docs.trieve.ai for more information. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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

api_instance = TrieveRubyClient::MessageApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
edit_message_req_payload = TrieveRubyClient::EditMessageReqPayload.new({message_sort_order: 37, new_message_content: 'new_message_content_example', topic_id: 'topic_id_example'}) # EditMessageReqPayload | JSON request payload to edit a message and get a new stream

begin
  # Edit message
  api_instance.edit_message(tr_dataset, edit_message_req_payload)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MessageApi->edit_message: #{e}"
end
```

#### Using the edit_message_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> edit_message_with_http_info(tr_dataset, edit_message_req_payload)

```ruby
begin
  # Edit message
  data, status_code, headers = api_instance.edit_message_with_http_info(tr_dataset, edit_message_req_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MessageApi->edit_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **edit_message_req_payload** | [**EditMessageReqPayload**](EditMessageReqPayload.md) | JSON request payload to edit a message and get a new stream |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_topic_messages

> <Array<Message>> get_all_topic_messages(tr_dataset, messages_topic_id)

Get all messages for a given topic

Get all messages for a given topic. If the topic is a RAG topic then the response will include Chunks first on each message. The structure will look like `[chunks]||mesage`. See docs.trieve.ai for more information.

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

api_instance = TrieveRubyClient::MessageApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
messages_topic_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the topic to get messages for.

begin
  # Get all messages for a given topic
  result = api_instance.get_all_topic_messages(tr_dataset, messages_topic_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MessageApi->get_all_topic_messages: #{e}"
end
```

#### Using the get_all_topic_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Message>>, Integer, Hash)> get_all_topic_messages_with_http_info(tr_dataset, messages_topic_id)

```ruby
begin
  # Get all messages for a given topic
  data, status_code, headers = api_instance.get_all_topic_messages_with_http_info(tr_dataset, messages_topic_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Message>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MessageApi->get_all_topic_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **messages_topic_id** | **String** | The ID of the topic to get messages for. |  |

### Return type

[**Array&lt;Message&gt;**](Message.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## regenerate_message

> String regenerate_message(tr_dataset, regenerate_message_req_payload)

Regenerate message

Regenerate the assistant response to the last user message of a topic. This will delete the last message and replace it with a new message. The response will include Chunks first on the stream if the topic is using RAG. The structure will look like `[chunks]||mesage`. See docs.trieve.ai for more information. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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

api_instance = TrieveRubyClient::MessageApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
regenerate_message_req_payload = TrieveRubyClient::RegenerateMessageReqPayload.new({topic_id: 'topic_id_example'}) # RegenerateMessageReqPayload | JSON request payload to delete an agent message then regenerate it in a strem

begin
  # Regenerate message
  result = api_instance.regenerate_message(tr_dataset, regenerate_message_req_payload)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MessageApi->regenerate_message: #{e}"
end
```

#### Using the regenerate_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> regenerate_message_with_http_info(tr_dataset, regenerate_message_req_payload)

```ruby
begin
  # Regenerate message
  data, status_code, headers = api_instance.regenerate_message_with_http_info(tr_dataset, regenerate_message_req_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MessageApi->regenerate_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **regenerate_message_req_payload** | [**RegenerateMessageReqPayload**](RegenerateMessageReqPayload.md) | JSON request payload to delete an agent message then regenerate it in a strem |  |

### Return type

**String**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json

