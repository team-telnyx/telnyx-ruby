# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AdvancedOrdersTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.advanced_orders.create

    assert_pattern do
      response => Telnyx::Models::AdvancedOrderCreateResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        area_code: String | nil,
        comments: String | nil,
        country_code: String | nil,
        customer_reference: String | nil,
        features: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderCreateResponse::Feature]) | nil,
        orders: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        phone_number_type: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderCreateResponse::PhoneNumberType]) | nil,
        quantity: Integer | nil,
        requirement_group_id: String | nil,
        status: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderCreateResponse::Status]) | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.advanced_orders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::AdvancedOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        area_code: String | nil,
        comments: String | nil,
        country_code: String | nil,
        customer_reference: String | nil,
        features: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderRetrieveResponse::Feature]) | nil,
        orders: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        phone_number_type: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderRetrieveResponse::PhoneNumberType]) | nil,
        quantity: Integer | nil,
        requirement_group_id: String | nil,
        status: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderRetrieveResponse::Status]) | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.advanced_orders.list

    assert_pattern do
      response => Telnyx::Models::AdvancedOrderListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AdvancedOrderListResponse::Data]) | nil
      }
    end
  end

  def test_update_requirement_group
    skip("Prism tests are disabled")

    response = @telnyx.advanced_orders.update_requirement_group("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        area_code: String | nil,
        comments: String | nil,
        country_code: String | nil,
        customer_reference: String | nil,
        features: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature]) | nil,
        orders: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        phone_number_type: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType]) | nil,
        quantity: Integer | nil,
        requirement_group_id: String | nil,
        status: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status]) | nil
      }
    end
  end
end
