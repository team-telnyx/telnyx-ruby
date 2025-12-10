# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RequirementsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.requirements.retrieve("a9dad8d5-fdbd-49d7-aa23-39bb08a5ebaa")

    assert_pattern do
      response => Telnyx::Models::RequirementRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::RequirementRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.requirements.list

    assert_pattern do
      response => Telnyx::Models::RequirementListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::RequirementListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
