# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Reports::CdrUsageReportsTest < Telnyx::Test::ResourceTest
  def test_fetch_sync_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.reports.cdr_usage_reports.fetch_sync(
        aggregation_type: :NO_AGGREGATION,
        product_breakdown: :NO_BREAKDOWN
      )

    assert_pattern do
      response => Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data | nil
      }
    end
  end
end
