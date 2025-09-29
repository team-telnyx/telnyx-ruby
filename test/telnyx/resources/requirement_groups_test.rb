# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RequirementGroupsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.requirement_groups.create(action: :ordering, country_code: "US", phone_number_type: :local)

    assert_pattern do
      response => Telnyx::RequirementGroup
    end

    assert_pattern do
      response => {
        id: String | nil,
        action: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        phone_number_type: String | nil,
        record_type: String | nil,
        regulatory_requirements: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroup::RegulatoryRequirement]) | nil,
        status: Telnyx::RequirementGroup::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.requirement_groups.retrieve("id")

    assert_pattern do
      response => Telnyx::RequirementGroup
    end

    assert_pattern do
      response => {
        id: String | nil,
        action: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        phone_number_type: String | nil,
        record_type: String | nil,
        regulatory_requirements: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroup::RegulatoryRequirement]) | nil,
        status: Telnyx::RequirementGroup::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.requirement_groups.update("id")

    assert_pattern do
      response => Telnyx::RequirementGroup
    end

    assert_pattern do
      response => {
        id: String | nil,
        action: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        phone_number_type: String | nil,
        record_type: String | nil,
        regulatory_requirements: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroup::RegulatoryRequirement]) | nil,
        status: Telnyx::RequirementGroup::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.requirement_groups.list

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroup])
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.requirement_groups.delete("id")

    assert_pattern do
      response => Telnyx::RequirementGroup
    end

    assert_pattern do
      response => {
        id: String | nil,
        action: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        phone_number_type: String | nil,
        record_type: String | nil,
        regulatory_requirements: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroup::RegulatoryRequirement]) | nil,
        status: Telnyx::RequirementGroup::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_submit_for_approval
    skip("Prism tests are disabled")

    response = @telnyx.requirement_groups.submit_for_approval("id")

    assert_pattern do
      response => Telnyx::RequirementGroup
    end

    assert_pattern do
      response => {
        id: String | nil,
        action: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        phone_number_type: String | nil,
        record_type: String | nil,
        regulatory_requirements: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroup::RegulatoryRequirement]) | nil,
        status: Telnyx::RequirementGroup::Status | nil,
        updated_at: Time | nil
      }
    end
  end
end
