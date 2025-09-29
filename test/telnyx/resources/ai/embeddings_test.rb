# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::EmbeddingsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.embeddings.create(bucket_name: "bucket_name")

    assert_pattern do
      response => Telnyx::AI::EmbeddingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::EmbeddingResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ai.embeddings.retrieve("task_id")

    assert_pattern do
      response => Telnyx::Models::AI::EmbeddingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::EmbeddingRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.embeddings.list

    assert_pattern do
      response => Telnyx::Models::AI::EmbeddingListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::EmbeddingListResponse::Data])
      }
    end
  end

  def test_similarity_search_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.embeddings.similarity_search(bucket_name: "bucket_name", query: "query")

    assert_pattern do
      response => Telnyx::Models::AI::EmbeddingSimilaritySearchResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::EmbeddingSimilaritySearchResponse::Data])
      }
    end
  end

  def test_url_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.embeddings.url(bucket_name: "bucket_name", url: "url")

    assert_pattern do
      response => Telnyx::AI::EmbeddingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::EmbeddingResponse::Data
      }
    end
  end
end
