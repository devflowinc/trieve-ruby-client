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

# Unit tests for TrieveRubyClient::FileApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FileApi' do
  before do
    # run before each test
    @api_instance = TrieveRubyClient::FileApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FileApi' do
    it 'should create an instance of FileApi' do
      expect(@api_instance).to be_instance_of(TrieveRubyClient::FileApi)
    end
  end

  # unit tests for delete_file_handler
  # Delete File
  # Delete File  Delete a file from S3 attached to the server based on its id. This will disassociate chunks from the file, but will not delete the chunks. We plan to add support for deleting chunks in a release soon. Auth&#39;ed user must be an admin or owner of the dataset&#39;s organization to upload a file.
  # @param tr_dataset The dataset id to use for the request
  # @param file_id The id of the file to delete
  # @param delete_chunks Whether or not to delete the chunks associated with the file
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_file_handler test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_dataset_files_handler
  # Get Files for Dataset
  # Get Files for Dataset  Get all files which belong to a given dataset specified by the dataset_id parameter. 10 files are returned per page.
  # @param tr_dataset The dataset id to use for the request
  # @param dataset_id The id of the dataset to fetch files for.
  # @param page The page number of files you wish to fetch. Each page contains at most 10 files.
  # @param [Hash] opts the optional parameters
  # @return [Array<File>]
  describe 'get_dataset_files_handler test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_file_handler
  # Get File
  # Get File  Download a file from S3 attached to the server based on its id. We plan to add support for getting signed S3 URLs to download from S3 directly in a release soon.
  # @param tr_dataset The dataset id to use for the request
  # @param file_id The id of the file to fetch
  # @param [Hash] opts the optional parameters
  # @return [FileDTO]
  describe 'get_file_handler test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for upload_file_handler
  # Upload File
  # Upload File  Upload a file to S3 attached to the server. The file will be converted to HTML with tika and chunked algorithmically, images will be OCR&#39;ed with tesseract. The resulting chunks will be indexed and searchable. Optionally, you can only upload the file and manually create chunks associated to the file after. See docs.trieve.ai and/or contact us for more details and tips. Auth&#39;ed user must be an admin or owner of the dataset&#39;s organization to upload a file.
  # @param tr_dataset The dataset id to use for the request
  # @param upload_file_data JSON request payload to upload a file
  # @param [Hash] opts the optional parameters
  # @return [UploadFileResult]
  describe 'upload_file_handler test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
