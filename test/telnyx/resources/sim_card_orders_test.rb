# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SimCardOrdersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_orders.create(address_id: "1293384261075731499", quantity: 23)

    assert_pattern do
      response => Telnyx::Models::SimCardOrderCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardOrder | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_orders.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardOrder | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_orders.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::SimCardOrder
    end

    assert_pattern do
      row => {
        id: String | nil,
        cost: Telnyx::SimCardOrder::Cost | nil,
        created_at: String | nil,
        order_address: Telnyx::SimCardOrder::OrderAddress | nil,
        quantity: Integer | nil,
        record_type: String | nil,
        status: Telnyx::SimCardOrder::Status | nil,
        tracking_url: String | nil,
        updated_at: String | nil
      }
    end
  end
end
