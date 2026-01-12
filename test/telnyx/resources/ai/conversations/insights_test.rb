# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Conversations::InsightsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insights.create(instructions: "instructions", name: "name")

    assert_pattern do
      response => Telnyx::AI::Conversations::InsightTemplateDetail
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Conversations::InsightTemplate
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insights.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::AI::Conversations::InsightTemplateDetail
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Conversations::InsightTemplate
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insights.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::AI::Conversations::InsightTemplateDetail
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Conversations::InsightTemplate
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insights.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AI::Conversations::InsightTemplate
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        instructions: String,
        insight_type: Telnyx::AI::Conversations::InsightTemplate::InsightType | nil,
        json_schema: Telnyx::AI::Conversations::InsightTemplate::JsonSchema | nil,
        name: String | nil,
        webhook: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.insights.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
