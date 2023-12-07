# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class GlobalIpLatencyTest < Test::Unit::TestCase
    should "list ip usage" do
      latency = GlobalIpLatency.list
      assert_requested :get, "#{Telnyx.api_base}/v2/global_ip_latency"
      assert_kind_of ListObject, latency
      assert_kind_of TelnyxObject, latency.first
    end
  end
end
