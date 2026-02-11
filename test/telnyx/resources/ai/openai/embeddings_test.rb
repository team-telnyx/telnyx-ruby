# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::OpenAI::EmbeddingsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.openai.embeddings.create(
        input: "The quick brown fox jumps over the lazy dog",
        model: "thenlper/gte-large"
      )

    assert_pattern do
      response => Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse::Data]),
        model: String,
        object: String,
        usage: Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse::Usage
      }
    end
  end

  def test_list_models
    skip("Prism tests are disabled")

    response = @telnyx.ai.openai.embeddings.list_models

    assert_pattern do
      response => Telnyx::Models::AI::OpenAI::EmbeddingListModelsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::OpenAI::EmbeddingListModelsResponse::Data]),
        object: String
      }
    end
  end
end
