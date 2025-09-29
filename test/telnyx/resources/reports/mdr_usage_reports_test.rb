# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Reports::MdrUsageReportsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.reports.mdr_usage_reports.create(
        aggregation_type: :NO_AGGREGATION,
        end_date: "2020-07-01T00:00:00-06:00",
        start_date: "2020-07-01T00:00:00-06:00"
      )

    assert_pattern do
      response => Telnyx::Models::Reports::MdrUsageReportCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Reports::MdrUsageReport | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.reports.mdr_usage_reports.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Reports::MdrUsageReportRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Reports::MdrUsageReport | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.reports.mdr_usage_reports.list

    assert_pattern do
      response => Telnyx::Models::Reports::MdrUsageReportListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Reports::MdrUsageReport]) | nil,
        meta: Telnyx::Models::Reports::MdrUsageReportListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.reports.mdr_usage_reports.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Reports::MdrUsageReportDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Reports::MdrUsageReport | nil
      }
    end
  end

  def test_fetch_sync_required_params
    skip("Prism tests are disabled")

    response = @telnyx.reports.mdr_usage_reports.fetch_sync(aggregation_type: :NO_AGGREGATION)

    assert_pattern do
      response => Telnyx::Models::Reports::MdrUsageReportFetchSyncResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Reports::MdrUsageReport | nil
      }
    end
  end
end
