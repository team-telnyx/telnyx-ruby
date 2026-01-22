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
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::RequirementListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        action: Telnyx::Models::RequirementListResponse::Action | nil,
        country_code: String | nil,
        created_at: String | nil,
        locality: String | nil,
        phone_number_type: Telnyx::Models::RequirementListResponse::PhoneNumberType | nil,
        record_type: String | nil,
        requirements_types: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::DocReqsRequirementType]) | nil,
        updated_at: String | nil
      }
    end
  end
end
