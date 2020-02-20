# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class IPTest < Test::Unit::TestCase
    should "list ips" do
      ip = IP.list
      assert_requested :get, "#{Telnyx.api_base}/v2/ips"
      assert_kind_of ListObject, ip
      assert_kind_of IP, ip.first
    end

    should "create ip" do
      IP.create ip_address: "0.0.0.0"
      assert_requested :post, "#{Telnyx.api_base}/v2/ips"
    end

    should "retrieve ip" do
      ip = IP.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/ips/id"
      assert_kind_of IP, ip
    end

    should "delete ip" do
      ip = IP.retrieve("id")

      ip.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/ips/id"
    end

    should "update ip" do
      ip = IP.retrieve("id")

      ip.ip_address = "0.0.0.0"
      ip.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/ips/id"
    end
  end
end
