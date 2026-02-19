# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::ConversationsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.ai.conversations.create

    assert_pattern do
      response => Telnyx::AI::Conversation
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        last_message_at: Time,
        metadata: ^(Telnyx::Internal::Type::HashOf[String]),
        name: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.conversations.retrieve("conversation_id")

    assert_pattern do
      response => Telnyx::Models::AI::ConversationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Conversation | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.ai.conversations.update("conversation_id")

    assert_pattern do
      response => Telnyx::Models::AI::ConversationUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Conversation | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.conversations.list

    assert_pattern do
      response => Telnyx::Models::AI::ConversationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Conversation])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.conversations.delete("conversation_id")

    assert_pattern do
      response => nil
    end
  end

  def test_add_message_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.conversations.add_message("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", role: "role")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_conversations_insights
    skip("Mock server tests are disabled")

    response = @telnyx.ai.conversations.retrieve_conversations_insights("conversation_id")

    assert_pattern do
      response => Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data]),
        meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
      }
    end
  end
end
