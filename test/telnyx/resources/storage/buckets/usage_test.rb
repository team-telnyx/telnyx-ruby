# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Storage::Buckets::UsageTest < Telnyx::Test::ResourceTest
  def test_get_api_usage_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.storage.buckets.usage.get_api_usage(
        "",
        filter: {end_time: "2019-12-27T18:11:19.117Z", start_time: "2019-12-27T18:11:19.117Z"}
      )

    assert_pattern do
      response => Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data]) | nil
      }
    end
  end

  def test_get_bucket_usage
    skip("Mock server tests are disabled")

    response = @telnyx.storage.buckets.usage.get_bucket_usage("")

    assert_pattern do
      response => Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse::Data]) | nil,
        meta: Telnyx::Storage::Buckets::PaginationMetaSimple | nil
      }
    end
  end
end
