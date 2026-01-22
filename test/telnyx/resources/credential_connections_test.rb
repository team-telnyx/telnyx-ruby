# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CredentialConnectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.credential_connections.create(
        connection_name: "my name",
        password: "my123secure456password789",
        user_name: "myusername123"
      )

    assert_pattern do
      response => Telnyx::Models::CredentialConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CredentialConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.credential_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::CredentialConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CredentialConnection | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.credential_connections.update("id")

    assert_pattern do
      response => Telnyx::Models::CredentialConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CredentialConnection | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.credential_connections.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::CredentialConnection
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        anchorsite_override: Telnyx::AnchorsiteOverride | nil,
        call_cost_in_webhooks: Telnyx::Internal::Type::Boolean | nil,
        connection_name: String | nil,
        created_at: String | nil,
        default_on_hold_comfort_noise_enabled: Telnyx::Internal::Type::Boolean | nil,
        dtmf_type: Telnyx::DtmfType | nil,
        encode_contact_header_enabled: Telnyx::Internal::Type::Boolean | nil,
        encrypted_media: Telnyx::EncryptedMedia | nil,
        inbound: Telnyx::CredentialInbound | nil,
        noise_suppression: Telnyx::CredentialConnection::NoiseSuppression | nil,
        noise_suppression_details: Telnyx::ConnectionNoiseSuppressionDetails | nil,
        onnet_t38_passthrough_enabled: Telnyx::Internal::Type::Boolean | nil,
        outbound: Telnyx::CredentialOutbound | nil,
        password: String | nil,
        record_type: String | nil,
        rtcp_settings: Telnyx::ConnectionRtcpSettings | nil,
        sip_uri_calling_preference: Telnyx::CredentialConnection::SipUriCallingPreference | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: String | nil,
        user_name: String | nil,
        webhook_api_version: Telnyx::CredentialConnection::WebhookAPIVersion | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.credential_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::CredentialConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CredentialConnection | nil
      }
    end
  end
end
