=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.5.0
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for TrieveRubyClient::ChunkGroupApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ChunkGroupApi' do
  before do
    # run before each test
    @api_instance = TrieveRubyClient::ChunkGroupApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChunkGroupApi' do
    it 'should create an instance of ChunkGroupApi' do
      expect(@api_instance).to be_instance_of(TrieveRubyClient::ChunkGroupApi)
    end
  end

  # unit tests for add_chunk_to_group
  # Add Chunk to Group
  # Add Chunk to Group  Route to add a chunk to a group.
  # @param tr_dataset The dataset id to use for the request
  # @param group_id Id of the group to add the chunk to as a bookmark
  # @param add_chunk_to_group_data JSON request payload to add a chunk to a group (bookmark it)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_chunk_to_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_chunk_to_group_by_tracking_id
  # Add Chunk to Group by Tracking ID
  # Add Chunk to Group by Tracking ID  Route to add a chunk to a group by tracking id.
  # @param tr_dataset The dataset id to use for the request
  # @param tracking_id Id of the group to add the chunk to as a bookmark
  # @param add_chunk_to_group_data JSON request payload to add a chunk to a group (bookmark it)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_chunk_to_group_by_tracking_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_chunk_group
  # Create Chunk Group
  # Create Chunk Group  Create a new chunk_group. This is a way to group chunks together. If you try to create a chunk_group with the same tracking_id as an existing chunk_group, this operation will fail.
  # @param tr_dataset The dataset id to use for the request
  # @param create_chunk_group_data JSON request payload to cretea a chunkGroup
  # @param [Hash] opts the optional parameters
  # @return [ChunkGroup]
  describe 'create_chunk_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_chunk_group
  # Delete Group
  # Delete Group  This will delete a chunk_group. This will not delete the chunks that are in the group. We will soon support deleting a chunk_group along with its member chunks.
  # @param tr_dataset The dataset id to use for the request
  # @param group_id Id of the group you want to fetch.
  # @param delete_chunks Delete the chunks within the group
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_chunk_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_group_by_tracking_id
  # Delete Group by Tracking ID
  # Delete Group by Tracking ID  Delete a chunk_group with the given tracking id.
  # @param tr_dataset The dataset id to use for the request
  # @param tracking_id Tracking id of the chunk_group to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group_by_tracking_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_chunk_group
  # Get Group
  # Get Group  Fetch the group with the given id. get_group
  # @param tr_dataset The dataset id to use for the request
  # @param group_id Id of the group you want to fetch.
  # @param [Hash] opts the optional parameters
  # @return [ChunkGroup]
  describe 'get_chunk_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_chunks_in_group
  # Get Chunks in Group
  # Get Chunks in Group  Route to get all chunks for a group. The response is paginated, with each page containing 10 chunks. Support for custom page size is coming soon.
  # @param tr_dataset The dataset id to use for the request
  # @param group_id Id of the group you want to fetch.
  # @param page The page of chunks to get from the group
  # @param [Hash] opts the optional parameters
  # @return [BookmarkData]
  describe 'get_chunks_in_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_chunks_in_group_by_tracking_id
  # Get Chunks in Group by Tracking ID
  # Get Chunks in Group by Tracking ID  Route to get all chunks for a group. The response is paginated, with each page containing 10 chunks. Support for custom page size is coming soon.
  # @param tr_dataset The dataset id to use for the request
  # @param group_tracking_id The id of the group to get the chunks from
  # @param page The page of chunks to get from the group
  # @param [Hash] opts the optional parameters
  # @return [BookmarkData]
  describe 'get_chunks_in_group_by_tracking_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_group_by_tracking_id
  # Get Group by Tracking ID
  # Get Group by Tracking ID  Fetch the group with the given tracking id. get_group_by_tracking_id
  # @param tr_dataset The dataset id to use for the request
  # @param tracking_id The tracking id of the group to fetch.
  # @param [Hash] opts the optional parameters
  # @return [ChunkGroup]
  describe 'get_group_by_tracking_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_groups_chunk_is_in
  # Get Groups for Chunks
  # Get Groups for Chunks  Route to get the groups that a chunk is in.
  # @param tr_dataset The dataset id to use for the request
  # @param get_groups_for_chunks_data JSON request payload to get the groups that a chunk is in
  # @param [Hash] opts the optional parameters
  # @return [Array<BookmarkGroupResult>]
  describe 'get_groups_chunk_is_in test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_recommended_groups
  # Get Recommended Groups
  # Get Recommended Groups  Route to get recommended groups. This route will return groups which are similar to the groups in the request body.
  # @param tr_dataset The dataset id to use for the request
  # @param reccomend_group_chunks_request JSON request payload to get recommendations of chunks similar to the chunks in the request
  # @param [Hash] opts the optional parameters
  # @return [Array<GroupScoreChunkDTO>]
  describe 'get_recommended_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_specific_dataset_chunk_groups
  # Get Groups for Dataset
  # Get Groups for Dataset  Fetch the groups which belong to a dataset specified by its id.
  # @param tr_dataset The dataset id to use for the request
  # @param dataset_id The id of the dataset to fetch groups for.
  # @param page The page of groups to fetch. Each page contains 10 groups. Support for custom page size is coming soon.
  # @param [Hash] opts the optional parameters
  # @return [GroupData]
  describe 'get_specific_dataset_chunk_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for remove_chunk_from_group
  # Remove Chunk from Group
  # Remove Chunk from Group  Route to remove a chunk from a group.
  # @param tr_dataset The dataset id to use for the request
  # @param group_id Id of the group to remove the bookmark&#39;ed chunk from
  # @param create_chunk_group_data JSON request payload to cretea a chunkGroup
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_chunk_from_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_over_groups
  # Search Over Groups
  # Search Over Groups  This route allows you to get groups as results instead of chunks. Each group returned will have the matching chunks sorted by similarity within the group. This is useful for when you want to get groups of chunks which are similar to the search query. If choosing hybrid search, the results will be re-ranked using BAAI/bge-reranker-large. Compatible with semantic, fulltext, or hybrid search modes.
  # @param search_over_groups_data JSON request payload to semantically search over groups
  # @param [Hash] opts the optional parameters
  # @return [SearchOverGroupsResponseBody]
  describe 'search_over_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_within_group
  # Search Within Group
  # Search Within Group  This route allows you to search only within a group. This is useful for when you only want search results to contain chunks which are members of a specific group. If choosing hybrid search, the results will be re-ranked using BAAI/bge-reranker-large.
  # @param tr_dataset The dataset id to use for the request
  # @param search_within_group_data JSON request payload to semantically search a group
  # @param [Hash] opts the optional parameters
  # @return [SearchGroupsResult]
  describe 'search_within_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_chunk_group
  # Update Group
  # Update Group  Update a chunk_group. If you try to change the tracking_id to one that already exists, this operation will fail.
  # @param tr_dataset The dataset id to use for the request
  # @param update_chunk_group_data JSON request payload to update a chunkGroup
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_chunk_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_group_by_tracking_id
  # Update Group by Tracking ID
  # Update Group by Tracking ID  Update a chunk_group with the given tracking id.
  # @param tr_dataset The dataset id to use for the request
  # @param tracking_id Tracking id of the chunk_group to update
  # @param update_group_by_tracking_id_data JSON request payload to update a chunkGroup
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_group_by_tracking_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
