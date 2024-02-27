# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RoomRecordingTest < Test::Unit::TestCase
    setup do
      @id = "73c4b97d-f19c-fec8-38ee-e6776c076487"
      @room_recording = RoomRecording.retrieve(@id)
    end
    should "be listable" do
      room_recordings = RoomRecording.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/room_recordings")
      assert_kind_of Telnyx::TelnyxObject, room_recordings
    end

    should "be deletable" do
      id = @room_recording.id.freeze
      @room_recording.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/room_recordings/#{id}"
    end

    should "be viewable" do
      assert_requested :get, "#{Telnyx.api_base}/v2/room_recordings/#{@id}"
    end
  end
end
