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
      response => Telnyx::Models::SimCardOrderListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::SimCardOrder]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
