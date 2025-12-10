# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VerifiedNumbersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.verified_numbers.create(phone_number: "+15551234567", verification_method: :sms)

    assert_pattern do
      response => Telnyx::Models::VerifiedNumberCreateResponse
    end

    assert_pattern do
      response => {
        phone_number: String | nil,
        verification_method: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.verified_numbers.retrieve("+15551234567")

    assert_pattern do
      response => Telnyx::VerifiedNumberDataWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::VerifiedNumber | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.verified_numbers.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::VerifiedNumber
    end

    assert_pattern do
      row => {
        phone_number: String | nil,
        record_type: Telnyx::VerifiedNumber::RecordType | nil,
        verified_at: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.verified_numbers.delete("+15551234567")

    assert_pattern do
      response => Telnyx::VerifiedNumberDataWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::VerifiedNumber | nil
      }
    end
  end
end
