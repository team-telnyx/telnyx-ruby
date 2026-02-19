# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::AssociatedPhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.porting_orders.associated_phone_numbers.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        action: :keep,
        phone_number_range: {}
      )

    assert_pattern do
      response => Telnyx::Models::PortingOrders::AssociatedPhoneNumberCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrders::PortingAssociatedPhoneNumber | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.porting_orders.associated_phone_numbers.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PortingOrders::PortingAssociatedPhoneNumber
    end

    assert_pattern do
      row => {
        id: String | nil,
        action: Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action | nil,
        country_code: String | nil,
        created_at: Time | nil,
        phone_number_range: Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberRange | nil,
        phone_number_type: Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType | nil,
        porting_order_id: String | nil,
        record_type: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.porting_orders.associated_phone_numbers.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        porting_order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::PortingOrders::AssociatedPhoneNumberDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrders::PortingAssociatedPhoneNumber | nil
      }
    end
  end
end
