# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RecordingTranscriptionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.recording_transcriptions.list

    assert_pattern do
      response => Telnyx::Models::RecordingTranscriptionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RecordingTranscription]) | nil,
        meta: Telnyx::Models::RecordingTranscriptionListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

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
