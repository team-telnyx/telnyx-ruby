# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CallReasonsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.call_reasons.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::CallReasonListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        description: String | nil,
        reason: String | nil
      }
    end
  end

  def test_validate_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.call_reasons.validate(body: ["Appointment reminders", "Billing inquiries"])

    assert_pattern do
      response => Telnyx::Models::CallReasonValidateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CallReasonValidateResponse::Data
      }
    end
  end
end
