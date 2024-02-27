# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class SimCardGroupTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve sim card group" do
      sim_card_group = SimCardGroup.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_card_groups/#{@id}")
      assert_kind_of SimCardGroup, sim_card_group
    end

    should "list sim card groups" do
      simlist = SimCardGroup.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_card_groups")
      assert_kind_of Telnyx::ListObject, simlist
    end

    should "create sim card groups" do
      SimCardGroup.create(name: "sim_group")
      assert_requested(:post, "#{Telnyx.api_base}/v2/sim_card_groups")
    end

    should "update sim card group" do
      sim_card_group = SimCardGroup.retrieve @id
      sim_card_group.name = "updated name"
      id = sim_card_group.id.freeze
      sim_card_group.save
      assert_requested(:patch, "#{Telnyx.api_base}/v2/sim_card_groups/#{id}")
    end

    should "delete sim card group" do
      sim_card_group = SimCardGroup.retrieve @id
      id = sim_card_group.id.freeze
      sim_card_group.delete
      assert_requested(:delete, "#{Telnyx.api_base}/v2/sim_card_groups/#{id}")
    end

    context "actions" do
      should "set_private_wireless_gateway" do
        sim = SimCardGroup.retrieve @id
        id = sim.id.freeze
        sim.set_private_wireless_gateway(private_wireless_gateway_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
        assert_requested(:post, "#{Telnyx.api_base}/v2/sim_card_groups/#{id}/actions/set_private_wireless_gateway")
      end

      should "remove_private_wireless_gateway" do
        omit "ID req mismatch"
        sim = SimCardGroup.retrieve @id
        id = sim.id.freeze
        sim.remove_private_wireless_gateway
        assert_requested(:post, "#{Telnyx.api_base}/v2/sim_card_groups/#{id}/actions/remove_private_wireless_gateway")
      end
    end
  end
end
