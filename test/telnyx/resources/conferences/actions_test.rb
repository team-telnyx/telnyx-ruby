# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Conferences::ActionsTest < Telnyx::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.conferences.actions.update(
        "id",
        call_control_id: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
        supervisor_role: :whisper
      )

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_end_conference
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.end_conference("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionEndConferenceResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_gather_dtmf_audio_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.conferences.actions.gather_dtmf_audio(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        call_control_id: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg"
      )

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionGatherDtmfAudioResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_hold
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.hold("id")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionHoldResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_join_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.conferences.actions.join(
        "id",
        call_control_id: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg"
      )

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionJoinResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_leave_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.conferences.actions.leave("id", call_control_id: "c46e06d7-b78f-4b13-96b6-c576af9640ff")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionLeaveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_mute
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.mute("id")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionMuteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_play
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.play("id")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionPlayResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_record_pause
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.record_pause("id")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionRecordPauseResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_record_resume
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.record_resume("id")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionRecordResumeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_record_start_required_params
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.record_start("id", format_: :wav)

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionRecordStartResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_record_stop
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.record_stop("id")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionRecordStopResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_send_dtmf_required_params
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.send_dtmf("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", digits: "1234#")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionSendDtmfResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_speak_required_params
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.speak("id", payload: "Say this to participants", voice: "female")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionSpeakResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_stop
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.stop("id")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionStopResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_unhold_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.conferences.actions.unhold(
        "id",
        call_control_ids: ["v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg"]
      )

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionUnholdResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end

  def test_unmute
    skip("Prism tests are disabled")

    response = @telnyx.conferences.actions.unmute("id")

    assert_pattern do
      response => Telnyx::Models::Conferences::ActionUnmuteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Conferences::ConferenceCommandResult | nil
      }
    end
  end
end
