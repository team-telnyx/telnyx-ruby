# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class GlobalIpProtocolTest < Test::Unit::TestCase
    should "list ip usage" do
      protocols = GlobalIpProtocol.list
      assert_requested :get, "#{Telnyx.api_base}/v2/global_ip_protocols"
      assert_kind_of ListObject, protocols
      assert_kind_of TelnyxObject, protocols.first
    end
  end
end
