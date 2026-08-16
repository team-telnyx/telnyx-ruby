# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::MeetingSessions::ArtifactsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.meeting_sessions.artifacts.create(
        "mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890",
        type: :summary
      )

    assert_pattern do
      response => Telnyx::MeetingSessions::MeetingSessionArtifactResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MeetingSessions::MeetingSessionArtifact
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.meeting_sessions.artifacts.retrieve(
        "mtgart_b2c3d4e5-f6a7-8901-bcde-f23456789012",
        id: "mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890"
      )

    assert_pattern do
      response => Telnyx::MeetingSessions::MeetingSessionArtifactResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MeetingSessions::MeetingSessionArtifact
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.artifacts.list("mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890")

    assert_pattern do
      response => Telnyx::Models::MeetingSessions::ArtifactListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MeetingSessions::MeetingSessionArtifact])
      }
    end
  end
end
