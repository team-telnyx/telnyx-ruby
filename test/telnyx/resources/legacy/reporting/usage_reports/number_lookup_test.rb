# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::UsageReports::NumberLookupTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.number_lookup.create

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.number_lookup.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.number_lookup.list

    assert_pattern do
      response => Telnyx::Internal::PerPagePagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        aggregation_type: String | nil,
        created_at: Time | nil,
        end_date: Date | nil,
        managed_accounts: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        record_type: String | nil,
        report_url: String | nil,
        result: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageRecord]) | nil,
        start_date: Date | nil,
        status: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.number_lookup.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
