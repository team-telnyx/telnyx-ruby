# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::UacConnectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.uac_connections.create(connection_name: "my name")

    assert_pattern do
      response => Telnyx::Models::UacConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UacConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.uac_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::UacConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UacConnection | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.uac_connections.update("id")

    assert_pattern do
      response => Telnyx::Models::UacConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UacConnection | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.uac_connections.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::UacConnection
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        anchorsite_override: Telnyx::AnchorsiteOverride | nil,
        android_push_credential_id: String | nil,
        authentication: Telnyx::UacConnection::Authentication | nil,
        call_cost_in_webhooks: Telnyx::Internal::Type::Boolean | nil,
        connection_name: String | nil,
        created_at: String | nil,
        default_on_hold_comfort_noise_enabled: Telnyx::Internal::Type::Boolean | nil,
        dtmf_type: Telnyx::DtmfType | nil,
        encode_contact_header_enabled: Telnyx::Internal::Type::Boolean | nil,
        encrypted_media: Telnyx::EncryptedMedia | nil,
        external_uac_settings: Telnyx::UacExternalSettings | nil,
        fqdn: String | nil,
        fqdn_outbound_authentication: Telnyx::UacConnection::FqdnOutboundAuthentication | nil,
        fqdns: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Fqdn]) | nil,
        inbound: Telnyx::UacInbound | nil,
        internal_uac_settings: Telnyx::UacInternalSettings | nil,
        ios_push_credential_id: String | nil,
        jitter_buffer: Telnyx::ConnectionJitterBuffer | nil,
        noise_suppression: Telnyx::ConnectionNoiseSuppression | nil,
        noise_suppression_details: Telnyx::ConnectionNoiseSuppressionDetails | nil,
        onnet_t38_passthrough_enabled: Telnyx::Internal::Type::Boolean | nil,
        outbound: Telnyx::UacOutbound | nil,
        password: String | nil,
        record_type: String | nil,
        registration_status: String | nil,
        registration_status_updated_at: String | nil,
        rtcp_settings: Telnyx::ConnectionRtcpSettings | nil,
        sip_uri_calling_preference: Telnyx::UacConnection::SipUriCallingPreference | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: String | nil,
        user_name: String | nil,
        webhook_api_version: Telnyx::UacConnection::WebhookAPIVersion | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.uac_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::UacConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UacConnection | nil
      }
    end
  end
end
