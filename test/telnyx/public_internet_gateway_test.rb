# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class PublicInternetGatewayTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
      @public_internet_gateway = PublicInternetGateway.retrieve @id
    end
    should "retrieve public_internet_gateway" do
      assert_requested(:get, "#{Telnyx.api_base}/v2/public_internet_gateways/#{@id}")
      assert_kind_of Telnyx::PublicInternetGateway, @public_internet_gateway
    end

    should "list public_internet_gateways" do
      public_internet_gateway = PublicInternetGateway.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/public_internet_gateways")
      assert_kind_of Telnyx::ListObject, public_internet_gateway
    end

    should "delete public_internet_gateway" do
      id = @public_internet_gateway.id.gsub(/\s+/, "+").freeze
      @public_internet_gateway.delete
      assert_requested(:delete, "#{Telnyx.api_base}/v2/public_internet_gateways/#{id}")
    end
    should "be creatable" do
      PublicInternetGateway.create(name: "internet gateway", network_id: "471b9dec-6aa5-41e5-ad4e-634ba1dcb5ce", region: { code: "example code", name: "region", record_type: "region" })
      assert_requested(:post, "#{Telnyx.api_base}/v2/public_internet_gateways")
    end
  end
end
