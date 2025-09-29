# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NumberOrdersTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.number_orders.create

    assert_pattern do
      response => Telnyx::Models::NumberOrderCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberOrderWithPhoneNumbers | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.number_orders.retrieve("number_order_id")

    assert_pattern do
      response => Telnyx::Models::NumberOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberOrderWithPhoneNumbers | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.number_orders.update("number_order_id")

    assert_pattern do
      response => Telnyx::Models::NumberOrderUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NumberOrderWithPhoneNumbers | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.number_orders.list

    assert_pattern do
      response => Telnyx::Models::NumberOrderListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NumberOrderListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
