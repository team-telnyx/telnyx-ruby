# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class ConferenceTest < Test::Unit::TestCase
    setup do
      @conference = Conference.create call_control_id: "foobar", name: "conference!"
    end
    should "create conference" do
      assert_requested :post, "#{Telnyx.api_base}/v2/conferences"
      assert_kind_of Conference, @conference
    end

    should "retrieve conference" do
      conference = Conference.retrieve "foobar"
      assert_kind_of Conference, conference
      assert_requested :get, "#{Telnyx.api_base}/v2/conferences/foobar"
    end

    should "list conferences" do
      conferences = Conference.list

      assert_requested :get, "#{Telnyx.api_base}/v2/conferences"
      assert_kind_of ListObject, conferences
      assert_kind_of Conference, conferences.first
    end

    should "list participants" do
      participants = @conference.participants
      assert_requested :get, "#{Telnyx.api_base}/v2/conferences/#{@conference.id}/participants"
      assert_kind_of ListObject, participants
    end

    should "have nested command instance methods" do
      assert defined? @conference.join
      assert defined? @conference.mute
      assert defined? @conference.unmute
      assert defined? @conference.unhold
      assert defined? @conference.play
      assert defined? @conference.start_recording
      assert defined? @conference.stop_recording
      assert defined? @conference.speak
      assert defined? @conference.dial_participant
      assert defined? @conference.update
    end

    context "commands" do
      should "join" do
        @conference.join call_control_id: "foo_bar_baz"
        assert_requested :post, action_url(@conference, "join")
      end

      should "mute" do
        @conference.mute
        assert_requested :post, action_url(@conference, "mute")
      end

      should "unmute" do
        @conference.unmute
        assert_requested :post, action_url(@conference, "unmute")
      end

      should "hold" do
        @conference.hold
        assert_requested :post, action_url(@conference, "hold")
      end

      should "unhold" do
        @conference.unhold call_control_ids: %w[foo bar baz]
        assert_requested :post, action_url(@conference, "unhold")
      end

      should "play" do
        @conference.play audio_url: "https://example.com/audio.mp3"
        assert_requested :post, action_url(@conference, "play")
      end

      should "start recording" do
        @conference.start_recording channels: "dual", format: "mp3"
        assert_requested :post, action_url(@conference, "record_start")
      end

      should "stop recording" do
        @conference.stop_recording
        assert_requested :post, action_url(@conference, "record_stop")
      end

      should "speak" do
        @conference.speak language: "en-US", payload: "test speech", voice: "female"
        assert_requested :post, action_url(@conference, "speak")
      end

      should "dial participant" do
        @conference.dial_participant call_control_id: "foo", to: "+12223334444", from: "+12223335555"
        assert_requested :post, action_url(@conference, "dial_participant")
      end

      should "update" do
        @conference.update call_control_id: "foo"
        assert_requested :post, action_url(@conference, "update")
      end
    end

    def create_call
      Telnyx::Call.create connection_id: "12345", to: "+15550001111", from: "+15550002222"
    end

    def action_url(conf, action)
      "#{Telnyx.api_base}/v2/conferences/#{conf.id}/actions/#{action}"
    end
  end
end
