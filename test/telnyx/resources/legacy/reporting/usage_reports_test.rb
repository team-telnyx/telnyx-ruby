# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::UsageReportsTest < Telnyx::Test::ResourceTest
  def test_retrieve_speech_to_text
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.retrieve_speech_to_text

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReportRetrieveSpeechToTextResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil
      }
    end
  end
end
