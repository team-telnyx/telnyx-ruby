# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RecordingTranscriptionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.recording_transcriptions.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::RecordingTranscriptionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RecordingTranscription | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.recording_transcriptions.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::RecordingTranscription
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        duration_millis: Integer | nil,
        record_type: Telnyx::RecordingTranscription::RecordType | nil,
        recording_id: String | nil,
        status: Telnyx::RecordingTranscription::Status | nil,
        transcription_text: String | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.recording_transcriptions.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::RecordingTranscriptionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RecordingTranscription | nil
      }
    end
  end
end
