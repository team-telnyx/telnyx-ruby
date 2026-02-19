# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::UsageReports::VoiceTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.legacy.reporting.usage_reports.voice.create(
        end_time: "2024-02-01T00:00:00Z",
        start_time: "2024-02-01T00:00:00Z"
      )

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::VoiceCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.voice.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::VoiceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.voice.list

    assert_pattern do
      response => Telnyx::Internal::PerPagePagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy
    end

    assert_pattern do
      row => {
        id: String | nil,
        aggregation_type: Integer | nil,
        connections: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        created_at: Time | nil,
        end_time: Time | nil,
        product_breakdown: Integer | nil,
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
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.voice.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::VoiceDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy | nil
      }
    end
  end
end
