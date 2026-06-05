# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Dir::PhoneNumberBatchesTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dir.phone_number_batches.retrieve(
        "0a4b1f5e-2f12-4c0c-9a98-9b3a7d8b8e62",
        dir_id: "16635d38-75a6-4481-82e8-69af60e05011"
      )

    assert_pattern do
      response => Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.dir.phone_number_batches.list("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Dir::PhoneNumberBatchListResponse
    end

    assert_pattern do
      row => {
        batch_id: String | nil,
        dir_display_name: String | nil,
        dir_id: String | nil,
        documents: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::PhoneNumberBatchListResponse::Document]) | nil,
        enterprise_id: String | nil,
        phone_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::PhoneNumberBatchListResponse::PhoneNumber]) | nil,
        status: Telnyx::Models::Dir::PhoneNumberBatchListResponse::Status | nil,
        submitted_at: Time | nil,
        total_count: Integer | nil
      }
    end
  end
end
