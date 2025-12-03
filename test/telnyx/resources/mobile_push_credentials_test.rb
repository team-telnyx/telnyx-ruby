# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MobilePushCredentialsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.mobile_push_credentials.create(
        alias_: "LucyIosCredential",
        certificate: "-----BEGIN CERTIFICATE----- MIIGVDCCBTKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END CERTIFICATE-----",
        private_key: "-----BEGIN RSA PRIVATE KEY----- MIIEpQIBAAKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END RSA PRIVATE KEY-----",
        type: :ios
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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.mobile_push_credentials.list

    assert_pattern do
      response => Telnyx::Models::MobilePushCredentialListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PushCredential]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.mobile_push_credentials.delete("0ccc7b76-4df3-4bca-a05a-3da1ecc389f0")

    assert_pattern do
      response => nil
    end
  end
end
