# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalRequirements::SubNumberOrdersTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.external_requirements.sub_number_orders.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        regulatory_requirement_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.external_requirements.sub_number_orders.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        regulatory_requirement_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        requirement: {first_name: "Jane", last_name: "Doe"}
      )

    assert_pattern do
      response => Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data | nil
      }
    end
  end
end
