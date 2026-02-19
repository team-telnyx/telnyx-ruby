# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::ActivationJobsTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.porting_orders.activation_jobs.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::PortingOrders::ActivationJobRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrdersActivationJob | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.porting_orders.activation_jobs.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::PortingOrders::ActivationJobUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrdersActivationJob | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.porting_orders.activation_jobs.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PortingOrdersActivationJob
    end

    assert_pattern do
      row => {
        id: String | nil,
        activate_at: Time | nil,
        activation_type: Telnyx::PortingOrdersActivationJob::ActivationType | nil,
        activation_windows: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrdersActivationJob::ActivationWindow]) | nil,
        created_at: Time | nil,
        record_type: String | nil,
        status: Telnyx::PortingOrdersActivationJob::Status | nil,
        updated_at: Time | nil
      }
    end
  end
end
