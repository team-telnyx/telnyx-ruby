# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NumberOrderPhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.number_order_phone_numbers.retrieve("number_order_phone_number_id")

    assert_pattern do
      response => Telnyx::Models::NumberOrderPhoneNumberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberOrderPhoneNumber | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.number_order_phone_numbers.list

    assert_pattern do
      response => Telnyx::Models::NumberOrderPhoneNumberListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::NumberOrderPhoneNumber]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_update_requirement_group_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.number_order_phone_numbers.update_requirement_group(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        requirement_group_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data | nil
      }
    end
  end

  def test_update_requirements
    skip("Mock server tests are disabled")

    response = @telnyx.number_order_phone_numbers.update_requirements("number_order_phone_number_id")

    assert_pattern do
      response => Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberOrderPhoneNumber | nil
      }
    end
  end
end
