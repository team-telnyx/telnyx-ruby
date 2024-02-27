# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class GlobalIpAllowedPortTest < Test::Unit::TestCase
    should "list ip usage" do
      ports = GlobalIpAllowedPort.list
      assert_requested :get, "#{Telnyx.api_base}/v2/global_ip_allowed_ports"
      assert_kind_of ListObject, ports
      assert_kind_of TelnyxObject, ports.first
    end
  end
end
