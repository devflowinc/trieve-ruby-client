# TrieveRubyClient::ChunkReqPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **boost_phrase** | [**BoostPhrase**](BoostPhrase.md) |  | [optional] |
| **chunk_html** | **String** | HTML content of the chunk. This can also be plaintext. The innerText of the HTML will be used to create the embedding vector. The point of using HTML is for convienience, as some users have applications where users submit HTML content. | [optional] |
| **convert_html_to_text** | **Boolean** | Convert HTML to raw text before processing to avoid adding noise to the vector embeddings. By default this is true. If you are using HTML content that you want to be included in the vector embeddings, set this to false. | [optional] |
| **distance_phrase** | [**DistancePhrase**](DistancePhrase.md) |  | [optional] |
| **group_ids** | **Array&lt;String&gt;** | Group ids are the ids of the groups that the chunk should be placed into. This is useful for when you want to create a chunk and add it to a group or multiple groups in one request. Necessary because this route queues the chunk for ingestion and the chunk may not exist yet immediately after response. | [optional] |
| **group_tracking_ids** | **Array&lt;String&gt;** | Group tracking_ids are the tracking_ids of the groups that the chunk should be placed into. This is useful for when you want to create a chunk and add it to a group or multiple groups in one request. Necessary because this route queues the chunk for ingestion and the chunk may not exist yet immediately after response. | [optional] |
| **image_urls** | **Array&lt;String&gt;** | Image urls are a list of urls to images that are associated with the chunk. This is useful for when you want to associate images with a chunk. | [optional] |
| **link** | **String** | Link to the chunk. This can also be any string. Frequently, this is a link to the source of the chunk. The link value will not affect the embedding creation. | [optional] |
| **location** | [**GeoInfo**](GeoInfo.md) |  | [optional] |
| **metadata** | **Object** | Metadata is a JSON object which can be used to filter chunks. This is useful for when you want to filter chunks by arbitrary metadata. Unlike with tag filtering, there is a performance hit for filtering on metadata. | [optional] |
| **num_value** | **Float** | Num value is an arbitrary numerical value that can be used to filter chunks. This is useful for when you want to filter chunks by numerical value. There is no performance hit for filtering on num_value. | [optional] |
| **split_avg** | **Boolean** | Split avg is a boolean which tells the server to split the text in the chunk_html into smaller chunks and average their resulting vectors. This is useful for when you want to create a chunk from a large piece of text and want to split it into smaller chunks to create a more fuzzy average dense vector. The sparse vector will be generated normally with no averaging. By default this is false. | [optional] |
| **tag_set** | **Array&lt;String&gt;** | Tag set is a list of tags. This can be used to filter chunks by tag. Unlike with metadata filtering, HNSW indices will exist for each tag such that there is not a performance hit for filtering on them. | [optional] |
| **time_stamp** | **String** | Time_stamp should be an ISO 8601 combined date and time without timezone. It is used for time window filtering and recency-biasing search results. | [optional] |
| **tracking_id** | **String** | Tracking_id is a string which can be used to identify a chunk. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk. | [optional] |
| **upsert_by_tracking_id** | **Boolean** | Upsert when a chunk with the same tracking_id exists. By default this is false, and the request will fail if a chunk with the same tracking_id exists. If this is true, the chunk will be updated if a chunk with the same tracking_id exists. | [optional] |
| **weight** | **Float** | Weight is a float which can be used to bias search results. This is useful for when you want to bias search results for a chunk. The magnitude only matters relative to other chunks in the chunk&#39;s dataset dataset. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::ChunkReqPayload.new(
  boost_phrase: null,
  chunk_html: null,
  convert_html_to_text: null,
  distance_phrase: null,
  group_ids: null,
  group_tracking_ids: null,
  image_urls: null,
  link: null,
  location: null,
  metadata: null,
  num_value: null,
  split_avg: null,
  tag_set: null,
  time_stamp: null,
  tracking_id: null,
  upsert_by_tracking_id: null,
  weight: null
)
```

