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
      response => Telnyx::Models::PhoneNumbers::JobListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob]) | nil,
        meta: Telnyx::PaginationMeta | nil
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
