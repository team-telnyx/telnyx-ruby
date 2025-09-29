# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NumberBlockOrdersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.number_block_orders.list

    assert_pattern do
      response => Telnyx::Models::NumberBlockOrderListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::NumberBlockOrder]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
