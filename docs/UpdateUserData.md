# TrieveRubyClient::UpdateUserData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | In the sense of a legal name, not a username. The new name to assign to the user, if not provided, the current name will be used. | [optional] |
| **organization_id** | **String** | The id of the organization to update the user for. |  |
| **role** | **Integer** | Either 0 (user), 1 (admin), or 2 (owner). If not provided, the current role will be used. The auth&#39;ed user must have a role greater than or equal to the role being assigned. | [optional] |
| **user_id** | **String** | The id of the user to update, if not provided, the auth&#39;ed user will be updated. If provided, the auth&#39;ed user must be an admin (1) or owner (2) of the organization. | [optional] |
| **username** | **String** | The new username to assign to the user, if not provided, the current username will be used. | [optional] |
| **visible_email** | **Boolean** | Determines if the user&#39;s email is visible to other users, if not provided, the current value will be used. | [optional] |
| **website** | **String** | The new website to assign to the user, if not provided, the current website will be used. Used for linking to the user&#39;s personal or company website. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::UpdateUserData.new(
  name: null,
  organization_id: null,
  role: null,
  user_id: null,
  username: null,
  visible_email: null,
  website: null
)
```

