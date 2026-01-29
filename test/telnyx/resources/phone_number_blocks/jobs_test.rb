# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PhoneNumberBlocks::JobsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.phone_number_blocks.jobs.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::PhoneNumberBlocks::JobRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberBlocks::Job | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.phone_number_blocks.jobs.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PhoneNumberBlocks::Job
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        etc: Time | nil,
        failed_operations: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberBlocks::Job::FailedOperation]) | nil,
        record_type: String | nil,
        status: Telnyx::PhoneNumberBlocks::Job::Status | nil,
        successful_operations: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberBlocks::Job::SuccessfulOperation]) | nil,
        type: Telnyx::PhoneNumberBlocks::Job::Type | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete_phone_number_block_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.phone_number_blocks.jobs.delete_phone_number_block(
        phone_number_block_id: "f3946371-7199-4261-9c3d-81a0d7935146"
      )

    assert_pattern do
      response => Telnyx::Models::PhoneNumberBlocks::JobDeletePhoneNumberBlockResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumberBlocks::Job | nil
      }
    end
  end
end
