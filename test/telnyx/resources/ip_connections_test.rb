# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::IPConnectionsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.create

    assert_pattern do
      response => Telnyx::Models::IPConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IPConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::IPConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IPConnection | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.update("id")

    assert_pattern do
      response => Telnyx::Models::IPConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IPConnection | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::IPConnection
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        anchorsite_override: Telnyx::AnchorsiteOverride | nil,
        android_push_credential_id: String | nil,
        call_cost_in_webhooks: Telnyx::Internal::Type::Boolean | nil,
        connection_name: String | nil,
        created_at: String | nil,
        default_on_hold_comfort_noise_enabled: Telnyx::Internal::Type::Boolean | nil,
        dtmf_type: Telnyx::DtmfType | nil,
        encode_contact_header_enabled: Telnyx::Internal::Type::Boolean | nil,
        encrypted_media: Telnyx::EncryptedMedia | nil,
        inbound: Telnyx::InboundIP | nil,
        ios_push_credential_id: String | nil,
        jitter_buffer: Telnyx::IPConnection::JitterBuffer | nil,
        noise_suppression: Telnyx::IPConnection::NoiseSuppression | nil,
        noise_suppression_details: Telnyx::ConnectionNoiseSuppressionDetails | nil,
        onnet_t38_passthrough_enabled: Telnyx::Internal::Type::Boolean | nil,
        outbound: Telnyx::OutboundIP | nil,
        record_type: String | nil,
        rtcp_settings: Telnyx::ConnectionRtcpSettings | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        transport_protocol: Telnyx::IPConnection::TransportProtocol | nil,
        updated_at: String | nil,
        webhook_api_version: Telnyx::IPConnection::WebhookAPIVersion | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::IPConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IPConnection | nil
      }
    end
  end
end
