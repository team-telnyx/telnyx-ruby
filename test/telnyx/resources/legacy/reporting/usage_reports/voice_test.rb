# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::UsageReports::VoiceTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.voice.list

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy]) | nil,
        meta: Telnyx::Models::Legacy::Reporting::UsageReports::VoiceListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

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
