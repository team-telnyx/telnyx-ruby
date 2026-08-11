# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AITest < Telnyx::Test::ResourceTest
  def test_retrieve_conversation_histories_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.retrieve_conversation_histories(q: "customer called about billing issue")

    assert_pattern do
      response => Telnyx::Models::AIRetrieveConversationHistoriesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data]),
        meta: Telnyx::Models::AIRetrieveConversationHistoriesResponse::Meta
      }
    end
  end

  def test_summarize_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.summarize(bucket: "string", filename: "string")

    assert_pattern do
      response => Telnyx::Models::AISummarizeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AISummarizeResponse::Data
      }
    end
  end
end
