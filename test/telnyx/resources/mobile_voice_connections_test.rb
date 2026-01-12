# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MobileVoiceConnectionsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.create

    assert_pattern do
      response => Telnyx::Models::MobileVoiceConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MobileVoiceConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::MobileVoiceConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MobileVoiceConnection | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.update("id")

    assert_pattern do
      response => Telnyx::Models::MobileVoiceConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MobileVoiceConnection | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::MobileVoiceConnection
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        connection_name: String | nil,
        created_at: Time | nil,
        inbound: Telnyx::MobileVoiceConnection::Inbound | nil,
        outbound: Telnyx::MobileVoiceConnection::Outbound | nil,
        record_type: Telnyx::MobileVoiceConnection::RecordType | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: Time | nil,
        webhook_api_version: Telnyx::MobileVoiceConnection::WebhookAPIVersion | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.mobile_voice_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::MobileVoiceConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MobileVoiceConnection | nil
      }
    end
  end
end
