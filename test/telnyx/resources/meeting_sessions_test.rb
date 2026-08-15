# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MeetingSessionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.create(meeting_url: "https://zoom.us/j/1234567890")

    assert_pattern do
      response => Telnyx::MeetingSessionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MeetingSession
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.retrieve("mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890")

    assert_pattern do
      response => Telnyx::MeetingSessionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MeetingSession
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.update("mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890")

    assert_pattern do
      response => Telnyx::MeetingSessionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MeetingSession
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.list

    assert_pattern do
      response => Telnyx::Models::MeetingSessionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MeetingSession])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.delete("mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890")

    assert_pattern do
      response => Telnyx::MeetingSessionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MeetingSession
      }
    end
  end

  def test_delete_recording_media
    skip("Mock server tests are disabled")

    response =
      @telnyx.meeting_sessions.delete_recording_media("mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890")

    assert_pattern do
      response => Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data
      }
    end
  end

  def test_retrieve_events
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.retrieve_events("mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890")

    assert_pattern do
      response => Telnyx::Models::MeetingSessionRetrieveEventsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MeetingSessionRetrieveEventsResponse::Data])
      }
    end
  end

  def test_retrieve_recordings
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.retrieve_recordings("mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890")

    assert_pattern do
      response => Telnyx::Models::MeetingSessionRetrieveRecordingsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data])
      }
    end
  end

  def test_retrieve_transcript
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.retrieve_transcript("mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890")

    assert_pattern do
      response => Telnyx::Models::MeetingSessionRetrieveTranscriptResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Data]),
        meta: Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta
      }
    end
  end
end
