# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Conversations::MessagesTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.conversations.messages.list("conversation_id")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AI::Conversations::MessageListResponse
    end

    assert_pattern do
      row => {
        role: Telnyx::Models::AI::Conversations::MessageListResponse::Role,
        text: String,
        created_at: Time | nil,
        sent_at: Time | nil,
        tool_calls: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Conversations::MessageListResponse::ToolCall]) | nil
      }
    end
  end
end
