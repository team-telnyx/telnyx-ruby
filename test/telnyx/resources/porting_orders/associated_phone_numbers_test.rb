# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::AssociatedPhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.associated_phone_numbers.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrders::AssociatedPhoneNumberListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingAssociatedPhoneNumber]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

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
