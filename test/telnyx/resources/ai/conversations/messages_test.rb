# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Conversations::MessagesTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.conversations.messages.list("conversation_id")

    assert_pattern do
      response => Telnyx::Models::AI::Conversations::MessageListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Conversations::MessageListResponse::Data]),
        meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
      }
    end
  end
end
