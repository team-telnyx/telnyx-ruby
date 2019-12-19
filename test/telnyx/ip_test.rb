
# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class IpTest < Test::Unit::TestCase
    should "be retrievable" do
      ip = Ip.retrieve "12345"
      assert_requested :get, "#{Telnyx.api_base}/v2/ips/12345"
      assert_kind_of Ip, ip
    end

    should "be creatable" do
      ip = Ip.create(ip_address: "0.0.0.0")
      assert_requested :post, "#{Telnyx.api_base}/v2/ips"
      assert_kind_of Ip, ip
    end

    should "be listable" do
      ips = Ip.list
      assert_requested :get, "#{Telnyx.api_base}/v2/ips"
      assert_kind_of Array, ips.data
      assert_kind_of Ip, ips.first
    end

    should "be saveable" do
      ip = Ip.retrieve("12345")
      ip.ip_address = "0.0.0.0"
      ip.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/ips/#{ip.id}"
      assert_kind_of Ip, ip
    end

    should "be deletable" do
      ip = Ip.retrieve("12345")
      ip = ip.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/ips/#{ip.id}"
      assert_kind_of Ip, ip
    end
  end
end
