# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RoomCompositionTest < Test::Unit::TestCase
    setup do
      @id = "23d7dcc9-a43b-6d51-dace-acfe22622af3"
      @room_composition = RoomComposition.retrieve(@id)
    end
    should "be listable" do
      room_compositions = RoomComposition.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/room_compositions")
      assert_kind_of Telnyx::TelnyxObject, room_compositions
    end

    should "be creatable" do
      RoomComposition.create text: "test", from: "+18445550001", to: "+18445550001"
      assert_requested :post, "#{Telnyx.api_base}/v2/room_compositions"
    end

    should "be deletable" do
      id = @room_composition.id.freeze
      @room_composition.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/room_compositions/#{id}"
    end

    should "be viewable" do
      assert_requested :get, "#{Telnyx.api_base}/v2/room_compositions/#{@id}"
    end
  end
end
