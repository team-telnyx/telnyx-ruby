# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::OpenAI::EmbeddingsTest < Telnyx::Test::ResourceTest
  def test_create_embeddings_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.openai.embeddings.create_embeddings(
        input: "The quick brown fox jumps over the lazy dog",
        model: "thenlper/gte-large"
      )

    assert_pattern do
      response => Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Data]),
        model: String,
        object: String,
        usage: Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse::Usage
      }
    end
  end

  def test_list_embedding_models
    skip("Mock server tests are disabled")

    response = @telnyx.ai.openai.embeddings.list_embedding_models

    assert_pattern do
      response => Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse::Data]),
        object: String
      }
    end
  end
end
