# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TtsIntegrationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.tts_integrations.create(
        capabilities: {streamed_audio: true},
        name: "acme",
        supported_audio_formats: [:linear16],
        voices_url: "https://tts.acme.example/voices",
        websocket_url: "wss://tts.acme.example/v1"
      )

    assert_pattern do
      response => Telnyx::CommunityTtsEngine
    end

    assert_pattern do
      response => {
        id: String,
        capabilities: Telnyx::CommunityTtsEngineCapabilities,
        name: String,
        status: Telnyx::CommunityTtsEngineStatus,
        supported_audio_formats: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::CommunityTtsAudioFormat]),
        visibility: Telnyx::CommunityTtsEngineVisibility,
        voices_url: String,
        websocket_url: String,
        connect_timeout_ms: Integer | nil,
        contact_email: String | nil,
        created_at: Time | nil,
        data_retention_policy_url: String | nil,
        documentation_url: String | nil,
        review_notes: String | nil,
        review_status: Telnyx::CommunityTtsEngine::ReviewStatus | nil,
        reviewed_at: Time | nil,
        updated_at: Time | nil,
        voices_api_key_ref: String | nil,
        voices_count: Integer | nil,
        voices_degraded: Telnyx::Internal::Type::Boolean | nil,
        voices_fetched_at: Time | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.retrieve("id")

    assert_pattern do
      response => Telnyx::CommunityTtsEngine
    end

    assert_pattern do
      response => {
        id: String,
        capabilities: Telnyx::CommunityTtsEngineCapabilities,
        name: String,
        status: Telnyx::CommunityTtsEngineStatus,
        supported_audio_formats: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::CommunityTtsAudioFormat]),
        visibility: Telnyx::CommunityTtsEngineVisibility,
        voices_url: String,
        websocket_url: String,
        connect_timeout_ms: Integer | nil,
        contact_email: String | nil,
        created_at: Time | nil,
        data_retention_policy_url: String | nil,
        documentation_url: String | nil,
        review_notes: String | nil,
        review_status: Telnyx::CommunityTtsEngine::ReviewStatus | nil,
        reviewed_at: Time | nil,
        updated_at: Time | nil,
        voices_api_key_ref: String | nil,
        voices_count: Integer | nil,
        voices_degraded: Telnyx::Internal::Type::Boolean | nil,
        voices_fetched_at: Time | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.update("id")

    assert_pattern do
      response => Telnyx::CommunityTtsEngine
    end

    assert_pattern do
      response => {
        id: String,
        capabilities: Telnyx::CommunityTtsEngineCapabilities,
        name: String,
        status: Telnyx::CommunityTtsEngineStatus,
        supported_audio_formats: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::CommunityTtsAudioFormat]),
        visibility: Telnyx::CommunityTtsEngineVisibility,
        voices_url: String,
        websocket_url: String,
        connect_timeout_ms: Integer | nil,
        contact_email: String | nil,
        created_at: Time | nil,
        data_retention_policy_url: String | nil,
        documentation_url: String | nil,
        review_notes: String | nil,
        review_status: Telnyx::CommunityTtsEngine::ReviewStatus | nil,
        reviewed_at: Time | nil,
        updated_at: Time | nil,
        voices_api_key_ref: String | nil,
        voices_count: Integer | nil,
        voices_degraded: Telnyx::Internal::Type::Boolean | nil,
        voices_fetched_at: Time | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.list

    assert_pattern do
      response => Telnyx::Models::TtsIntegrationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::CommunityTtsEngine]),
        meta: Telnyx::CommunityTtsEngineListMeta
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.delete("id")

    assert_pattern do
      response => nil
    end
  end

  def test_replace
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.replace("id")

    assert_pattern do
      response => Telnyx::CommunityTtsEngine
    end

    assert_pattern do
      response => {
        id: String,
        capabilities: Telnyx::CommunityTtsEngineCapabilities,
        name: String,
        status: Telnyx::CommunityTtsEngineStatus,
        supported_audio_formats: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::CommunityTtsAudioFormat]),
        visibility: Telnyx::CommunityTtsEngineVisibility,
        voices_url: String,
        websocket_url: String,
        connect_timeout_ms: Integer | nil,
        contact_email: String | nil,
        created_at: Time | nil,
        data_retention_policy_url: String | nil,
        documentation_url: String | nil,
        review_notes: String | nil,
        review_status: Telnyx::CommunityTtsEngine::ReviewStatus | nil,
        reviewed_at: Time | nil,
        updated_at: Time | nil,
        voices_api_key_ref: String | nil,
        voices_count: Integer | nil,
        voices_degraded: Telnyx::Internal::Type::Boolean | nil,
        voices_fetched_at: Time | nil
      }
    end
  end

  def test_retrieve_conformance_runs
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.retrieve_conformance_runs("id")

    assert_pattern do
      response => Telnyx::Models::TtsIntegrationRetrieveConformanceRunsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::TtsIntegrations::CommunityTtsConformanceRun]),
        meta: Telnyx::CommunityTtsEngineListMeta
      }
    end
  end

  def test_retrieve_discoverable
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.retrieve_discoverable

    assert_pattern do
      response => Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse::Data]),
        meta: Telnyx::CommunityTtsEngineListMeta
      }
    end
  end

  def test_retrieve_voices
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.retrieve_voices("id")

    assert_pattern do
      response => Telnyx::Models::TtsIntegrationRetrieveVoicesResponse
    end

    assert_pattern do
      response => {
        voices: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TtsIntegrationRetrieveVoicesResponse::Voice])
      }
    end
  end
end
