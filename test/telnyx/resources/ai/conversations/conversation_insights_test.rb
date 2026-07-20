# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Conversations::ConversationInsightsTest < Telnyx::Test::ResourceTest
  def test_retrieve_aggregates
    skip("Mock server tests are disabled")

    response = @telnyx.ai.conversations.conversation_insights.retrieve_aggregates

    assert_pattern do
      response => Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse::Data])
      }
    end
  end
end
