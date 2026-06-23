# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AITest < Telnyx::Test::ResourceTest
  def test_create_response_deprecated_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.create_response_deprecated(response_request: {model: "bar", input: "bar"})

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end

  def test_retrieve_conversation_histories_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.retrieve_conversation_histories(
        q: "customer called about billing issue",
        record_type: :voice
      )

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

  def test_retrieve_models
    skip("Mock server tests are disabled")

    response = @telnyx.ai.retrieve_models

    assert_pattern do
      response => Telnyx::ModelsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::ModelMetadata]),
        object: String | nil
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
