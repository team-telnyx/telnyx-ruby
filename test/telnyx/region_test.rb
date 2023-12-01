# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RegionTest < Test::Unit::TestCase
    should "be listable" do
      regions = Telnyx::Region.list
      assert_requested :get, "#{Telnyx.api_base}/v2/regions"
      assert regions.data.is_a?(Array)
      assert regions.first.is_a?(Telnyx::Region)
    end
  end
end
