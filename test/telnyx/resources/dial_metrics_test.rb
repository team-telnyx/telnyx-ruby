# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DialMetricsTest < Telnyx::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dial_metrics.list(
        end_time: "2019-12-27T18:11:19.117Z",
        granularity: :second,
        start_time: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => Telnyx::Internal::CloudfsCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::DialMetricListResponse
    end

    assert_pattern do
      row => {
        average_dps: Float | nil,
        dials: Telnyx::Models::DialMetricListResponse::Dials | nil,
        dps_limit: Integer | nil,
        end_time: Time | nil,
        peak_dps: Float | nil,
        record_type: Telnyx::Models::DialMetricListResponse::RecordType | nil,
        region: String | nil,
        start_time: Time | nil
      }
    end
  end
end
