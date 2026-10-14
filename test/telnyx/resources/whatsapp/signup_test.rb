# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Whatsapp::SignupTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.signup.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Whatsapp::SignupListResponse
    end

    assert_pattern do
      row => {
        created_at: Time | nil,
        customer_id: String | nil,
        errors: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        record_type: Telnyx::Models::Whatsapp::SignupListResponse::RecordType | nil,
        session_id: String | nil,
        state: Telnyx::Models::Whatsapp::SignupListResponse::State | nil,
        status: Telnyx::Models::Whatsapp::SignupListResponse::Status | nil,
        updated_at: Time | nil,
        user_id: String | nil,
        waba_id: String | nil
      }
    end
  end

  def test_retrieve_status
    skip("Mock server tests are disabled")

    response = @telnyx.whatsapp.signup.retrieve_status("id")

    assert_pattern do
      response => Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data | nil
      }
    end
  end
end
