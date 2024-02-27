# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class WdrTest < Test::Unit::TestCase
    should "list wdrs reports" do
      wdrs = Wdr.list
      assert_requested :get, "#{Telnyx.api_base}/v2/reports/wdrs"
      assert_kind_of ListObject, wdrs
      assert_kind_of TelnyxObject, wdrs.first
    end
  end
end
