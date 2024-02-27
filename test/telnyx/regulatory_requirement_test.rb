
# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RegulatoryRequirementTest < Test::Unit::TestCase
    should "be retrievable" do
      omit "Response code mismatch"
      id = "a38c217a-8019-48f8-bff6-0fdd9939075b"
      reg_req = RegulatoryRequirement.retrieve id
      assert_requested :get, "#{Telnyx.api_base}/v2/regulatory_requirements/#{id}"
      assert_kind_of RegulatoryRequirement, reg_req
    end

    should "be listable" do
      omit "Invalid object params"
      reg_reqs = RegulatoryRequirement.list
      assert_requested :get, "#{Telnyx.api_base}/v2/regulatory_requirements"
      assert_kind_of Array, reg_reqs.data
      assert_kind_of TelnyxObject, reg_reqs.first
    end
  end
end
