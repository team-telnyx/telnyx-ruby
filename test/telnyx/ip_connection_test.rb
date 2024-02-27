# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class IPConnectionTest < Test::Unit::TestCase
    setup do
      @id = "qui"
    end
    should "list ip connections" do
      ip_connections = IPConnection.list
      assert_requested :get, "#{Telnyx.api_base}/v2/ip_connections"
      assert_kind_of ListObject, ip_connections
      assert_kind_of TelnyxObject, ip_connections.first
    end

    should "create ip connection" do
      IPConnection.create
      assert_requested :post, "#{Telnyx.api_base}/v2/ip_connections"
    end

    should "retrieve ip connection" do
      ip_connection = IPConnection.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/ip_connections/#{@id}"
      assert_kind_of IPConnection, ip_connection
    end

    should "delete ip connection" do
      ip_connection = IPConnection.retrieve(@id)
      id = ip_connection.id.gsub(/\s+/, "+").freeze
      ip_connection.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/ip_connections/#{id}"
    end

    should "update ip connection" do
      ip_connection = IPConnection.retrieve(@id)

      ip_connection.active = false
      id = ip_connection.id.gsub(/\s+/, "+").freeze
      ip_connection.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/ip_connections/#{id}"
    end
  end
end
