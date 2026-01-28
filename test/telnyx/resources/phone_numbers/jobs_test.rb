# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PhoneNumbers::JobsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.jobs.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::JobRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumbersJob | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.jobs.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PhoneNumbers::PhoneNumbersJob
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        etc: Time | nil,
        failed_operations: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation]) | nil,
        pending_operations: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob::PendingOperation]) | nil,
        phone_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob::PhoneNumber]) | nil,
        record_type: String | nil,
        status: Telnyx::PhoneNumbers::PhoneNumbersJob::Status | nil,
        successful_operations: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob::SuccessfulOperation]) | nil,
        type: Telnyx::PhoneNumbers::PhoneNumbersJob::Type | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete_batch_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.phone_numbers.jobs.delete_batch(phone_numbers: ["+19705555098", "+19715555098", "32873127836"])

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::JobDeleteBatchResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumbersJob | nil
      }
    end
  end

  def test_update_batch_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.phone_numbers.jobs.update_batch(phone_numbers: ["1583466971586889004", "+13127367254"])

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::JobUpdateBatchResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumbersJob | nil
      }
    end
  end

  def test_update_emergency_settings_batch_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.phone_numbers.jobs.update_emergency_settings_batch(
        emergency_enabled: true,
        phone_numbers: ["+19705555098", "+19715555098", "32873127836"]
      )

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::JobUpdateEmergencySettingsBatchResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumbersJob | nil
      }
    end
  end
end
