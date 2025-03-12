# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class ParamWrapperTest < Test::Unit::TestCase
    class TestResource < APIResource
      extend Telnyx::APIOperations::List
      extend Telnyx::APIOperations::ParamWrapper
      wrap "list", "filter"
      
      OBJECT_NAME = "test_resource"
      
      # Override request to avoid actual API calls
      def self.request(method, url, params = {}, opts = {})
        # Store the parameters for verification
        @@last_request_params = params
        
        # Return a mock response
        resp = Struct.new(:data).new({ data: [] })
        [resp, {}]
      end
      
      # Method to retrieve the last request parameters
      def self.last_request_params
        @@last_request_params
      end
    end
    
    context ".list" do
      should "correctly handle parameters when filter is explicitly provided" do
        params = {
          filter: {
            country_code: "US",
            limit: 1,
            phone_number: { starts_with: "123" }
          }
        }
        
        TestResource.list(params)
        
        # Verify the parameters were passed correctly - note that keys may be strings or symbols
        params = TestResource.last_request_params
        
        # Convert all keys to symbols for consistent comparison
        params_with_symbol_keys = {}
        params.each do |k, v|
          params_with_symbol_keys[k.to_sym] = v
        end
        
        assert_equal(
          { filter: { country_code: "US", limit: 1, phone_number: { starts_with: "123" } } },
          params_with_symbol_keys
        )
      end
      
      should "correctly wrap parameters when filter is not explicitly provided" do
        params = {
          country_code: "US",
          limit: 1,
          phone_number: { starts_with: "123" }
        }
        
        TestResource.list(params)
        
        # Verify the parameters were wrapped correctly - note that keys may be strings or symbols
        params = TestResource.last_request_params
        
        # Convert all keys to symbols for consistent comparison
        params_with_symbol_keys = {}
        params.each do |k, v|
          params_with_symbol_keys[k.to_sym] = v
        end
        
        assert_equal(
          { filter: { country_code: "US", limit: 1, phone_number: { starts_with: "123" } } },
          params_with_symbol_keys
        )
      end
    end
  end
end