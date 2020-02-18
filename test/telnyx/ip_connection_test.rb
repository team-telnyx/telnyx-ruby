
# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class IpConnectionTest < Test::Unit::TestCase
    should "be retrievable" do
      ip_connection = IpConnection.retrieve "12345"
      assert_requested :get, "#{Telnyx.api_base}/v2/ip_connections/12345"
      assert_kind_of IpConnection, ip_connection
    end

    should "be creatable" do
      ip_connection = IpConnection.create(ip_address: "0.0.0.0")
      assert_requested :post, "#{Telnyx.api_base}/v2/ip_connections"
      assert_kind_of IpConnection, ip_connection
    end

    should "be listable" do
      ip_connections = IpConnection.list
      assert_requested :get, "#{Telnyx.api_base}/v2/ip_connections"
      assert_kind_of Array, ip_connections.data
      assert_kind_of IpConnection, ip_connections.first
    end

    should "be saveable" do
      ip_connection = IpConnection.retrieve("12345")
      ip_connection.ip_address = "0.0.0.0"
      ip_connection.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/ip_connections/#{ip_connection.id}"
      assert_kind_of IpConnection, ip_connection
    end

    should "be deletable" do
      ip_connection = IpConnection.retrieve("12345")
      ip_connection = ip_connection.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/ip_connections/#{ip_connection.id}"
      assert_kind_of IpConnection, ip_connection
    end
  end
end
