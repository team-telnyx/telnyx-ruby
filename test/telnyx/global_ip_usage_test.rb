# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class GlobalIpUsageTest < Test::Unit::TestCase
    should "list ip usage" do
      global_ip_usage = GlobalIpUsage.list
      assert_requested :get, "#{Telnyx.api_base}/v2/global_ip_usage"
      assert_kind_of ListObject, global_ip_usage
      assert_kind_of TelnyxObject, global_ip_usage.first
    end
  end
end
