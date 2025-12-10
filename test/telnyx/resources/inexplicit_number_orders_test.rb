# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::InexplicitNumberOrdersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.inexplicit_number_orders.create(
        ordering_groups: [
          {
            count_requested: "count_requested",
            country_iso: :US,
            phone_number_type: "phone_number_type"
          }
        ]
      )

    assert_pattern do
      response => Telnyx::Models::InexplicitNumberOrderCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::InexplicitNumberOrderResponse | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.inexplicit_number_orders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::InexplicitNumberOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::InexplicitNumberOrderResponse | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.inexplicit_number_orders.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPaginationForInexplicitNumberOrders
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::InexplicitNumberOrderResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        billing_group_id: String | nil,
        connection_id: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        messaging_profile_id: String | nil,
        ordering_groups: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::InexplicitNumberOrderResponse::OrderingGroup]) | nil,
        updated_at: Time | nil
      }
    end
  end
end
