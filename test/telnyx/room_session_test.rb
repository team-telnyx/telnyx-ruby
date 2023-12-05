# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RoomSessionTest < Test::Unit::TestCase
    setup do
      @id = "05b280a1-7cca-3fd4-40bd-3c492e5b2388"
      @room_session = RoomSession.retrieve(@id)
    end
    should "be listable" do
      room_sessions = RoomSession.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/room_sessions")
      assert room_sessions.data.is_a?(Array)
    end

    should "be viewable" do
      assert_requested :get, "#{Telnyx.api_base}/v2/room_sessions/#{@id}"
    end
    context "actions" do
      should "kick the room session" do
        id = @room_session.id.freeze
        @room_session.kick
        assert_requested :post, "#{Telnyx.api_base}/v2/room_sessions/#{id}/actions/kick"
      end

      should "mute the room session" do
        id = @room_session.id.freeze
        @room_session.mute
        assert_requested :post, "#{Telnyx.api_base}/v2/room_sessions/#{id}/actions/mute"
      end

      should "unmute the room session" do
        id = @room_session.id.freeze
        @room_session.unmute
        assert_requested :post, "#{Telnyx.api_base}/v2/room_sessions/#{id}/actions/unmute"
      end

      should "end the room session" do
        id = @room_session.id.freeze
        @room_session.end
        assert_requested :post, "#{Telnyx.api_base}/v2/room_sessions/#{id}/actions/end"
      end
    end
  end
end
