# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RequirementTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve requirement" do
      requirement = Requirement.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/requirements/#{@id}")
      assert_kind_of Requirement, requirement
    end

    should "list requirement" do
      requirements = Requirement.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/requirements")
      assert_kind_of Telnyx::ListObject, requirements
    end
  end
end
