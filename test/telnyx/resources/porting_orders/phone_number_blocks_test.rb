# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::PhoneNumberBlocksTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.porting_orders.phone_number_blocks.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        activation_ranges: [{end_at: "+4930244999910", start_at: "+4930244999901"}],
        phone_number_range: {end_at: "+4930244999910", start_at: "+4930244999901"}
      )

    assert_pattern do
      response => Telnyx::Models::PortingOrders::PhoneNumberBlockCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrders::PortingPhoneNumberBlock | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.phone_number_blocks.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrders::PhoneNumberBlockListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingPhoneNumberBlock]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.porting_orders.phone_number_blocks.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        porting_order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::PortingOrders::PhoneNumberBlockDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrders::PortingPhoneNumberBlock | nil
      }
    end
  end
end
