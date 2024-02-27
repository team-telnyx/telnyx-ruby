# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CallRecordingTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
      @call_recording = CallRecording.retrieve @id
    end
    should "retrieve recording" do
      assert_requested(:get, "#{Telnyx.api_base}/v2/recordings/#{@id}")
      assert_kind_of Telnyx::CallRecording, @call_recording
    end

    should "list recordings" do
      recording = CallRecording.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/recordings")
      assert_kind_of Telnyx::ListObject, recording
    end

    should "delete recording" do
      id = @call_recording.id.gsub(/\s+/, "+").freeze
      @call_recording.delete
      assert_requested(:delete, "#{Telnyx.api_base}/v2/recordings/#{id}")
    end
  end
end
