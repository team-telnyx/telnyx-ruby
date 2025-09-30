# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RegulatoryRequirementsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.regulatory_requirements.retrieve

    assert_pattern do
      response => Telnyx::Models::RegulatoryRequirementRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data]) | nil
      }
    end
  end
end
