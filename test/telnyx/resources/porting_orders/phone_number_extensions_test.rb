# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::PhoneNumberExtensionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.porting_orders.phone_number_extensions.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        activation_ranges: [{end_at: 10, start_at: 1}],
        extension_range: {end_at: 10, start_at: 1},
        porting_phone_number_id: "f24151b6-3389-41d3-8747-7dd8c681e5e2"
      )

    assert_pattern do
      response => Telnyx::Models::PortingOrders::PhoneNumberExtensionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrders::PortingPhoneNumberExtension | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.phone_number_extensions.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PortingOrders::PortingPhoneNumberExtension
    end

    assert_pattern do
      row => {
        id: String | nil,
        activation_ranges: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingPhoneNumberExtension::ActivationRange]) | nil,
        created_at: Time | nil,
        extension_range: Telnyx::PortingOrders::PortingPhoneNumberExtension::ExtensionRange | nil,
        porting_phone_number_id: String | nil,
        record_type: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.porting_orders.phone_number_extensions.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        porting_order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::PortingOrders::PhoneNumberExtensionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrders::PortingPhoneNumberExtension | nil
      }
    end
  end
end
