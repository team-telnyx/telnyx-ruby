# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CallEventTest < Test::Unit::TestCase
    should "be listable" do
      call_events = CallEvent.list
      assert_requested :get, "#{Telnyx.api_base}/v2/call_events"
      assert call_events.is_a?(ListObject)
      assert call_events[:data].is_a?(Array)
    end
  end
end
