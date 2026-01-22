# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::VersionsTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.versions.retrieve("version_id", assistant_id: "assistant_id")

    assert_pattern do
      response => Telnyx::AI::InferenceEmbedding
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        instructions: String,
        model: String,
        name: String,
        description: String | nil,
        dynamic_variables: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        dynamic_variables_webhook_url: String | nil,
        enabled_features: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::EnabledFeatures]) | nil,
        greeting: String | nil,
        import_metadata: Telnyx::AI::ImportMetadata | nil,
        insight_settings: Telnyx::AI::InsightSettings | nil,
        llm_api_key_ref: String | nil,
        messaging_settings: Telnyx::AI::MessagingSettings | nil,
        privacy_settings: Telnyx::AI::PrivacySettings | nil,
        telephony_settings: Telnyx::AI::TelephonySettings | nil,
        tools: ^(Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantTool]) | nil,
        transcription: Telnyx::AI::TranscriptionSettings | nil,
        voice_settings: Telnyx::AI::VoiceSettings | nil,
        widget_settings: Telnyx::AI::WidgetSettings | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.versions.update("version_id", assistant_id: "assistant_id")

    assert_pattern do
      response => Telnyx::AI::InferenceEmbedding
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        instructions: String,
        model: String,
        name: String,
        description: String | nil,
        dynamic_variables: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        dynamic_variables_webhook_url: String | nil,
        enabled_features: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::EnabledFeatures]) | nil,
        greeting: String | nil,
        import_metadata: Telnyx::AI::ImportMetadata | nil,
        insight_settings: Telnyx::AI::InsightSettings | nil,
        llm_api_key_ref: String | nil,
        messaging_settings: Telnyx::AI::MessagingSettings | nil,
        privacy_settings: Telnyx::AI::PrivacySettings | nil,
        telephony_settings: Telnyx::AI::TelephonySettings | nil,
        tools: ^(Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantTool]) | nil,
        transcription: Telnyx::AI::TranscriptionSettings | nil,
        voice_settings: Telnyx::AI::VoiceSettings | nil,
        widget_settings: Telnyx::AI::WidgetSettings | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.versions.list("assistant_id")

    assert_pattern do
      response => Telnyx::AI::AssistantsList
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::InferenceEmbedding])
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.versions.delete("version_id", assistant_id: "assistant_id")

    assert_pattern do
      response => nil
    end
  end

  def test_promote_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.versions.promote("version_id", assistant_id: "assistant_id")

    assert_pattern do
      response => Telnyx::AI::InferenceEmbedding
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        instructions: String,
        model: String,
        name: String,
        description: String | nil,
        dynamic_variables: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        dynamic_variables_webhook_url: String | nil,
        enabled_features: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::EnabledFeatures]) | nil,
        greeting: String | nil,
        import_metadata: Telnyx::AI::ImportMetadata | nil,
        insight_settings: Telnyx::AI::InsightSettings | nil,
        llm_api_key_ref: String | nil,
        messaging_settings: Telnyx::AI::MessagingSettings | nil,
        privacy_settings: Telnyx::AI::PrivacySettings | nil,
        telephony_settings: Telnyx::AI::TelephonySettings | nil,
        tools: ^(Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantTool]) | nil,
        transcription: Telnyx::AI::TranscriptionSettings | nil,
        voice_settings: Telnyx::AI::VoiceSettings | nil,
        widget_settings: Telnyx::AI::WidgetSettings | nil
      }
    end
  end
end
