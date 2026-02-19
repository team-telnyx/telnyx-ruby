# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::AssistantsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.create(instructions: "instructions", model: "model", name: "name")

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

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.retrieve("assistant_id")

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

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.update("assistant_id")

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
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.list

    assert_pattern do
      response => Telnyx::AI::AssistantsList
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::InferenceEmbedding])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.delete("assistant_id")

    assert_pattern do
      response => Telnyx::Models::AI::AssistantDeleteResponse
    end

    assert_pattern do
      response => {
        id: String,
        deleted: Telnyx::Internal::Type::Boolean,
        object: String
      }
    end
  end

  def test_chat_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.assistants.chat(
        "assistant_id",
        content: "Tell me a joke about cats",
        conversation_id: "42b20469-1215-4a9a-8964-c36f66b406f4"
      )

    assert_pattern do
      response => Telnyx::Models::AI::AssistantChatResponse
    end

    assert_pattern do
      response => {
        content: String
      }
    end
  end

  def test_clone_
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.clone_("assistant_id")

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

  def test_get_texml
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.get_texml("assistant_id")

    assert_pattern do
      response => String
    end
  end

  def test_imports_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.imports(api_key_ref: "api_key_ref", provider: :elevenlabs)

    assert_pattern do
      response => Telnyx::AI::AssistantsList
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::InferenceEmbedding])
      }
    end
  end

  def test_send_sms_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.send_sms("assistant_id", from: "from", to: "to")

    assert_pattern do
      response => Telnyx::Models::AI::AssistantSendSMSResponse
    end

    assert_pattern do
      response => {
        conversation_id: String | nil
      }
    end
  end
end
