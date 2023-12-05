# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class RequirementTypeTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve requirement type" do
      requirement_type = RequirementType.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/requirement_types/#{@id}")
      assert_kind_of RequirementType, requirement_type
    end

    should "list requirement types" do
      requirement_types = RequirementType.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/requirement_types")
      assert_kind_of Telnyx::ListObject, requirement_types
    end
  end
end
