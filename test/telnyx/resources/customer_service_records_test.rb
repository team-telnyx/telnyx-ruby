# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CustomerServiceRecordsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.customer_service_records.list

    assert_pattern do
      response => Telnyx::Models::CustomerServiceRecordListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::CustomerServiceRecord]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_verify_phone_number_coverage_required_params
    skip("Prism tests are disabled")

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
