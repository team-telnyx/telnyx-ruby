# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::BatchDetailRecords::SpeechToTextTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.legacy.reporting.batch_detail_records.speech_to_text.create(
        end_date: "2020-07-01T00:00:00-06:00",
        start_date: "2020-07-01T00:00:00-06:00"
      )

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response =
      @telnyx.legacy.reporting.batch_detail_records.speech_to_text.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.batch_detail_records.speech_to_text.list

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response =
      @telnyx.legacy.reporting.batch_detail_records.speech_to_text.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::BatchDetailRecords::SttDetailReportResponse | nil
      }
    end
  end
end
