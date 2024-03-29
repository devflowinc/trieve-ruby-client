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

# Unit tests for TrieveRubyClient::HealthApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HealthApi' do
  before do
    # run before each test
    @api_instance = TrieveRubyClient::HealthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HealthApi' do
    it 'should create an instance of HealthApi' do
      expect(@api_instance).to be_instance_of(TrieveRubyClient::HealthApi)
    end
  end

  # unit tests for health_check
  # Health Check
  # Health Check  Confirmation that the service is healthy and can make embedding vectors
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'health_check test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
