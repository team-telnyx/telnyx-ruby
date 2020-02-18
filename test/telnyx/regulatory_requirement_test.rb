
# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RegulatoryRequirementTest < Test::Unit::TestCase
    should "be retrievable" do
      reg_req = RegulatoryRequirement.retrieve "12345"
      assert_requested :get, "#{Telnyx.api_base}/v2/regulatory_requirements/12345"
      assert_kind_of RegulatoryRequirement, reg_req
    end

    should "be listable" do
      reg_reqs = RegulatoryRequirement.list
      assert_requested :get, "#{Telnyx.api_base}/v2/regulatory_requirements"
      assert_kind_of Array, reg_reqs.data
      assert_kind_of RegulatoryRequirement, reg_reqs.first
    end
  end
end
