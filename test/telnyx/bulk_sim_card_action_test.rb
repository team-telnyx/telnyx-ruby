# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class BulkSimCardActionTest < Test::Unit::TestCase
    should "bulk sim card retrieve" do
      bulk_sim_card_actions = BulkSimCardAction.list
      assert_requested :get, "#{Telnyx.api_base}/v2/bulk_sim_card_actions"
      assert_kind_of ListObject, bulk_sim_card_actions
      assert_kind_of Telnyx::TelnyxObject, bulk_sim_card_actions.first
    end

    should "bulk sim card get by id" do
      bulk_sim_card_action_id = "6a09cdc3-8948-47f0-aa62-74ac943d6c58"
      bulk_sim_card_action = BulkSimCardAction.retrieve(bulk_sim_card_action_id)

      assert_requested :get, "#{Telnyx.api_base}/v2/bulk_sim_card_actions/#{bulk_sim_card_action_id}"
      assert_kind_of Telnyx::TelnyxObject, bulk_sim_card_action
    end
  end
end
