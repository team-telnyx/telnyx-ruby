# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class SimCardGroupActionTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve sim card group action" do
      sim_card_group = SimCardGroupAction.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_card_group_actions/#{@id}")
      assert_kind_of SimCardGroupAction, sim_card_group
    end

    should "list sim card group actions" do
      simlist = SimCardGroupAction.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_card_group_actions")
      assert_kind_of Telnyx::ListObject, simlist
    end
  end
end
