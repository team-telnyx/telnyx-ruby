# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PortingPhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.porting_phone_numbers.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PortingPhoneNumber
    end

    assert_pattern do
      row => {
        activation_status: Telnyx::PortingOrderActivationStatus | nil,
        phone_number: String | nil,
        phone_number_type: Telnyx::PortingPhoneNumber::PhoneNumberType | nil,
        portability_status: Telnyx::PortingPhoneNumber::PortabilityStatus | nil,
        porting_order_id: String | nil,
        porting_order_status: Telnyx::PortingPhoneNumber::PortingOrderStatus | nil,
        record_type: String | nil,
        requirements_status: Telnyx::PortingPhoneNumber::RequirementsStatus | nil,
        support_key: String | nil
      }
    end
  end
end
