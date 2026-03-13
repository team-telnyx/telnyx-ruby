# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Whatsapp::BusinessAccountsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.business_accounts.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.business_accounts.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Whatsapp::BusinessAccountListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        account_review_status: String | nil,
        business_verification_status: String | nil,
        country: String | nil,
        created_at: Time | nil,
        name: String | nil,
        phone_numbers_count: Integer | nil,
        record_type: String | nil,
        status: String | nil,
        waba_id: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.business_accounts.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
