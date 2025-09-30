# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RequirementTypesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.requirement_types.retrieve("a38c217a-8019-48f8-bff6-0fdd9939075b")

    assert_pattern do
      response => Telnyx::Models::RequirementTypeRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DocReqsRequirementType | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.requirement_types.list

    assert_pattern do
      response => Telnyx::Models::RequirementTypeListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::DocReqsRequirementType]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
