# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CustomerServiceRecordsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.customer_service_records.create(phone_number: "+13035553000")

    assert_pattern do
      response => Telnyx::Models::CustomerServiceRecordCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CustomerServiceRecord | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.customer_service_records.retrieve("customer_service_record_id")

    assert_pattern do
      response => Telnyx::Models::CustomerServiceRecordRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CustomerServiceRecord | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.customer_service_records.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::CustomerServiceRecord
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        error_message: String | nil,
        phone_number: String | nil,
        record_type: String | nil,
        result: Telnyx::CustomerServiceRecord::Result | nil,
        status: Telnyx::CustomerServiceRecord::Status | nil,
        updated_at: Time | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_verify_phone_number_coverage_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.customer_service_records.verify_phone_number_coverage(phone_numbers: ["+13035553000"])

    assert_pattern do
      response => Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data]) | nil
      }
    end
  end
end
