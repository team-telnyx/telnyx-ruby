# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ConnectionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::ConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ConnectionRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.connections.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::ConnectionListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        anchorsite_override: Telnyx::AnchorsiteOverride | nil,
        connection_name: String | nil,
        created_at: String | nil,
        outbound_voice_profile_id: String | nil,
        record_type: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: String | nil,
        webhook_api_version: Telnyx::Models::ConnectionListResponse::WebhookAPIVersion | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil
      }
    end
  end

  def test_list_active_calls
    skip("Prism tests are disabled")

    response = @telnyx.connections.list_active_calls("1293384261075731461")

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::ConnectionListActiveCallsResponse
    end

    assert_pattern do
      row => {
        call_control_id: String,
        call_duration: Integer,
        call_leg_id: String,
        call_session_id: String,
        client_state: String,
        record_type: Telnyx::Models::ConnectionListActiveCallsResponse::RecordType
      }
    end
  end
end
