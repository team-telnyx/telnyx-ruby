# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TelephonyCredentialsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.telephony_credentials.create(connection_id: "1234567890")

    assert_pattern do
      response => Telnyx::Models::TelephonyCredentialCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TelephonyCredential | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.telephony_credentials.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::TelephonyCredentialRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TelephonyCredential | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.telephony_credentials.update("id")

    assert_pattern do
      response => Telnyx::Models::TelephonyCredentialUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TelephonyCredential | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.telephony_credentials.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::TelephonyCredential
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        expired: Telnyx::Internal::Type::Boolean | nil,
        expires_at: String | nil,
        name: String | nil,
        record_type: String | nil,
        resource_id: String | nil,
        sip_password: String | nil,
        sip_username: String | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.telephony_credentials.delete("id")

    assert_pattern do
      response => Telnyx::Models::TelephonyCredentialDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TelephonyCredential | nil
      }
    end
  end

  def test_create_token
    skip("Prism tests are disabled")

    response = @telnyx.telephony_credentials.create_token("id")

    assert_pattern do
      response => String
    end
  end
end
