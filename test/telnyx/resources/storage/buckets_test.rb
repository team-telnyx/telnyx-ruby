# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Storage::BucketsTest < Telnyx::Test::ResourceTest
  def test_create_presigned_url_required_params
    skip("Prism tests are disabled")

    response = @telnyx.storage.buckets.create_presigned_url("", bucket_name: "")

    assert_pattern do
      response => Telnyx::Models::Storage::BucketCreatePresignedURLResponse
    end

    assert_pattern do
      response => {
        content: Telnyx::Models::Storage::BucketCreatePresignedURLResponse::Content | nil
      }
    end
  end
end
