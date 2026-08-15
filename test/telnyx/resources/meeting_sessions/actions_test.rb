# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::MeetingSessions::ActionsTest < Telnyx::Test::ResourceTest
  def test_send_chat_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.meeting_sessions.actions.send_chat(
        "mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890",
        text: "I will send the summary after this call."
      )

    assert_pattern do
      response => Telnyx::MeetingSessions::ActionAcceptedResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MeetingSessions::ActionAcceptedResponse::Data
      }
    end
  end

  def test_speak_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.meeting_sessions.actions.speak(
        "mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890",
        text: "Here are the three decisions from this call."
      )

    assert_pattern do
      response => Telnyx::MeetingSessions::ActionAcceptedResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MeetingSessions::ActionAcceptedResponse::Data
      }
    end
  end

  def test_stop_speaking
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_sessions.actions.stop_speaking("mtgsess_a1b2c3d4-e5f6-7890-abcd-ef1234567890")

    assert_pattern do
      response => Telnyx::MeetingSessions::ActionAcceptedResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MeetingSessions::ActionAcceptedResponse::Data
      }
    end
  end
end
