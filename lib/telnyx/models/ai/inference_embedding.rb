# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#create
      class InferenceEmbedding < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute instructions
        #   System instructions for the assistant. These may be templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #
        #   @return [String]
        required :instructions, String

        # @!attribute model
        #   ID of the model to use when `external_llm` is not set. You can use the
        #   [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
        #   to see available models. If `external_llm` is provided, the assistant uses
        #   `external_llm` instead of this field. If neither `model` nor `external_llm` is
        #   provided, Telnyx applies the default model.
        #
        #   @return [String]
        required :model, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute dynamic_variables
        #   Map of dynamic variables and their values
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :dynamic_variables, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute dynamic_variables_webhook_timeout_ms
        #   Timeout in milliseconds for the dynamic variables webhook. Must be between 1 and
        #   10000 ms. If the webhook does not respond within this timeout, the call proceeds
        #   with default values. See the
        #   [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
        #
        #   @return [Integer, nil]
        optional :dynamic_variables_webhook_timeout_ms, Integer

        # @!attribute dynamic_variables_webhook_url
        #   If `dynamic_variables_webhook_url` is set, Telnyx sends a POST request to this
        #   URL at the start of the conversation to resolve dynamic variables. **Gotcha:**
        #   the webhook response must wrap variables under a top-level `dynamic_variables`
        #   object, e.g. `{"dynamic_variables": {"customer_name": "Jane"}}`. Returning a
        #   flat object will be ignored and variables will fall back to their defaults. See
        #   the
        #   [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #   for the full request/response format and timeout behavior.
        #
        #   @return [String, nil]
        optional :dynamic_variables_webhook_url, String

        # @!attribute enabled_features
        #
        #   @return [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>, nil]
        optional :enabled_features, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::EnabledFeatures] }

        # @!attribute external_llm
        #
        #   @return [Telnyx::Models::AI::ExternalLlm, nil]
        optional :external_llm, -> { Telnyx::AI::ExternalLlm }

        # @!attribute fallback_config
        #
        #   @return [Telnyx::Models::AI::FallbackConfig, nil]
        optional :fallback_config, -> { Telnyx::AI::FallbackConfig }

        # @!attribute greeting
        #   Text that the assistant will use to start the conversation. This may be
        #   templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
        #   Use an empty string to have the assistant wait for the user to speak first. Use
        #   the special value `<assistant-speaks-first-with-model-generated-message>` to
        #   have the assistant generate the greeting based on the system instructions.
        #
        #   @return [String, nil]
        optional :greeting, String

        # @!attribute import_metadata
        #
        #   @return [Telnyx::Models::AI::ImportMetadata, nil]
        optional :import_metadata, -> { Telnyx::AI::ImportMetadata }

        # @!attribute insight_settings
        #
        #   @return [Telnyx::Models::AI::InsightSettings, nil]
        optional :insight_settings, -> { Telnyx::AI::InsightSettings }

        # @!attribute integrations
        #   Connected integrations attached to the assistant. The catalog of available
        #   integrations is at `/ai/integrations`; the user's connected integrations are at
        #   `/ai/integrations/connections`. Each item references a catalog integration by
        #   `integration_id`.
        #
        #   @return [Array<Telnyx::Models::AI::AssistantIntegration>, nil]
        optional :integrations, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantIntegration] }

        # @!attribute interruption_settings
        #   Settings for interruptions and how the assistant decides the user has finished
        #   speaking. These timings are most relevant when using non turn-taking
        #   transcription models. For turn-taking models like `deepgram/flux`, end-of-turn
        #   behavior is controlled by the transcription end-of-turn settings under
        #   `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
        #   `eager_eot_threshold`).
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingInterruptionSettings, nil]
        optional :interruption_settings, -> { Telnyx::AI::InferenceEmbeddingInterruptionSettings }

        # @!attribute llm_api_key_ref
        #   This is only needed when using third-party inference providers selected by
        #   `model`. The `identifier` for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        #   that refers to your LLM provider's API key. For bring-your-own endpoint
        #   authentication, use `external_llm.llm_api_key_ref` instead. Warning: Free plans
        #   are unlikely to work with this integration.
        #
        #   @return [String, nil]
        optional :llm_api_key_ref, String

        # @!attribute mcp_servers
        #   MCP servers attached to the assistant. Create MCP servers with
        #   `/ai/mcp_servers`, then reference them by `id` here.
        #
        #   @return [Array<Telnyx::Models::AI::AssistantMcpServer>, nil]
        optional :mcp_servers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantMcpServer] }

        # @!attribute messaging_settings
        #
        #   @return [Telnyx::Models::AI::MessagingSettings, nil]
        optional :messaging_settings, -> { Telnyx::AI::MessagingSettings }

        # @!attribute observability_settings
        #
        #   @return [Telnyx::Models::AI::Observability, nil]
        optional :observability_settings, -> { Telnyx::AI::Observability }

        # @!attribute post_conversation_settings
        #   Configuration for post-conversation processing. When enabled, the assistant
        #   receives one additional LLM turn after the conversation ends, allowing it to
        #   execute tool calls such as logging to a CRM or sending a summary. The assistant
        #   can execute multiple parallel or sequential tools during this phase.
        #   Telephony-control tools (e.g. hangup, transfer) are unavailable
        #   post-conversation. Beta feature.
        #
        #   @return [Telnyx::Models::AI::PostConversationSettings, nil]
        optional :post_conversation_settings, -> { Telnyx::AI::PostConversationSettings }

        # @!attribute privacy_settings
        #
        #   @return [Telnyx::Models::AI::PrivacySettings, nil]
        optional :privacy_settings, -> { Telnyx::AI::PrivacySettings }

        # @!attribute related_mission_ids
        #   IDs of missions related to this assistant.
        #
        #   @return [Array<String>, nil]
        optional :related_mission_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute tags
        #   Tags associated with the assistant. Tags can also be managed with the assistant
        #   tag endpoints.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute telephony_settings
        #
        #   @return [Telnyx::Models::AI::TelephonySettings, nil]
        optional :telephony_settings, -> { Telnyx::AI::TelephonySettings }

        # @!attribute tools
        #   Deprecated for new integrations. Inline tool definitions available to the
        #   assistant. Prefer `tool_ids` to attach shared tools created with the AI Tools
        #   endpoints.
        #
        #   @return [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn>, nil]
        optional :tools, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantTool] }

        # @!attribute transcription
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettings, nil]
        optional :transcription, -> { Telnyx::AI::TranscriptionSettings }

        # @!attribute version_created_at
        #   Timestamp when this assistant version was created.
        #
        #   @return [Time, nil]
        optional :version_created_at, Time

        # @!attribute version_id
        #   Identifier for the assistant version returned by version-aware assistant
        #   endpoints.
        #
        #   @return [String, nil]
        optional :version_id, String

        # @!attribute version_name
        #   Human-readable name for the assistant version.
        #
        #   @return [String, nil]
        optional :version_name, String

        # @!attribute voice_settings
        #
        #   @return [Telnyx::Models::AI::VoiceSettings, nil]
        optional :voice_settings, -> { Telnyx::AI::VoiceSettings }

        # @!attribute widget_settings
        #   Configuration settings for the assistant's web widget.
        #
        #   @return [Telnyx::Models::AI::WidgetSettings, nil]
        optional :widget_settings, -> { Telnyx::AI::WidgetSettings }

        # @!method initialize(id:, created_at:, instructions:, model:, name:, description: nil, dynamic_variables: nil, dynamic_variables_webhook_timeout_ms: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, external_llm: nil, fallback_config: nil, greeting: nil, import_metadata: nil, insight_settings: nil, integrations: nil, interruption_settings: nil, llm_api_key_ref: nil, mcp_servers: nil, messaging_settings: nil, observability_settings: nil, post_conversation_settings: nil, privacy_settings: nil, related_mission_ids: nil, tags: nil, telephony_settings: nil, tools: nil, transcription: nil, version_created_at: nil, version_id: nil, version_name: nil, voice_settings: nil, widget_settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::InferenceEmbedding} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param instructions [String] System instructions for the assistant. These may be templated with [dynamic vari
        #
        #   @param model [String] ID of the model to use when `external_llm` is not set. You can use the [Get mode
        #
        #   @param name [String]
        #
        #   @param description [String]
        #
        #   @param dynamic_variables [Hash{Symbol=>Object}] Map of dynamic variables and their values
        #
        #   @param dynamic_variables_webhook_timeout_ms [Integer] Timeout in milliseconds for the dynamic variables webhook. Must be between 1 and
        #
        #   @param dynamic_variables_webhook_url [String] If `dynamic_variables_webhook_url` is set, Telnyx sends a POST request to this U
        #
        #   @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>]
        #
        #   @param external_llm [Telnyx::Models::AI::ExternalLlm]
        #
        #   @param fallback_config [Telnyx::Models::AI::FallbackConfig]
        #
        #   @param greeting [String] Text that the assistant will use to start the conversation. This may be template
        #
        #   @param import_metadata [Telnyx::Models::AI::ImportMetadata]
        #
        #   @param insight_settings [Telnyx::Models::AI::InsightSettings]
        #
        #   @param integrations [Array<Telnyx::Models::AI::AssistantIntegration>] Connected integrations attached to the assistant. The catalog of available integ
        #
        #   @param interruption_settings [Telnyx::Models::AI::InferenceEmbeddingInterruptionSettings] Settings for interruptions and how the assistant decides the user has finished s
        #
        #   @param llm_api_key_ref [String] This is only needed when using third-party inference providers selected by `mode
        #
        #   @param mcp_servers [Array<Telnyx::Models::AI::AssistantMcpServer>] MCP servers attached to the assistant. Create MCP servers with `/ai/mcp_servers`
        #
        #   @param messaging_settings [Telnyx::Models::AI::MessagingSettings]
        #
        #   @param observability_settings [Telnyx::Models::AI::Observability]
        #
        #   @param post_conversation_settings [Telnyx::Models::AI::PostConversationSettings] Configuration for post-conversation processing. When enabled, the assistant rece
        #
        #   @param privacy_settings [Telnyx::Models::AI::PrivacySettings]
        #
        #   @param related_mission_ids [Array<String>] IDs of missions related to this assistant.
        #
        #   @param tags [Array<String>] Tags associated with the assistant. Tags can also be managed with the assistant
        #
        #   @param telephony_settings [Telnyx::Models::AI::TelephonySettings]
        #
        #   @param tools [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn>] Deprecated for new integrations. Inline tool definitions available to the assist
        #
        #   @param transcription [Telnyx::Models::AI::TranscriptionSettings]
        #
        #   @param version_created_at [Time] Timestamp when this assistant version was created.
        #
        #   @param version_id [String] Identifier for the assistant version returned by version-aware assistant endpoin
        #
        #   @param version_name [String] Human-readable name for the assistant version.
        #
        #   @param voice_settings [Telnyx::Models::AI::VoiceSettings]
        #
        #   @param widget_settings [Telnyx::Models::AI::WidgetSettings] Configuration settings for the assistant's web widget.
      end
    end
  end
end
