# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RecordingsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.recordings.retrieve("recording_id")

    assert_pattern do
      response => Telnyx::Models::RecordingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RecordingResponseData | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.recordings.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::RecordingResponseData
    end

    assert_pattern do
      row => {
        id: String | nil,
        call_control_id: String | nil,
        call_leg_id: String | nil,
        call_session_id: String | nil,
        channels: Telnyx::RecordingResponseData::Channels | nil,
        conference_id: String | nil,
        created_at: String | nil,
        download_urls: Telnyx::RecordingResponseData::DownloadURLs | nil,
        duration_millis: Integer | nil,
        record_type: Telnyx::RecordingResponseData::RecordType | nil,
        recording_ended_at: String | nil,
        recording_started_at: String | nil,
        source: Telnyx::RecordingResponseData::Source | nil,
        status: Telnyx::RecordingResponseData::Status | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.recordings.delete("recording_id")

    assert_pattern do
      response => Telnyx::Models::RecordingDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RecordingResponseData | nil
      }
    end
  end
end
