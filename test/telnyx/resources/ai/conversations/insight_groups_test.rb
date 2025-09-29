# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Conversations::InsightGroupsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insight_groups.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::AI::Conversations::InsightTemplateGroupDetail
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Conversations::InsightTemplateGroup
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insight_groups.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::AI::Conversations::InsightTemplateGroupDetail
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Conversations::InsightTemplateGroup
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insight_groups.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_insight_groups_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insight_groups.insight_groups(name: "name")

    assert_pattern do
      response => Telnyx::AI::Conversations::InsightTemplateGroupDetail
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Conversations::InsightTemplateGroup
      }
    end
  end

  def test_retrieve_insight_groups
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insight_groups.retrieve_insight_groups

    assert_pattern do
      response => Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Conversations::InsightTemplateGroup]),
        meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
      }
    end
  end
end
