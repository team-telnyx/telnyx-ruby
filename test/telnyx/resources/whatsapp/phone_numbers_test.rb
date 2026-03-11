# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Whatsapp::PhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Whatsapp::PhoneNumberListResponse
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

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.delete("phone_number")

    assert_pattern do
      response => nil
    end
  end

  def test_resend_verification
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.resend_verification("phone_number")

    assert_pattern do
      response => nil
    end
  end

  def test_verify_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.phone_numbers.verify("phone_number", code: "code")

    assert_pattern do
      response => nil
    end
  end
end
