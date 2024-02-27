# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class VirtualCrossConnectTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
      @virtual_cross_connect = VirtualCrossConnect.retrieve @id
    end
    should "be retrievable" do
      assert_requested(:get, "#{Telnyx.api_base}/v2/virtual_cross_connects/#{@id}")
      assert_kind_of VirtualCrossConnect, @virtual_cross_connect
    end

    should "be listable" do
      virtual_cross_connects = VirtualCrossConnect.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/virtual_cross_connects")
      assert_kind_of Telnyx::ListObject, virtual_cross_connects
    end

    should "be updatable" do
      @virtual_cross_connect.name = "new name"
      id = @virtual_cross_connect.id.freeze
      @virtual_cross_connect.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/virtual_cross_connects/#{id}"
    end

    should "be deletable" do
      id = @virtual_cross_connect.id.freeze
      @virtual_cross_connect.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/virtual_cross_connects/#{id}"
    end

    should "be creatable" do
      VirtualCrossConnect.create(name: "virtual_cross_connect", network_id: "d25f43b3-aea3-6a5d-7a1b-d83e5c100cc7", region_code: "labore", cloud_provider: "aws", cloud_region: "xyx", bgp_asn: -14_361_653.993494183, primary_cloud_account_id: "test")
      assert_requested :post, "#{Telnyx.api_base}/v2/virtual_cross_connects"
    end

    context "actions" do
      should "provision" do
        id = @virtual_cross_connect.id.freeze
        @virtual_cross_connect.provision
        assert_requested :post, "#{Telnyx.api_base}/v2/virtual_cross_connects/#{id}/actions/provision"
      end
    end
  end
end
