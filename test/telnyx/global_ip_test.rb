# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class GlobalIpTest < Test::Unit::TestCase
    setup do
      @id = "70308070-fb3c-32ee-0a59-ce012cd4840d"
    end
    should "list ips" do
      global_ip = GlobalIp.list
      assert_requested :get, "#{Telnyx.api_base}/v2/global_ips"
      assert_kind_of ListObject, global_ip
      assert_kind_of TelnyxObject, global_ip.first
    end

    should "create global_ip" do
      GlobalIp.create global_ip_address: "0.0.0.0"
      assert_requested :post, "#{Telnyx.api_base}/v2/global_ips"
    end

    should "retrieve global_ip" do
      global_ip = GlobalIp.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/global_ips/#{@id}"
      assert_kind_of GlobalIp, global_ip
    end

    should "delete global_ip" do
      global_ip = GlobalIp.retrieve(@id)
      id = global_ip.id.freeze
      global_ip.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/global_ips/#{id}"
    end
  end
end
