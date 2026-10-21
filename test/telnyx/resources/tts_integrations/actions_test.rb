# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::TtsIntegrations::ActionsTest < Telnyx::Test::ResourceTest
  def test_disable
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.actions.disable("id")

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

  def test_enable
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.actions.enable("id")

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

  def test_refresh_voices
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.actions.refresh_voices("id")

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

  def test_request_review
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.actions.request_review("id")

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

  def test_test_connection_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.tts_integrations.actions.test_connection("id", api_key_ref: "acme-engine-key")

    assert_pattern do
      response => Telnyx::TtsIntegrations::CommunityTtsConformanceRun
    end

    assert_pattern do
      response => {
        id: String,
        checks: ^(Telnyx::Internal::Type::HashOf[enum: Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check]),
        kind: Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Kind,
        success: Telnyx::Internal::Type::Boolean,
        error: String | nil,
        latency_ms: Integer | nil,
        started_at: Time | nil,
        time_to_first_audio_ms: Integer | nil,
        voice_id: String | nil
      }
    end
  end
end
