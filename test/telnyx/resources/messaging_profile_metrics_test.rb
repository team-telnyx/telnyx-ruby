# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingProfileMetricsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_profile_metrics.list

    assert_pattern do
      response => Telnyx::Models::MessagingProfileMetricListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]) | nil,
        meta: Telnyx::MessagingPaginationMeta | nil
      }
    end
  end
end
