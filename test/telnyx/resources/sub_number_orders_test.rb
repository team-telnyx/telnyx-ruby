# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SubNumberOrdersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.sub_number_orders.retrieve("sub_number_order_id")

    assert_pattern do
      response => Telnyx::Models::SubNumberOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SubNumberOrder | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.sub_number_orders.update("sub_number_order_id")

    assert_pattern do
      response => Telnyx::Models::SubNumberOrderUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SubNumberOrder | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.sub_number_orders.list

    assert_pattern do
      response => Telnyx::Models::SubNumberOrderListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::SubNumberOrder]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_cancel
    skip("Mock server tests are disabled")

    response = @telnyx.sub_number_orders.cancel("sub_number_order_id")

    assert_pattern do
      response => Telnyx::Models::SubNumberOrderCancelResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SubNumberOrder | nil
      }
    end
  end

  def test_update_requirement_group_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.sub_number_orders.update_requirement_group(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        requirement_group_id: "a4b201f9-8646-4e54-a7d2-b2e403eeaf8c"
      )

    assert_pattern do
      response => Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data | nil
      }
    end
  end
end
