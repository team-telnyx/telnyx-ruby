# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RoomTest < Test::Unit::TestCase
    setup do
      @id = "ebb9daec-eb8a-8caa-0105-2b6f56f5a11c"
      @room = Room.retrieve(@id)
    end
    should "be creatable" do
      Room.create(enable_recording: true)
      assert_requested :post, "#{Telnyx.api_base}/v2/rooms"
    end

    should "be listable" do
      rooms = Room.list
      assert_requested :get, "#{Telnyx.api_base}/v2/rooms"
      assert rooms.data.is_a?(Array)
    end

    should "be retrievable" do
      assert_requested :get, "#{Telnyx.api_base}/v2/rooms/#{@id}"
    end

    should "be updatable" do
      @room.name = "new name"
      id = @room.id.freeze
      @room.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/rooms/#{id}"
    end

    should "be deletable" do
      id = @room.id.freeze
      @room.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/rooms/#{id}"
    end
    context "actions" do
      should "generate_join_client_token" do
        id = @room.id.freeze
        @room.generate_join_client_token
        assert_requested :post, "#{Telnyx.api_base}/v2/rooms/#{id}/actions/generate_join_client_token"
      end

      should "refresh_client_token" do
        id = @room.id.freeze
        @room.refresh_client_token(refresh_token: "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJ0ZWxueXhfdGVsZXBob255IiwiZXhwIjoxNTkwMDEwMTQzLCJpYXQiOjE1ODc1OTA5NDMsImlzcyI6InRlbG55eF90ZWxlcGhvbnkiLCJqdGkiOiJiOGM3NDgzNy1kODllLTRhNjUtOWNmMi0zNGM3YTZmYTYwYzgiLCJuYmYiOjE1ODc1OTA5NDIsInN1YiI6IjVjN2FjN2QwLWRi")
        assert_requested :post, "#{Telnyx.api_base}/v2/rooms/#{id}/actions/refresh_client_token"
      end
    end
  end
end
