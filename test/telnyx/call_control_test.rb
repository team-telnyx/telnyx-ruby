# frozen_string_literal: true

require_relative "../test_helper"
require "securerandom"

module Telnyx
  class CallControlTest < Test::Unit::TestCase
    setup do
      @call = create_call
    end
    context "call instance" do
      should "be correct class" do
        assert create_call.is_a? Telnyx::Call
      end

      should "be initialized with data" do
        refute_nil @call.call_control_id
        refute_nil @call.call_leg_id
        refute_nil @call.call_session_id
        refute_nil @call.is_alive
        refute_nil @call.record_type
      end

      should "have generated instance methods methods" do
        assert defined? @call.reject
        assert defined? @call.answer
        assert defined? @call.hangup
        assert defined? @call.bridge
        assert defined? @call.speak
        assert defined? @call.fork_start
        assert defined? @call.fork_stop
        assert defined? @call.gather_using_audio
        assert defined? @call.gather_using_speak
        assert defined? @call.playback_start
        assert defined? @call.playback_stop
        assert defined? @call.record_start
        assert defined? @call.record_stop
        assert defined? @call.send_dtmf
        assert defined? @call.transfer
        assert defined? @call.enqueue
        assert defined? @call.leave_queue
      end
    end

    should "retrieve call" do
      Telnyx::Call.retrieve("1234")
    end

    context "object created through #new" do
      should "get and set call_control_id through alias" do
        call = Call.new
        refute call.id
        call.id = "123"
        assert_equal "123", call.id
      end

      should "have initialize_object accessors" do
        call = Call.new
        call.id = SecureRandom.base64(20)
        call.call_leg_id = SecureRandom.base64(20)
        call.call_session_id = SecureRandom.base64(20)

        assert call.id
        assert call.call_leg_id
        assert call.call_session_id
      end
    end

    context "commands" do
      should "reject" do
        @call.reject cause: "CALL_REJECTED"
        assert_requested :post, format_action_url(@call, "reject")
      end
      should "answer" do
        @call.answer
        assert_requested :post, format_action_url(@call, "answer")
      end
      should "hangup" do
        @call.hangup
        assert_requested :post, format_action_url(@call, "hangup")
      end
      should "bridge" do
        @call.bridge call_control_id: SecureRandom.base64(20)
        assert_requested :post, format_action_url(@call, "bridge")
      end
      should "speak" do
        @call.speak language: "en-US", voice: "female", payload: "Telnyx call control test"
        assert_requested :post, format_action_url(@call, "speak")
      end
      should "start fork" do
        @call.fork_start call_control_id: SecureRandom.base64(20)
        assert_requested :post, format_action_url(@call, "fork_start")
      end
      should "stop fork" do
        @call.fork_stop
        assert_requested :post, format_action_url(@call, "fork_stop")
      end
      should "gather using audio" do
        @call.gather_using_audio audio_url: "https://audio.example.com"
        assert_requested :post, format_action_url(@call, "gather_using_audio")
      end
      should "gather using speak" do
        @call.gather_using_speak language: "en-US", voice: "female", payload: "Telnyx call control test"
        assert_requested :post, format_action_url(@call, "gather_using_speak")
      end
      should "playback start" do
        @call.playback_start audio_url: "https://audio.example.com"
        assert_requested :post, format_action_url(@call, "playback_start")
      end
      should "playback stop" do
        @call.playback_stop
        assert_requested :post, format_action_url(@call, "playback_stop")
      end
      should "send dtmf" do
        @call.send_dtmf digits: "1www2WABCDw9"
        assert_requested :post, format_action_url(@call, "send_dtmf")
      end
      should "transfer" do
        @call.transfer to: "+15552223333"
        assert_requested :post, format_action_url(@call, "transfer")
      end
      should "start transcription" do
        @call.transcription_start
        assert_requested :post, format_action_url(@call, "transcription_start")
      end
      should "end transcription" do
        @call.transcription_stop
        assert_requested :post, format_action_url(@call, "transcription_stop")
      end
      should "pause recording" do
        @call.record_pause
        assert_requested :post, format_action_url(@call, "record_pause")
      end
      should "resume recording" do
        @call.record_resume
        assert_requested :post, format_action_url(@call, "record_resume")
      end
      should "gather stop" do
        @call.gather_stop
        assert_requested :post, format_action_url(@call, "gather_stop")
      end
      should "refer" do
        @call.refer sip_address: "sip:username@sip.non-telnyx-address.com"
        assert_requested :post, format_action_url(@call, "refer")
      end
      should "enqueue" do
        @call.enqueue call_control_id: SecureRandom.base64(20)
        assert_requested :post, format_action_url(@call, "enqueue")
      end
      should 'leave_queue' do
        @call.leave_queue call_control_id: SecureRandom.base64(20)
        assert_requested :post, format_action_url(@call, "leave_queue")
      end
    end

    def create_call
      Telnyx::Call.create connection_id: "12345", to: "+15550001111", from: "+15550002222", cause: "test"
    end

    def format_action_url(call, action)
      "#{Telnyx.api_base}/v2/calls/#{call.call_control_id}/actions/#{action}"
    end
  end
end
