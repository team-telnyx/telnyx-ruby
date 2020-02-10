# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class ConnectionTest < Test::Unit::TestCase
    should "list connections" do
      connections = Connection.list
      assert_requested :get, "#{Telnyx.api_base}/v2/connections"
      assert_kind_of ListObject, connections
      assert connections.first.is_a?(Connection) ||
             connections.first.is_a?(IPConnection) ||
             connections.first.is_a?(FQDNConnection) ||
             connections.first.is_a?(CredentialConnection),
             "Unexpected type: #{connections.first.class}"
    end

    should "retrieve a connection" do
      connection = Connection.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/connections/id"
      assert connection.is_a?(Connection) ||
             connection.is_a?(IPConnection) ||
             connection.is_a?(FQDNConnection) ||
             connection.is_a?(CredentialConnection),
             "Unexpected type: #{connection.class}"
    end
  end
end
