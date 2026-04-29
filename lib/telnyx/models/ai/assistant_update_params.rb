# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#update
      class AssistantUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute assistant_id
        #
        #   @return [String]
        required :assistant_id, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute dynamic_variables
        #   Map of dynamic variables and their default values
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
        #   @return [Telnyx::Models::AI::AssistantUpdateParams::ExternalLlm, nil]
        optional :external_llm, -> { Telnyx::AI::AssistantUpdateParams::ExternalLlm }

        # @!attribute fallback_config
        #
        #   @return [Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig, nil]
        optional :fallback_config, -> { Telnyx::AI::AssistantUpdateParams::FallbackConfig }

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

        # @!attribute insight_settings
        #
        #   @return [Telnyx::Models::AI::InsightSettings, nil]
        optional :insight_settings, -> { Telnyx::AI::InsightSettings }

        # @!attribute instructions
        #   System instructions for the assistant. These may be templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #
        #   @return [String, nil]
        optional :instructions, String

        # @!attribute integrations
        #   Connected integrations attached to the assistant. The catalog of available
        #   integrations is at `/ai/integrations`; the user's connected integrations are at
        #   `/ai/integrations/connections`. Each item references a catalog integration by
        #   `integration_id`.
        #
        #   @return [Array<Telnyx::Models::AI::AssistantUpdateParams::Integration>, nil]
        optional :integrations,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantUpdateParams::Integration] }

        # @!attribute interruption_settings
        #   Settings for interruptions and how the assistant decides the user has finished
        #   speaking. These timings are most relevant when using non turn-taking
        #   transcription models. For turn-taking models like `deepgram/flux`, end-of-turn
        #   behavior is controlled by the transcription end-of-turn settings under
        #   `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
        #   `eager_eot_threshold`).
        #
        #   @return [Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings, nil]
        optional :interruption_settings, -> { Telnyx::AI::AssistantUpdateParams::InterruptionSettings }

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
        #   @return [Array<Telnyx::Models::AI::AssistantUpdateParams::McpServer>, nil]
        optional :mcp_servers,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantUpdateParams::McpServer] }

        # @!attribute messaging_settings
        #
        #   @return [Telnyx::Models::AI::MessagingSettings, nil]
        optional :messaging_settings, -> { Telnyx::AI::MessagingSettings }

        # @!attribute model
        #   ID of the model to use when `external_llm` is not set. You can use the
        #   [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
        #   to see available models. If `external_llm` is provided, the assistant uses
        #   `external_llm` instead of this field. If neither `model` nor `external_llm` is
        #   provided, Telnyx applies the default model.
        #
        #   @return [String, nil]
        optional :model, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute observability_settings
        #
        #   @return [Telnyx::Models::AI::ObservabilityReq, nil]
        optional :observability_settings, -> { Telnyx::AI::ObservabilityReq }

        # @!attribute post_conversation_settings
        #   Configuration for post-conversation processing. When enabled, the assistant
        #   receives one additional LLM turn after the conversation ends, allowing it to
        #   execute tool calls such as logging to a CRM or sending a summary. The assistant
        #   can execute multiple parallel or sequential tools during this phase.
        #   Telephony-control tools (e.g. hangup, transfer) are unavailable
        #   post-conversation. Beta feature.
        #
        #   @return [Telnyx::Models::AI::AssistantUpdateParams::PostConversationSettings, nil]
        optional :post_conversation_settings, -> { Telnyx::AI::AssistantUpdateParams::PostConversationSettings }

        # @!attribute privacy_settings
        #
        #   @return [Telnyx::Models::AI::PrivacySettings, nil]
        optional :privacy_settings, -> { Telnyx::AI::PrivacySettings }

        # @!attribute promote_to_main
        #   Indicates whether the assistant should be promoted to the main version. Defaults
        #   to true.
        #
        #   @return [Boolean, nil]
        optional :promote_to_main, Telnyx::Internal::Type::Boolean

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

        # @!attribute tool_ids
        #   IDs of shared tools to attach to the assistant. New integrations should prefer
        #   `tool_ids` over inline `tools`.
        #
        #   @return [Array<String>, nil]
        optional :tool_ids, Telnyx::Internal::Type::ArrayOf[String]

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

        # @!method initialize(assistant_id:, description: nil, dynamic_variables: nil, dynamic_variables_webhook_timeout_ms: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, external_llm: nil, fallback_config: nil, greeting: nil, insight_settings: nil, instructions: nil, integrations: nil, interruption_settings: nil, llm_api_key_ref: nil, mcp_servers: nil, messaging_settings: nil, model: nil, name: nil, observability_settings: nil, post_conversation_settings: nil, privacy_settings: nil, promote_to_main: nil, tags: nil, telephony_settings: nil, tool_ids: nil, tools: nil, transcription: nil, version_name: nil, voice_settings: nil, widget_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantUpdateParams} for more details.
        #
        #   @param assistant_id [String]
        #
        #   @param description [String]
        #
        #   @param dynamic_variables [Hash{Symbol=>Object}] Map of dynamic variables and their default values
        #
        #   @param dynamic_variables_webhook_timeout_ms [Integer] Timeout in milliseconds for the dynamic variables webhook. Must be between 1 and
        #
        #   @param dynamic_variables_webhook_url [String] If `dynamic_variables_webhook_url` is set, Telnyx sends a POST request to this U
        #
        #   @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>]
        #
        #   @param external_llm [Telnyx::Models::AI::AssistantUpdateParams::ExternalLlm]
        #
        #   @param fallback_config [Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig]
        #
        #   @param greeting [String] Text that the assistant will use to start the conversation. This may be template
        #
        #   @param insight_settings [Telnyx::Models::AI::InsightSettings]
        #
        #   @param instructions [String] System instructions for the assistant. These may be templated with [dynamic vari
        #
        #   @param integrations [Array<Telnyx::Models::AI::AssistantUpdateParams::Integration>] Connected integrations attached to the assistant. The catalog of available integ
        #
        #   @param interruption_settings [Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings] Settings for interruptions and how the assistant decides the user has finished s
        #
        #   @param llm_api_key_ref [String] This is only needed when using third-party inference providers selected by `mode
        #
        #   @param mcp_servers [Array<Telnyx::Models::AI::AssistantUpdateParams::McpServer>] MCP servers attached to the assistant. Create MCP servers with `/ai/mcp_servers`
        #
        #   @param messaging_settings [Telnyx::Models::AI::MessagingSettings]
        #
        #   @param model [String] ID of the model to use when `external_llm` is not set. You can use the [Get mode
        #
        #   @param name [String]
        #
        #   @param observability_settings [Telnyx::Models::AI::ObservabilityReq]
        #
        #   @param post_conversation_settings [Telnyx::Models::AI::AssistantUpdateParams::PostConversationSettings] Configuration for post-conversation processing. When enabled, the assistant rece
        #
        #   @param privacy_settings [Telnyx::Models::AI::PrivacySettings]
        #
        #   @param promote_to_main [Boolean] Indicates whether the assistant should be promoted to the main version. Defaults
        #
        #   @param tags [Array<String>] Tags associated with the assistant. Tags can also be managed with the assistant
        #
        #   @param telephony_settings [Telnyx::Models::AI::TelephonySettings]
        #
        #   @param tool_ids [Array<String>] IDs of shared tools to attach to the assistant. New integrations should prefer `
        #
        #   @param tools [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn>] Deprecated for new integrations. Inline tool definitions available to the assist
        #
        #   @param transcription [Telnyx::Models::AI::TranscriptionSettings]
        #
        #   @param version_name [String] Human-readable name for the assistant version.
        #
        #   @param voice_settings [Telnyx::Models::AI::VoiceSettings]
        #
        #   @param widget_settings [Telnyx::Models::AI::WidgetSettings] Configuration settings for the assistant's web widget.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class ExternalLlm < Telnyx::Internal::Type::BaseModel
          # @!attribute base_url
          #   Base URL for the external LLM endpoint.
          #
          #   @return [String]
          required :base_url, String

          # @!attribute model
          #   Model identifier to use with the external LLM endpoint.
          #
          #   @return [String]
          required :model, String

          # @!attribute authentication_method
          #   Authentication method used when connecting to the external LLM endpoint.
          #
          #   @return [Symbol, Telnyx::Models::AI::AssistantUpdateParams::ExternalLlm::AuthenticationMethod, nil]
          optional :authentication_method,
                   enum: -> { Telnyx::AI::AssistantUpdateParams::ExternalLlm::AuthenticationMethod }

          # @!attribute certificate_ref
          #   Integration secret identifier for the client certificate used with certificate
          #   authentication.
          #
          #   @return [String, nil]
          optional :certificate_ref, String

          # @!attribute forward_metadata
          #   When `true`, Telnyx forwards the assistant's dynamic variables to the external
          #   LLM endpoint as a top-level `extra_metadata` object on the chat completion
          #   request body. Defaults to `false`. Example payload sent to the external
          #   endpoint:
          #   `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
          #   Distinct from OpenAI's native `metadata` field, which has its own size and type
          #   limits.
          #
          #   @return [Boolean, nil]
          optional :forward_metadata, Telnyx::Internal::Type::Boolean

          # @!attribute llm_api_key_ref
          #   Integration secret identifier for the external LLM API key.
          #
          #   @return [String, nil]
          optional :llm_api_key_ref, String

          # @!attribute token_retrieval_url
          #   URL used to retrieve an access token when certificate authentication is enabled.
          #
          #   @return [String, nil]
          optional :token_retrieval_url, String

          # @!method initialize(base_url:, model:, authentication_method: nil, certificate_ref: nil, forward_metadata: nil, llm_api_key_ref: nil, token_retrieval_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantUpdateParams::ExternalLlm} for more details.
          #
          #   @param base_url [String] Base URL for the external LLM endpoint.
          #
          #   @param model [String] Model identifier to use with the external LLM endpoint.
          #
          #   @param authentication_method [Symbol, Telnyx::Models::AI::AssistantUpdateParams::ExternalLlm::AuthenticationMethod] Authentication method used when connecting to the external LLM endpoint.
          #
          #   @param certificate_ref [String] Integration secret identifier for the client certificate used with certificate a
          #
          #   @param forward_metadata [Boolean] When `true`, Telnyx forwards the assistant's dynamic variables to the external L
          #
          #   @param llm_api_key_ref [String] Integration secret identifier for the external LLM API key.
          #
          #   @param token_retrieval_url [String] URL used to retrieve an access token when certificate authentication is enabled.

          # Authentication method used when connecting to the external LLM endpoint.
          #
          # @see Telnyx::Models::AI::AssistantUpdateParams::ExternalLlm#authentication_method
          module AuthenticationMethod
            extend Telnyx::Internal::Type::Enum

            TOKEN = :token
            CERTIFICATE = :certificate

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class FallbackConfig < Telnyx::Internal::Type::BaseModel
          # @!attribute external_llm
          #
          #   @return [Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig::ExternalLlm, nil]
          optional :external_llm, -> { Telnyx::AI::AssistantUpdateParams::FallbackConfig::ExternalLlm }

          # @!attribute llm_api_key_ref
          #   Integration secret identifier for the fallback model API key.
          #
          #   @return [String, nil]
          optional :llm_api_key_ref, String

          # @!attribute model
          #   Fallback Telnyx-hosted model to use when the primary LLM provider is
          #   unavailable.
          #
          #   @return [String, nil]
          optional :model, String

          # @!method initialize(external_llm: nil, llm_api_key_ref: nil, model: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig} for more details.
          #
          #   @param external_llm [Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig::ExternalLlm]
          #
          #   @param llm_api_key_ref [String] Integration secret identifier for the fallback model API key.
          #
          #   @param model [String] Fallback Telnyx-hosted model to use when the primary LLM provider is unavailable

          # @see Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig#external_llm
          class ExternalLlm < Telnyx::Internal::Type::BaseModel
            # @!attribute base_url
            #   Base URL for the external LLM endpoint.
            #
            #   @return [String]
            required :base_url, String

            # @!attribute model
            #   Model identifier to use with the external LLM endpoint.
            #
            #   @return [String]
            required :model, String

            # @!attribute authentication_method
            #   Authentication method used when connecting to the external LLM endpoint.
            #
            #   @return [Symbol, Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig::ExternalLlm::AuthenticationMethod, nil]
            optional :authentication_method,
                     enum: -> { Telnyx::AI::AssistantUpdateParams::FallbackConfig::ExternalLlm::AuthenticationMethod }

            # @!attribute certificate_ref
            #   Integration secret identifier for the client certificate used with certificate
            #   authentication.
            #
            #   @return [String, nil]
            optional :certificate_ref, String

            # @!attribute forward_metadata
            #   When `true`, Telnyx forwards the assistant's dynamic variables to the external
            #   LLM endpoint as a top-level `extra_metadata` object on the chat completion
            #   request body. Defaults to `false`. Example payload sent to the external
            #   endpoint:
            #   `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
            #   Distinct from OpenAI's native `metadata` field, which has its own size and type
            #   limits.
            #
            #   @return [Boolean, nil]
            optional :forward_metadata, Telnyx::Internal::Type::Boolean

            # @!attribute llm_api_key_ref
            #   Integration secret identifier for the external LLM API key.
            #
            #   @return [String, nil]
            optional :llm_api_key_ref, String

            # @!attribute token_retrieval_url
            #   URL used to retrieve an access token when certificate authentication is enabled.
            #
            #   @return [String, nil]
            optional :token_retrieval_url, String

            # @!method initialize(base_url:, model:, authentication_method: nil, certificate_ref: nil, forward_metadata: nil, llm_api_key_ref: nil, token_retrieval_url: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig::ExternalLlm} for
            #   more details.
            #
            #   @param base_url [String] Base URL for the external LLM endpoint.
            #
            #   @param model [String] Model identifier to use with the external LLM endpoint.
            #
            #   @param authentication_method [Symbol, Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig::ExternalLlm::AuthenticationMethod] Authentication method used when connecting to the external LLM endpoint.
            #
            #   @param certificate_ref [String] Integration secret identifier for the client certificate used with certificate a
            #
            #   @param forward_metadata [Boolean] When `true`, Telnyx forwards the assistant's dynamic variables to the external L
            #
            #   @param llm_api_key_ref [String] Integration secret identifier for the external LLM API key.
            #
            #   @param token_retrieval_url [String] URL used to retrieve an access token when certificate authentication is enabled.

            # Authentication method used when connecting to the external LLM endpoint.
            #
            # @see Telnyx::Models::AI::AssistantUpdateParams::FallbackConfig::ExternalLlm#authentication_method
            module AuthenticationMethod
              extend Telnyx::Internal::Type::Enum

              TOKEN = :token
              CERTIFICATE = :certificate

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class Integration < Telnyx::Internal::Type::BaseModel
          # @!attribute integration_id
          #   Catalog integration ID to attach. This is the `id` from the integrations catalog
          #   at `/ai/integrations` (the same value also appears as `integration_id` on
          #   entries returned by `/ai/integrations/connections`). It is **not** the
          #   connection-level `id` from `/ai/integrations/connections`.
          #
          #   @return [String]
          required :integration_id, String

          # @!attribute allowed_list
          #   Optional per-assistant allowlist of integration tool names. When omitted or
          #   empty, all tools allowed by the connected integration are available to the
          #   assistant.
          #
          #   @return [Array<String>, nil]
          optional :allowed_list, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(integration_id:, allowed_list: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantUpdateParams::Integration} for more details.
          #
          #   Reference to a connected integration attached to an assistant. Discover
          #   available integrations with `/ai/integrations` and connected integrations with
          #   `/ai/integrations/connections`.
          #
          #   @param integration_id [String] Catalog integration ID to attach. This is the `id` from the integrations catalog
          #
          #   @param allowed_list [Array<String>] Optional per-assistant allowlist of integration tool names. When omitted or empt
        end

        class InterruptionSettings < Telnyx::Internal::Type::BaseModel
          # @!attribute enable
          #   Whether users can interrupt the assistant while it is speaking.
          #
          #   @return [Boolean, nil]
          optional :enable, Telnyx::Internal::Type::Boolean

          # @!attribute start_speaking_plan
          #   Controls when the assistant starts speaking after the user stops. These
          #   thresholds primarily apply to non turn-taking transcription models. For
          #   turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
          #   transcription end-of-turn settings under `transcription.settings` instead.
          #
          #   @return [Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings::StartSpeakingPlan, nil]
          optional :start_speaking_plan,
                   -> { Telnyx::AI::AssistantUpdateParams::InterruptionSettings::StartSpeakingPlan }

          # @!method initialize(enable: nil, start_speaking_plan: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings} for more
          #   details.
          #
          #   Settings for interruptions and how the assistant decides the user has finished
          #   speaking. These timings are most relevant when using non turn-taking
          #   transcription models. For turn-taking models like `deepgram/flux`, end-of-turn
          #   behavior is controlled by the transcription end-of-turn settings under
          #   `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
          #   `eager_eot_threshold`).
          #
          #   @param enable [Boolean] Whether users can interrupt the assistant while it is speaking.
          #
          #   @param start_speaking_plan [Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings::StartSpeakingPlan] Controls when the assistant starts speaking after the user stops. These threshol

          # @see Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings#start_speaking_plan
          class StartSpeakingPlan < Telnyx::Internal::Type::BaseModel
            # @!attribute transcription_endpointing_plan
            #   Endpointing thresholds used to decide when the user has finished speaking.
            #   Applies to non turn-taking transcription models. For `deepgram/flux`, use
            #   `transcription.settings.eot_threshold` / `eot_timeout_ms` /
            #   `eager_eot_threshold`.
            #
            #   @return [Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan, nil]
            optional :transcription_endpointing_plan,
                     -> { Telnyx::AI::AssistantUpdateParams::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan }

            # @!attribute wait_seconds
            #   Minimum seconds to wait before the assistant starts speaking.
            #
            #   @return [Float, nil]
            optional :wait_seconds, Float

            # @!method initialize(transcription_endpointing_plan: nil, wait_seconds: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings::StartSpeakingPlan}
            #   for more details.
            #
            #   Controls when the assistant starts speaking after the user stops. These
            #   thresholds primarily apply to non turn-taking transcription models. For
            #   turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
            #   transcription end-of-turn settings under `transcription.settings` instead.
            #
            #   @param transcription_endpointing_plan [Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan] Endpointing thresholds used to decide when the user has finished speaking. Appli
            #
            #   @param wait_seconds [Float] Minimum seconds to wait before the assistant starts speaking.

            # @see Telnyx::Models::AI::AssistantUpdateParams::InterruptionSettings::StartSpeakingPlan#transcription_endpointing_plan
            class TranscriptionEndpointingPlan < Telnyx::Internal::Type::BaseModel
              # @!attribute on_no_punctuation_seconds
              #   Seconds to wait after the transcript ends without punctuation.
              #
              #   @return [Float, nil]
              optional :on_no_punctuation_seconds, Float

              # @!attribute on_number_seconds
              #   Seconds to wait after the transcript ends with a number.
              #
              #   @return [Float, nil]
              optional :on_number_seconds, Float

              # @!attribute on_punctuation_seconds
              #   Seconds to wait after the transcript ends with punctuation.
              #
              #   @return [Float, nil]
              optional :on_punctuation_seconds, Float

              # @!method initialize(on_no_punctuation_seconds: nil, on_number_seconds: nil, on_punctuation_seconds: nil)
              #   Endpointing thresholds used to decide when the user has finished speaking.
              #   Applies to non turn-taking transcription models. For `deepgram/flux`, use
              #   `transcription.settings.eot_threshold` / `eot_timeout_ms` /
              #   `eager_eot_threshold`.
              #
              #   @param on_no_punctuation_seconds [Float] Seconds to wait after the transcript ends without punctuation.
              #
              #   @param on_number_seconds [Float] Seconds to wait after the transcript ends with a number.
              #
              #   @param on_punctuation_seconds [Float] Seconds to wait after the transcript ends with punctuation.
            end
          end
        end

        class McpServer < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   ID of the MCP server to attach. This must be the `id` of an MCP server returned
          #   by the `/ai/mcp_servers` endpoints.
          #
          #   @return [String]
          required :id, String

          # @!attribute allowed_tools
          #   Optional per-assistant allowlist of MCP tool names. When omitted, the assistant
          #   uses the MCP server's configured `allowed_tools`.
          #
          #   @return [Array<String>, nil]
          optional :allowed_tools, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(id:, allowed_tools: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantUpdateParams::McpServer} for more details.
          #
          #   Reference to an MCP server attached to an assistant. Create and manage MCP
          #   servers with the `/ai/mcp_servers` endpoints, then attach them to assistants by
          #   ID.
          #
          #   @param id [String] ID of the MCP server to attach. This must be the `id` of an MCP server returned
          #
          #   @param allowed_tools [Array<String>] Optional per-assistant allowlist of MCP tool names. When omitted, the assistant
        end

        class PostConversationSettings < Telnyx::Internal::Type::BaseModel
          # @!attribute enabled
          #   Whether post-conversation processing is enabled. When true, the assistant will
          #   be invoked after the conversation ends to perform any final tool calls. Defaults
          #   to false.
          #
          #   @return [Boolean, nil]
          optional :enabled, Telnyx::Internal::Type::Boolean

          # @!method initialize(enabled: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantUpdateParams::PostConversationSettings} for more
          #   details.
          #
          #   Configuration for post-conversation processing. When enabled, the assistant
          #   receives one additional LLM turn after the conversation ends, allowing it to
          #   execute tool calls such as logging to a CRM or sending a summary. The assistant
          #   can execute multiple parallel or sequential tools during this phase.
          #   Telephony-control tools (e.g. hangup, transfer) are unavailable
          #   post-conversation. Beta feature.
          #
          #   @param enabled [Boolean] Whether post-conversation processing is enabled. When true, the assistant will b
        end
      end
    end
  end
end
