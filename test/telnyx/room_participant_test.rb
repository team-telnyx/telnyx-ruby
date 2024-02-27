# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RoomParticipantTest < Test::Unit::TestCase
    should "be listable" do
      room_compositions = RoomParticipant.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/room_participants")
      assert_kind_of Telnyx::TelnyxObject, room_compositions
    end

    should "be viewable" do
      id = "5219b3af-87c6-4c08-9b58-5a533d893e21"
      RoomParticipant.retrieve(id)
      assert_requested :get, "#{Telnyx.api_base}/v2/room_participants/#{id}"
    end
  end
end
