# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::UsageReports::MessagingTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.messaging.create(aggregation_type: 0)

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::MessagingCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response =
      @telnyx.legacy.reporting.usage_reports.messaging.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::MessagingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.messaging.list

    assert_pattern do
      response => Telnyx::Internal::PerPagePagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy
    end

    assert_pattern do
      row => {
        id: String | nil,
        aggregation_type: Integer | nil,
        connections: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        created_at: Time | nil,
        end_time: Time | nil,
        profiles: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        record_type: String | nil,
        report_url: String | nil,
        result: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        start_time: Time | nil,
        status: Integer | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response =
      @telnyx.legacy.reporting.usage_reports.messaging.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy | nil
      }
    end
  end
end
