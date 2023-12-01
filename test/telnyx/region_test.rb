# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RegionTest < Test::Unit::TestCase
    should "be listable" do
      regions = Region.list
      assert_requested :get, "#{Telnyx.api_base}/v2/regions"
      assert regions.data.is_a?(Array)
      assert regions.is_a?(TelnyxObject)
    end
  end
end
