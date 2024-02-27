# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class PrivateWirelessGatewayTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
      @private_wireless_gateway = PrivateWirelessGateway.retrieve @id
    end
    should "retrieve private_wireless_gateway" do
      assert_requested(:get, "#{Telnyx.api_base}/v2/private_wireless_gateways/#{@id}")
      assert_kind_of Telnyx::PrivateWirelessGateway, @private_wireless_gateway
    end

    should "list private_wireless_gateways" do
      private_wireless_gateway = PrivateWirelessGateway.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/private_wireless_gateways")
      assert_kind_of Telnyx::ListObject, private_wireless_gateway
    end

    should "delete private_wireless_gateway" do
      id = @private_wireless_gateway.id.gsub(/\s+/, "+").freeze
      @private_wireless_gateway.delete
      assert_requested(:delete, "#{Telnyx.api_base}/v2/private_wireless_gateways/#{id}")
    end
    should "be creatable" do
      PrivateWirelessGateway.create(name: "internet gateway", network_id: "471b9dec-6aa5-41e5-ad4e-634ba1dcb5ce", region: { code: "example code", name: "region", record_type: "region" })
      assert_requested(:post, "#{Telnyx.api_base}/v2/private_wireless_gateways")
    end
  end
end
