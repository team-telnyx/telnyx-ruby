# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NumberBlockOrdersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.number_block_orders.create(range: 10, starting_number: "+19705555000")

    assert_pattern do
      response => Telnyx::Models::NumberBlockOrderCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberBlockOrder | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.number_block_orders.retrieve("number_block_order_id")

    assert_pattern do
      response => Telnyx::Models::NumberBlockOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberBlockOrder | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.number_block_orders.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::NumberBlockOrder
    end

    assert_pattern do
      row => {
        id: String | nil,
        connection_id: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        messaging_profile_id: String | nil,
        phone_numbers_count: Integer | nil,
        range: Integer | nil,
        record_type: String | nil,
        requirements_met: Telnyx::Internal::Type::Boolean | nil,
        starting_number: String | nil,
        status: Telnyx::NumberBlockOrder::Status | nil,
        updated_at: Time | nil
      }
    end
  end
end
