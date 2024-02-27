# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CallTest < Test::Unit::TestCase
    should "gether" do
      call = Call.retrieve("13")
      id = call.call_control_id.gsub(/\s+/, "+").freeze
      call.gather
      assert_requested :post, "#{Telnyx.api_base}/v2/calls/#{id}/actions/gather"
      assert_kind_of Call, call
    end
    should "streaming_stop" do
      call = Call.retrieve("13")
      id = call.call_control_id.gsub(/\s+/, "+").freeze
      call.streaming_stop
      assert_requested :post, "#{Telnyx.api_base}/v2/calls/#{id}/actions/streaming_stop"
      assert_kind_of Call, call
    end
    should "streaming_start" do
      call = Call.retrieve("13")
      id = call.call_control_id.gsub(/\s+/, "+").freeze
      call.streaming_start
      assert_requested :post, "#{Telnyx.api_base}/v2/calls/#{id}/actions/streaming_start"
      assert_kind_of Call, call
    end
  end
end
