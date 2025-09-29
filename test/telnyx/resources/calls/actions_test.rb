# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Calls::ActionsTest < Telnyx::Test::ResourceTest
  def test_answer
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.answer("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionAnswerResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Calls::ActionAnswerResponse::Data | nil
      }
    end
  end

  def test_bridge_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.calls.actions.bridge(
        "call_control_id",
        body_call_control_id: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg"
      )

    assert_pattern do
      response => Telnyx::Models::Calls::ActionBridgeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_enqueue_required_params
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.enqueue("call_control_id", queue_name: "support")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionEnqueueResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_gather
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.gather("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionGatherResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_gather_using_ai_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.calls.actions.gather_using_ai(
        "call_control_id",
        parameters: {
          properties: {
            age: {description: "The age of the customer.", type: "integer"},
            location: {description: "The location of the customer.", type: "string"}
          },
          required: %w[age location],
          type: "object"
        }
      )

    assert_pattern do
      response => Telnyx::Models::Calls::ActionGatherUsingAIResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Calls::ActionGatherUsingAIResponse::Data | nil
      }
    end
  end

  def test_gather_using_audio
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.gather_using_audio("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionGatherUsingAudioResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_gather_using_speak_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.calls.actions.gather_using_speak("call_control_id", payload: "say this on call", voice: "male")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionGatherUsingSpeakResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_hangup
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.hangup("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionHangupResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_leave_queue
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.leave_queue("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionLeaveQueueResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_pause_recording
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.pause_recording("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionPauseRecordingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_refer_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.calls.actions.refer("call_control_id", sip_address: "sip:username@sip.non-telnyx-address.com")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionReferResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_reject_required_params
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.reject("call_control_id", cause: :USER_BUSY)

    assert_pattern do
      response => Telnyx::Models::Calls::ActionRejectResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_resume_recording
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.resume_recording("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionResumeRecordingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_send_dtmf_required_params
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.send_dtmf("call_control_id", digits: "1www2WABCDw9")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionSendDtmfResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_send_sip_info_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.calls.actions.send_sip_info(
        "call_control_id",
        body: "{\"key\": \"value\", \"numValue\": 100}",
        content_type: "application/json"
      )

    assert_pattern do
      response => Telnyx::Models::Calls::ActionSendSipInfoResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_speak_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.calls.actions.speak("call_control_id", payload: "Say this on the call", voice: "female")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionSpeakResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_start_ai_assistant
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.start_ai_assistant("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStartAIAssistantResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Calls::ActionStartAIAssistantResponse::Data | nil
      }
    end
  end

  def test_start_forking
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.start_forking("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStartForkingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_start_noise_suppression
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.start_noise_suppression("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStartNoiseSuppressionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_start_playback
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.start_playback("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStartPlaybackResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_start_recording_required_params
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.start_recording("call_control_id", channels: :single, format_: :wav)

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStartRecordingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_start_siprec
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.start_siprec("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStartSiprecResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_start_streaming
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.start_streaming("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStartStreamingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_start_transcription
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.start_transcription("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStartTranscriptionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_stop_ai_assistant
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.stop_ai_assistant("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStopAIAssistantResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_stop_forking
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.stop_forking("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStopForkingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_stop_gather
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.stop_gather("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStopGatherResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_stop_noise_suppression
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.stop_noise_suppression("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStopNoiseSuppressionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_stop_playback
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.stop_playback("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStopPlaybackResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_stop_recording
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.stop_recording("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStopRecordingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_stop_siprec
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.stop_siprec("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStopSiprecResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_stop_streaming
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.stop_streaming("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStopStreamingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_stop_transcription
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.stop_transcription("call_control_id")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionStopTranscriptionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_switch_supervisor_role_required_params
    skip("Prism tests are disabled")

    response = @telnyx.calls.actions.switch_supervisor_role("call_control_id", role: :barge)

    assert_pattern do
      response => Telnyx::Models::Calls::ActionSwitchSupervisorRoleResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_transfer_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.calls.actions.transfer("call_control_id", to: "+18005550100 or sip:username@sip.telnyx.com")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionTransferResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end

  def test_update_client_state_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.calls.actions.update_client_state("call_control_id", client_state: "aGF2ZSBhIG5pY2UgZGF5ID1d")

    assert_pattern do
      response => Telnyx::Models::Calls::ActionUpdateClientStateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Calls::CallControlCommandResult | nil
      }
    end
  end
end
