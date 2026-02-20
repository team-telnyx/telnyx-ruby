# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::FqdnConnectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.fqdn_connections.create(connection_name: "string")

    assert_pattern do
      response => Telnyx::Models::FqdnConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.fqdn_connections.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::FqdnConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnection | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.fqdn_connections.update("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::FqdnConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnection | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.fqdn_connections.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::FqdnConnection
    end

    assert_pattern do
      row => {
        connection_name: String,
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        adjust_dtmf_timestamp: Telnyx::Internal::Type::Boolean | nil,
        anchorsite_override: Telnyx::AnchorsiteOverride | nil,
        android_push_credential_id: String | nil,
        call_cost_enabled: Telnyx::Internal::Type::Boolean | nil,
        call_cost_in_webhooks: Telnyx::Internal::Type::Boolean | nil,
        created_at: String | nil,
        default_on_hold_comfort_noise_enabled: Telnyx::Internal::Type::Boolean | nil,
        dtmf_type: Telnyx::DtmfType | nil,
        encode_contact_header_enabled: Telnyx::Internal::Type::Boolean | nil,
        encrypted_media: Telnyx::EncryptedMedia | nil,
        ignore_dtmf_duration: Telnyx::Internal::Type::Boolean | nil,
        ignore_mark_bit: Telnyx::Internal::Type::Boolean | nil,
        inbound: Telnyx::InboundFqdn | nil,
        ios_push_credential_id: String | nil,
        jitter_buffer: Telnyx::ConnectionJitterBuffer | nil,
        microsoft_teams_sbc: Telnyx::Internal::Type::Boolean | nil,
        noise_suppression: Telnyx::FqdnConnection::NoiseSuppression | nil,
        noise_suppression_details: Telnyx::ConnectionNoiseSuppressionDetails | nil,
        onnet_t38_passthrough_enabled: Telnyx::Internal::Type::Boolean | nil,
        outbound: Telnyx::OutboundFqdn | nil,
        password: String | nil,
        record_type: String | nil,
        rtcp_settings: Telnyx::ConnectionRtcpSettings | nil,
        rtp_pass_codecs_on_stream_change: Telnyx::Internal::Type::Boolean | nil,
        send_normalized_timestamps: Telnyx::Internal::Type::Boolean | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        third_party_control_enabled: Telnyx::Internal::Type::Boolean | nil,
        transport_protocol: Telnyx::TransportProtocol | nil,
        txt_name: String | nil,
        txt_ttl: Integer | nil,
        txt_value: String | nil,
        updated_at: String | nil,
        user_name: String | nil,
        webhook_api_version: Telnyx::WebhookAPIVersion | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.fqdn_connections.delete("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::FqdnConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnection | nil
      }
    end
  end
end
