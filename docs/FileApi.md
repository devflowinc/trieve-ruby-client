# TrieveRubyClient::FileApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_file_handler**](FileApi.md#delete_file_handler) | **DELETE** /api/file/{file_id} | Delete File |
| [**get_dataset_files_handler**](FileApi.md#get_dataset_files_handler) | **GET** /api/dataset/files/{dataset_id}/{page} | Get Files for Dataset |
| [**get_file_handler**](FileApi.md#get_file_handler) | **GET** /api/file/{file_id} | Get File |
| [**upload_file_handler**](FileApi.md#upload_file_handler) | **POST** /api/file | Upload File |


## delete_file_handler

> delete_file_handler(tr_dataset, file_id)

Delete File

Delete a file from S3 attached to the server based on its id. This will disassociate chunks from the file, but only delete them all together if you specify delete_chunks to be true. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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

api_instance = TrieveRubyClient::FileApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
file_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the file to delete

begin
  # Delete File
  api_instance.delete_file_handler(tr_dataset, file_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling FileApi->delete_file_handler: #{e}"
end
```

#### Using the delete_file_handler_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_file_handler_with_http_info(tr_dataset, file_id)

```ruby
begin
  # Delete File
  data, status_code, headers = api_instance.delete_file_handler_with_http_info(tr_dataset, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling FileApi->delete_file_handler_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **file_id** | **String** | The id of the file to delete |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dataset_files_handler

> Array&lt;File&gt; get_dataset_files_handler(tr_dataset, dataset_id, page)

Get Files for Dataset

Get all files which belong to a given dataset specified by the dataset_id parameter. 10 files are returned per page.

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

api_instance = TrieveRubyClient::FileApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
dataset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the dataset to fetch files for.
page = 789 # Integer | The page number of files you wish to fetch. Each page contains at most 10 files.

begin
  # Get Files for Dataset
  result = api_instance.get_dataset_files_handler(tr_dataset, dataset_id, page)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling FileApi->get_dataset_files_handler: #{e}"
end
```

#### Using the get_dataset_files_handler_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;File&gt;, Integer, Hash)> get_dataset_files_handler_with_http_info(tr_dataset, dataset_id, page)

```ruby
begin
  # Get Files for Dataset
  data, status_code, headers = api_instance.get_dataset_files_handler_with_http_info(tr_dataset, dataset_id, page)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;File&gt;
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling FileApi->get_dataset_files_handler_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **dataset_id** | **String** | The id of the dataset to fetch files for. |  |
| **page** | **Integer** | The page number of files you wish to fetch. Each page contains at most 10 files. |  |

### Return type

**Array&lt;File&gt;**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_handler

> <FileDTO> get_file_handler(tr_dataset, file_id)

Get File

Download a file based on its id.

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

api_instance = TrieveRubyClient::FileApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
file_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the file to fetch

begin
  # Get File
  result = api_instance.get_file_handler(tr_dataset, file_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling FileApi->get_file_handler: #{e}"
end
```

#### Using the get_file_handler_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDTO>, Integer, Hash)> get_file_handler_with_http_info(tr_dataset, file_id)

```ruby
begin
  # Get File
  data, status_code, headers = api_instance.get_file_handler_with_http_info(tr_dataset, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDTO>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling FileApi->get_file_handler_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **file_id** | **String** | The id of the file to fetch |  |

### Return type

[**FileDTO**](FileDTO.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_file_handler

> <UploadFileResult> upload_file_handler(tr_dataset, upload_file_req_payload)

Upload File

Upload a file to S3 attached to the server. The file will be converted to HTML with tika and chunked algorithmically, images will be OCR'ed with tesseract. The resulting chunks will be indexed and searchable. Optionally, you can only upload the file and manually create chunks associated to the file after. See docs.trieve.ai and/or contact us for more details and tips. Auth'ed user must be an admin or owner of the dataset's organization to upload a file.

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

api_instance = TrieveRubyClient::FileApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
upload_file_req_payload = TrieveRubyClient::UploadFileReqPayload.new({base64_file: 'base64_file_example', file_name: 'file_name_example'}) # UploadFileReqPayload | JSON request payload to upload a file

begin
  # Upload File
  result = api_instance.upload_file_handler(tr_dataset, upload_file_req_payload)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling FileApi->upload_file_handler: #{e}"
end
```

#### Using the upload_file_handler_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadFileResult>, Integer, Hash)> upload_file_handler_with_http_info(tr_dataset, upload_file_req_payload)

```ruby
begin
  # Upload File
  data, status_code, headers = api_instance.upload_file_handler_with_http_info(tr_dataset, upload_file_req_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadFileResult>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling FileApi->upload_file_handler_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **upload_file_req_payload** | [**UploadFileReqPayload**](UploadFileReqPayload.md) | JSON request payload to upload a file |  |

### Return type

[**UploadFileResult**](UploadFileResult.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

