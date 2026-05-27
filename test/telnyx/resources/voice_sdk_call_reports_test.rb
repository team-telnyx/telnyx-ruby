# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VoiceSDKCallReportsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.voice_sdk_call_reports.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem])
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.voice_sdk_call_reports.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::VoiceSDKCallReportListResponse
    end

    assert_pattern do
      row => {
        call_id: String | nil,
        call_report_id: String | nil,
        created_at: Time | nil,
        flush_reason: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        logs: Telnyx::Models::VoiceSDKCallReportListResponse::Logs | nil,
        organization_id: String | nil,
        segment: Integer | nil,
        stats: Telnyx::Models::VoiceSDKCallReportListResponse::Stats | nil,
        stored_at: Time | nil,
        summary: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        telnyx_leg_id: String | nil,
        telnyx_session_id: String | nil,
        user_agent: String | nil,
        user_id: String | nil,
        version: String | nil,
        voice_sdk_id: String | nil,
        voice_sdk_id_decoded: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        voice_sdk_session_id: String | nil
      }
    end
  end
end
