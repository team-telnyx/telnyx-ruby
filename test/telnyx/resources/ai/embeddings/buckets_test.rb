# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Embeddings::BucketsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.embeddings.buckets.retrieve("bucket_name")

    assert_pattern do
      response => Telnyx::Models::AI::Embeddings::BucketRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Embeddings::BucketRetrieveResponse::Data])
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.embeddings.buckets.list

    assert_pattern do
      response => Telnyx::Models::AI::Embeddings::BucketListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Embeddings::BucketListResponse::Data
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.embeddings.buckets.delete("bucket_name")

    assert_pattern do
      response => nil
    end
  end
end
