# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PhoneNumbersRegulatoryRequirementsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.phone_numbers_regulatory_requirements.retrieve

    assert_pattern do
      response => Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
