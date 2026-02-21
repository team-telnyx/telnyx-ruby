# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AlphanumericSenderIDsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.alphanumeric_sender_ids.create(
        alphanumeric_sender_id: "MyCompany",
        messaging_profile_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AlphanumericSenderIDCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AlphanumericSenderIDCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.alphanumeric_sender_ids.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::AlphanumericSenderIDRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AlphanumericSenderIDRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.alphanumeric_sender_ids.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AlphanumericSenderIDListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        alphanumeric_sender_id: String | nil,
        messaging_profile_id: String | nil,
        organization_id: String | nil,
        record_type: Telnyx::Models::AlphanumericSenderIDListResponse::RecordType | nil,
        us_long_code_fallback: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.alphanumeric_sender_ids.delete("id")

    assert_pattern do
      response => Telnyx::Models::AlphanumericSenderIDDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AlphanumericSenderIDDeleteResponse::Data | nil
      }
    end
  end
end
