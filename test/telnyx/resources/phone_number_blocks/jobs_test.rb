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
      response => Telnyx::Models::PhoneNumberBlocks::JobListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberBlocks::Job]) | nil,
        meta: Telnyx::PaginationMeta | nil
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
