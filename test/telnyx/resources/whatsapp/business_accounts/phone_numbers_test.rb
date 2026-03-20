# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Whatsapp::BusinessAccounts::PhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.business_accounts.phone_numbers.list("id")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse
    end

    assert_pattern do
      row => {
        calling_enabled: Telnyx::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        display_name: String | nil,
        enabled: Telnyx::Internal::Type::Boolean | nil,
        phone_number: String | nil,
        phone_number_id: String | nil,
        quality_rating: String | nil,
        record_type: String | nil,
        status: String | nil,
        user_id: String | nil,
        waba_id: String | nil
      }
    end
  end

  def test_initialize_verification_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.whatsapp.business_accounts.phone_numbers.initialize_verification(
        "id",
        display_name: "display_name",
        phone_number: "phone_number"
      )

    assert_pattern do
      response => nil
    end
  end
end
