# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Dir::PhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.dir.phone_numbers.list("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Dir::PhoneNumberListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        batch_id: String | nil,
        created_at: Time | nil,
        dir_id: String | nil,
        enterprise_id: String | nil,
        loa_document_id: String | nil,
        phone_number: String | nil,
        rejection_reason: Telnyx::Models::Dir::PhoneNumberListResponse::RejectionReason | nil,
        status: Telnyx::Models::Dir::PhoneNumberListResponse::Status | nil,
        updated_at: Time | nil,
        verified_at: Time | nil
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dir.phone_numbers.add(
        "16635d38-75a6-4481-82e8-69af60e05011",
        documents: [
          {
            document_id: "2a7e8337-e803-4057-a4ae-26c40eb0bc6c",
            document_type: :letter_of_authorization
          }
        ],
        phone_numbers: ["+19493253498", "+12134445566"]
      )

    assert_pattern do
      response => Telnyx::Models::Dir::PhoneNumberAddResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::PhoneNumberAddResponse::Data])
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dir.phone_numbers.remove(
        "16635d38-75a6-4481-82e8-69af60e05011",
        phone_numbers: ["+19493253498"]
      )

    assert_pattern do
      response => Telnyx::Models::Dir::PhoneNumberRemoveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[String]),
        meta: Telnyx::Models::Dir::PhoneNumberRemoveResponse::Meta
      }
    end
  end
end
