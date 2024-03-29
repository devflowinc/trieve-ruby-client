# TrieveRubyClient::UpdateChunkGroupData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description to assign to the chunk_group. Convenience field for you to avoid having to remember what the group is for. If not provided, the description will not be updated. | [optional] |
| **group_id** | **String** | Id of the chunk_group to update. | [optional] |
| **name** | **String** | Name to assign to the chunk_group. Does not need to be unique. If not provided, the name will not be updated. | [optional] |
| **tracking_id** | **String** | Tracking Id of the chunk_group to update. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::UpdateChunkGroupData.new(
  description: null,
  group_id: null,
  name: null,
  tracking_id: null
)
```

