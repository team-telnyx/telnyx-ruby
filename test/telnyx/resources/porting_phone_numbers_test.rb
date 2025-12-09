# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PortingPhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting_phone_numbers.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PortingPhoneNumberListResponse
    end

    assert_pattern do
      row => {
        activation_status: Telnyx::Models::PortingPhoneNumberListResponse::ActivationStatus | nil,
        phone_number: String | nil,
        phone_number_type: Telnyx::Models::PortingPhoneNumberListResponse::PhoneNumberType | nil,
        portability_status: Telnyx::Models::PortingPhoneNumberListResponse::PortabilityStatus | nil,
        porting_order_id: String | nil,
        porting_order_status: Telnyx::Models::PortingPhoneNumberListResponse::PortingOrderStatus | nil,
        record_type: String | nil,
        requirements_status: Telnyx::Models::PortingPhoneNumberListResponse::RequirementsStatus | nil,
        support_key: String | nil
      }
    end
  end
end
