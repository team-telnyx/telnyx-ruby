# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AITest < Telnyx::Test::ResourceTest
  def test_create_response_deprecated_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.create_response_deprecated(body: {model: "bar", input: "bar"})

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end

  def test_retrieve_models
    skip("Mock server tests are disabled")

    response = @telnyx.ai.retrieve_models

    assert_pattern do
      response => Telnyx::Models::AIRetrieveModelsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AIRetrieveModelsResponse::Data]),
        object: String | nil
      }
    end
  end

  def test_search_conversation_histories_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.search_conversation_histories(q: "customer called about billing issue")

    assert_pattern do
      response => Telnyx::Models::AISearchConversationHistoriesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AISearchConversationHistoriesResponse::Data]),
        meta: Telnyx::Models::AISearchConversationHistoriesResponse::Meta
      }
    end
  end

  def test_summarize_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.summarize(bucket: "bucket", filename: "filename")

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
