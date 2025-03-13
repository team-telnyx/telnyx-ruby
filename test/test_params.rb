require 'bundler/setup'
require 'telnyx'

# Set a dummy API key
Telnyx.api_key = 'TEST_API_KEY'

# Monkey patch the request method to capture parameters without making API calls
module Telnyx
  module APIOperations
    module Request
      module ClassMethods
        alias original_request request
        
        def request(method, url, params = {}, opts = {})
          puts "Method: #{method}"
          puts "URL: #{url}"
          puts "Raw params: #{params.inspect}"
          
          if method.to_s.downcase.to_sym == :get
            puts "URL-encoded params: #{Telnyx::Util.encode_parameters(params)}"
          else
            puts "JSON body: #{JSON.generate(params)}"
          end
          
          # Return a mock response
          mock_response = Struct.new(:data).new({data: []})
          [mock_response, {}]
        end
      end
    end
  end
end

# Test with the parameters from the example
puts "\n=== Testing with filter hash ==="
response = Telnyx::AvailablePhoneNumber.list(
  filter: {
    country_code: "US",
    limit: 1,
    national_destination_code: "206",
    phone_number: { starts_with: "4532888" }
  }
)

puts "\n=== Testing with direct parameters ==="
response = Telnyx::AvailablePhoneNumber.list(
  country_code: "US",
  limit: 1,
  national_destination_code: "206",
  phone_number: { starts_with: "4532888" }
)