# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::AI::Conversations::InsightGroups::InsightsTest < Telnyx::Test::ResourceTest
  def test_assign_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.conversations.insight_groups.insights.assign(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        group_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_unassign_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.conversations.insight_groups.insights.delete_unassign(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        group_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
