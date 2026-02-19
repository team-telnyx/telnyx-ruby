# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MobilePushCredentialsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.mobile_push_credentials.create(
        create_mobile_push_credential_request: {
          alias: "LucyIosCredential",
          certificate: "-----BEGIN CERTIFICATE----- MIIGVDCCBTKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END CERTIFICATE-----",
          private_key: "-----BEGIN RSA PRIVATE KEY----- MIIEpQIBAAKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END RSA PRIVATE KEY-----",
          type: :ios
        }
      )

    assert_pattern do
      response => Telnyx::PushCredentialResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PushCredential | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.mobile_push_credentials.retrieve("0ccc7b76-4df3-4bca-a05a-3da1ecc389f0")

    assert_pattern do
      response => Telnyx::PushCredentialResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PushCredential | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.mobile_push_credentials.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PushCredential
    end

    assert_pattern do
      row => {
        id: String,
        alias_: String,
        certificate: String,
        created_at: Time,
        private_key: String,
        project_account_json_file: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]),
        record_type: String,
        type: String,
        updated_at: Time
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.mobile_push_credentials.delete("0ccc7b76-4df3-4bca-a05a-3da1ecc389f0")

    assert_pattern do
      response => nil
    end
  end
end
