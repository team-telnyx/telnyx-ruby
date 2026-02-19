# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ExternalConnectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.create(external_sip_connection: :zoom, outbound: {})

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnection | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.external_connections.update(
        "id",
        outbound: {outbound_voice_profile_id: "outbound_voice_profile_id"}
      )

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnection | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::ExternalConnection
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        created_at: String | nil,
        credential_active: Telnyx::Internal::Type::Boolean | nil,
        external_sip_connection: Telnyx::ExternalConnection::ExternalSipConnection | nil,
        inbound: Telnyx::ExternalConnection::Inbound | nil,
        outbound: Telnyx::ExternalConnection::Outbound | nil,
        record_type: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: String | nil,
        webhook_api_version: Telnyx::ExternalConnection::WebhookAPIVersion | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnection | nil
      }
    end
  end

  def test_update_location_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.external_connections.update_location(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        static_emergency_address_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::ExternalConnectionUpdateLocationResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data | nil
      }
    end
  end
end
