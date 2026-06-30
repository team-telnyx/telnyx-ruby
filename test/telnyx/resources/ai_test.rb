# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AITest < Telnyx::Test::ResourceTest
  def test_create_response_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.create_response(input: {model: "bar", input: "bar"})

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end

  def test_list_conversation_histories_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.list_conversation_histories(q: "customer called about billing issue")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AIListConversationHistoriesResponse
    end

    assert_pattern do
      row => {
        id: String,
        chunk_index: Integer,
        chunk_total: Integer,
        ingested_at: Time,
        organization_id: String,
        record_created_at: Time,
        record_id: String,
        region: Telnyx::Models::AIListConversationHistoriesResponse::Region,
        score: Float,
        text: String,
        user_id: String,
        metadata: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil
      }
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
