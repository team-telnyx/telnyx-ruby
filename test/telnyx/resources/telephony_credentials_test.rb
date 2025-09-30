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
      response => Telnyx::Models::TelephonyCredentialListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::TelephonyCredential]) | nil,
        meta: Telnyx::PaginationMeta | nil
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
