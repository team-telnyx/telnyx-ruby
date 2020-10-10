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
require ::File.expand_path("../telnyx_mock", __FILE__)

# If changing this number, please also change it in `.travis.yml`.
MOCK_MINIMUM_VERSION = "0.8.10".freeze
MOCK_PORT = Telnyx::TelnyxMock.start

# Disable all real network connections except those that are outgoing to
# telnyx-mock.
WebMock.disable_net_connect!(allow: "localhost:#{MOCK_PORT}")

# Try one initial test connection to telnyx-mock so that if there's a problem
# we can print one error and fail fast so that it's more clear to the user how
# they should fix the problem.
begin
  conn = Faraday::Connection.new("http://localhost:#{MOCK_PORT}")
  resp = conn.get("/")
  version = resp.headers["Telnyx-Mock-Version"]
  if version != "master" &&
     Gem::Version.new(version) < Gem::Version.new(MOCK_MINIMUM_VERSION)
    abort("Your version of telnyx-mock (#{version}) is too old. The minimum " \
      "version to run this test suite is #{MOCK_MINIMUM_VERSION}. Please " \
      "see its repository for upgrade instructions.")
  end
rescue Faraday::ConnectionFailed
  abort("Couldn't reach telnyx-mock at `localhost:#{MOCK_PORT}`. Is " \
    "it running? Please see README for setup instructions.")
end

Test::Unit.at_exit do
  Telnyx::TelnyxMock.stop
end

module Test
  module Unit
    class TestCase
      include Telnyx::TestData
      include Mocha

      setup do
        Telnyx.api_key = "KEYSUPERSECRET" # mock server expects this exact string
        Telnyx.api_base = "http://localhost:#{MOCK_PORT}"

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
