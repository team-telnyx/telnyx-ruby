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
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::NumberOrderListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        billing_group_id: String | nil,
        connection_id: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        messaging_profile_id: String | nil,
        phone_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NumberOrderListResponse::PhoneNumber]) | nil,
        phone_numbers_count: Integer | nil,
        record_type: String | nil,
        requirements_met: Telnyx::Internal::Type::Boolean | nil,
        status: Telnyx::Models::NumberOrderListResponse::Status | nil,
        sub_number_orders_ids: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: Time | nil
      }
    end
  end
end
