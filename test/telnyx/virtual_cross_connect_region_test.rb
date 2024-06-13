# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class VirtualCrossConnectRegionTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve virtual cross connect region" do
      omit "ID req mismatch"
      virtual_cross_connect_region = VirtualCrossConnectRegion.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/virtual_cross_connect_regions/#{@id}")
      assert_kind_of VirtualCrossConnectRegion, virtual_cross_connect_region
    end

    should "list virtual cross connect regions" do
      omit "ID req mismatch"
      virtual_cross_connect_regions = VirtualCrossConnectRegion.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/virtual_cross_connect_regions")
      assert_kind_of Telnyx::ListObject, virtual_cross_connect_regions
    end
  end
end
