# frozen_string_literal: true

require "coveralls"
Coveralls.wear!("test_frameworks")

require "telnyx"
require "test/unit"
require "mocha/setup"
require "stringio"
require "shoulda/context"
require "timecop"
require "webmock/test_unit"

PROJECT_ROOT = ::File.expand_path("../../", __FILE__)

require ::File.expand_path("../test_data", __FILE__)

# Set up Proxy server configuration
PROXY_PORT = 12111 # Port where your proxy server is running
PROXY_HOST = "localhost"
PROXY_BASE_URL = "http://#{PROXY_HOST}:#{PROXY_PORT}".freeze

# Disable all real network connections except those that are outgoing to
# the Proxy server.
WebMock.disable_net_connect!(allow: "#{PROXY_HOST}:#{PROXY_PORT}")

# You can remove the Telnyx mock setup as it's not needed for Prism

Test::Unit.at_exit do
  # Clean up actions for Proxy if required
end

module Test
  module Unit
    class TestCase
      include Telnyx::TestData
      include Mocha

      setup do
        Telnyx.api_key = "KEYSUPERSECRET" # Set your desired API key or the one expected by the proxy/Prism
        Telnyx.api_base = PROXY_BASE_URL # Use Proxy's base URL

        # stub_connect
      end

      teardown do
        Telnyx.api_key = nil
      end

      private

      def stub_connect
        stub_request(:any, /^#{Telnyx.api_base}/).to_return(body: "{}")
      end
    end
  end
end
