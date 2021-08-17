# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MobileOperatorNetworkTest < Test::Unit::TestCase
    should "be listable" do
      mobile_ops = MobileOperatorNetwork.list
      assert_requested :get, "#{Telnyx.api_base}/v2/mobile_operator_networks"
      assert_kind_of ListObject, mobile_ops
      assert_kind_of MobileOperatorNetwork, mobile_ops.first
    end
  end
end
