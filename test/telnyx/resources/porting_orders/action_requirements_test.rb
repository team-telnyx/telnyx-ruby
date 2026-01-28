# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::ActionRequirementsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.action_requirements.list("porting_order_id")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PortingOrders::ActionRequirementListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        action_type: String | nil,
        action_url: String | nil,
        cancel_reason: String | nil,
        created_at: Time | nil,
        porting_order_id: String | nil,
        record_type: Telnyx::Models::PortingOrders::ActionRequirementListResponse::RecordType | nil,
        requirement_type_id: String | nil,
        status: Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_initiate_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.porting_orders.action_requirements.initiate(
        "id",
        porting_order_id: "porting_order_id",
        params: {first_name: "John", last_name: "Doe"}
      )

    assert_pattern do
      response => Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data | nil
      }
    end
  end
end
