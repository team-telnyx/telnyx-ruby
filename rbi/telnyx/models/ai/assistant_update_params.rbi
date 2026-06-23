# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :assistant_id

        # Conversation flow as supplied by API clients (create / update).
        #
        # A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
        # unique node/edge IDs, that `start_node_id` references a real node, and that
        # every edge's endpoints reference real nodes.
        sig { returns(T.nilable(Telnyx::AI::ConversationFlowReq)) }
        attr_reader :conversation_flow

        sig do
          params(
            conversation_flow: Telnyx::AI::ConversationFlowReq::OrHash
          ).void
        end
        attr_writer :conversation_flow

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Map of dynamic variables and their default values
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :dynamic_variables

        sig { params(dynamic_variables: T::Hash[Symbol, T.anything]).void }
        attr_writer :dynamic_variables

        # Timeout in milliseconds for the dynamic variables webhook. Must be between 1 and
        # 10000 ms. If the webhook does not respond within this timeout, the call proceeds
        # with default values. See the
        # [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
        sig { returns(T.nilable(Integer)) }
        attr_reader :dynamic_variables_webhook_timeout_ms

        sig { params(dynamic_variables_webhook_timeout_ms: Integer).void }
        attr_writer :dynamic_variables_webhook_timeout_ms

        # If `dynamic_variables_webhook_url` is set, Telnyx sends a POST request to this
        # URL at the start of the conversation to resolve dynamic variables. **Gotcha:**
        # the webhook response must wrap variables under a top-level `dynamic_variables`
        # object, e.g. `{"dynamic_variables": {"customer_name": "Jane"}}`. Returning a
        # flat object will be ignored and variables will fall back to their defaults. See
        # the
        # [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        # for the full request/response format and timeout behavior.
        sig { returns(T.nilable(String)) }
        attr_reader :dynamic_variables_webhook_url

        sig { params(dynamic_variables_webhook_url: String).void }
        attr_writer :dynamic_variables_webhook_url

        sig do
          returns(T.nilable(T::Array[Telnyx::AI::EnabledFeatures::OrSymbol]))
        end
        attr_reader :enabled_features

        sig do
          params(
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol]
          ).void
        end
        attr_writer :enabled_features

        sig { returns(T.nilable(Telnyx::AI::ExternalLlmReq)) }
        attr_reader :external_llm

        sig { params(external_llm: Telnyx::AI::ExternalLlmReq::OrHash).void }
        attr_writer :external_llm

        sig { returns(T.nilable(Telnyx::AI::FallbackConfigReq)) }
        attr_reader :fallback_config

        sig do
          params(fallback_config: Telnyx::AI::FallbackConfigReq::OrHash).void
        end
        attr_writer :fallback_config

        # Text that the assistant will use to start the conversation. This may be
        # templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
        # Use an empty string to have the assistant wait for the user to speak first. Use
        # the special value `<assistant-speaks-first-with-model-generated-message>` to
        # have the assistant generate the greeting based on the system instructions.
        sig { returns(T.nilable(String)) }
        attr_reader :greeting

        sig { params(greeting: String).void }
        attr_writer :greeting

        sig { returns(T.nilable(Telnyx::AI::InsightSettings)) }
        attr_reader :insight_settings

        sig do
          params(insight_settings: Telnyx::AI::InsightSettings::OrHash).void
        end
        attr_writer :insight_settings

        # System instructions for the assistant. These may be templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        sig { returns(T.nilable(String)) }
        attr_reader :instructions

        sig { params(instructions: String).void }
        attr_writer :instructions

        # Connected integrations attached to the assistant. The catalog of available
        # integrations is at `/ai/integrations`; the user's connected integrations are at
        # `/ai/integrations/connections`. Each item references a catalog integration by
        # `integration_id`.
        sig { returns(T.nilable(T::Array[Telnyx::AI::AssistantIntegration])) }
        attr_reader :integrations

        sig do
          params(
            integrations: T::Array[Telnyx::AI::AssistantIntegration::OrHash]
          ).void
        end
        attr_writer :integrations

        # Settings for interruptions and how the assistant decides the user has finished
        # speaking. These timings are most relevant when using non turn-taking
        # transcription models. For turn-taking models like `deepgram/flux`, end-of-turn
        # behavior is controlled by the transcription end-of-turn settings under
        # `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
        # `eager_eot_threshold`).
        sig do
          returns(T.nilable(Telnyx::AI::InferenceEmbeddingInterruptionSettings))
        end
        attr_reader :interruption_settings

        sig do
          params(
            interruption_settings:
              Telnyx::AI::InferenceEmbeddingInterruptionSettings::OrHash
          ).void
        end
        attr_writer :interruption_settings

        # This is only needed when using third-party inference providers selected by
        # `model`. The `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        # that refers to your LLM provider's API key. For bring-your-own endpoint
        # authentication, use `external_llm.llm_api_key_ref` instead. Warning: Free plans
        # are unlikely to work with this integration.
        sig { returns(T.nilable(String)) }
        attr_reader :llm_api_key_ref

        sig { params(llm_api_key_ref: String).void }
        attr_writer :llm_api_key_ref

        # MCP servers attached to the assistant. Create MCP servers with
        # `/ai/mcp_servers`, then reference them by `id` here.
        sig { returns(T.nilable(T::Array[Telnyx::AI::AssistantMcpServer])) }
        attr_reader :mcp_servers

        sig do
          params(
            mcp_servers: T::Array[Telnyx::AI::AssistantMcpServer::OrHash]
          ).void
        end
        attr_writer :mcp_servers

        sig { returns(T.nilable(Telnyx::AI::MessagingSettings)) }
        attr_reader :messaging_settings

        sig do
          params(messaging_settings: Telnyx::AI::MessagingSettings::OrHash).void
        end
        attr_writer :messaging_settings

        # ID of the model to use when `external_llm` is not set. You can use the
        # [Get models API](https://developers.telnyx.com/api-reference/openai-chat/get-available-models-openai-compatible)
        # to see available models. If `external_llm` is provided, the assistant uses
        # `external_llm` instead of this field. If neither `model` nor `external_llm` is
        # provided, Telnyx applies the default model.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Telnyx::AI::ObservabilityReq)) }
        attr_reader :observability_settings

        sig do
          params(
            observability_settings: Telnyx::AI::ObservabilityReq::OrHash
          ).void
        end
        attr_writer :observability_settings

        # Configuration for post-conversation processing. When enabled, the assistant
        # receives one additional LLM turn after the conversation ends, allowing it to
        # execute tool calls such as logging to a CRM or sending a summary. The assistant
        # can execute multiple parallel or sequential tools during this phase.
        # Telephony-control tools (e.g. hangup, transfer) are unavailable
        # post-conversation. Beta feature.
        sig { returns(T.nilable(Telnyx::AI::PostConversationSettingsReq)) }
        attr_reader :post_conversation_settings

        sig do
          params(
            post_conversation_settings:
              Telnyx::AI::PostConversationSettingsReq::OrHash
          ).void
        end
        attr_writer :post_conversation_settings

        sig { returns(T.nilable(Telnyx::AI::PrivacySettings)) }
        attr_reader :privacy_settings

        sig do
          params(privacy_settings: Telnyx::AI::PrivacySettings::OrHash).void
        end
        attr_writer :privacy_settings

        # Indicates whether the assistant should be promoted to the main version. Defaults
        # to true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :promote_to_main

        sig { params(promote_to_main: T::Boolean).void }
        attr_writer :promote_to_main

        # Tags associated with the assistant. Tags can also be managed with the assistant
        # tag endpoints.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig { returns(T.nilable(Telnyx::AI::TelephonySettings)) }
        attr_reader :telephony_settings

        sig do
          params(telephony_settings: Telnyx::AI::TelephonySettings::OrHash).void
        end
        attr_writer :telephony_settings

        # IDs of shared tools to attach to the assistant. New integrations should prefer
        # `tool_ids` over inline `tools`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tool_ids

        sig { params(tool_ids: T::Array[String]).void }
        attr_writer :tool_ids

        # Deprecated for new integrations. Inline tool definitions available to the
        # assistant. Prefer `tool_ids` to attach shared tools created with the AI Tools
        # endpoints.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams,
                  Telnyx::AI::RetrievalTool,
                  Telnyx::AI::AssistantTool::Handoff,
                  Telnyx::AI::HangupTool,
                  Telnyx::AI::AssistantTool::Transfer,
                  Telnyx::AI::AssistantTool::Invite,
                  Telnyx::AI::AssistantTool::Refer,
                  Telnyx::AI::AssistantTool::SendDtmf,
                  Telnyx::AI::AssistantTool::SendMessage,
                  Telnyx::AI::AssistantTool::SkipTurn
                )
              ]
            )
          )
        end
        attr_reader :tools

        sig do
          params(
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::Handoff::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::AssistantTool::Transfer::OrHash,
                  Telnyx::AI::AssistantTool::Invite::OrHash,
                  Telnyx::AI::AssistantTool::Refer::OrHash,
                  Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                  Telnyx::AI::AssistantTool::SendMessage::OrHash,
                  Telnyx::AI::AssistantTool::SkipTurn::OrHash
                )
              ]
          ).void
        end
        attr_writer :tools

        sig { returns(T.nilable(Telnyx::AI::TranscriptionSettings)) }
        attr_reader :transcription

        sig do
          params(transcription: Telnyx::AI::TranscriptionSettings::OrHash).void
        end
        attr_writer :transcription

        # Human-readable name for the assistant version.
        sig { returns(T.nilable(String)) }
        attr_reader :version_name

        sig { params(version_name: String).void }
        attr_writer :version_name

        sig { returns(T.nilable(Telnyx::AI::VoiceSettings)) }
        attr_reader :voice_settings

        sig { params(voice_settings: Telnyx::AI::VoiceSettings::OrHash).void }
        attr_writer :voice_settings

        # Configuration settings for the assistant's web widget.
        sig { returns(T.nilable(Telnyx::AI::WidgetSettings)) }
        attr_reader :widget_settings

        sig { params(widget_settings: Telnyx::AI::WidgetSettings::OrHash).void }
        attr_writer :widget_settings

        sig do
          params(
            assistant_id: String,
            conversation_flow: Telnyx::AI::ConversationFlowReq::OrHash,
            description: String,
            dynamic_variables: T::Hash[Symbol, T.anything],
            dynamic_variables_webhook_timeout_ms: Integer,
            dynamic_variables_webhook_url: String,
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
            external_llm: Telnyx::AI::ExternalLlmReq::OrHash,
            fallback_config: Telnyx::AI::FallbackConfigReq::OrHash,
            greeting: String,
            insight_settings: Telnyx::AI::InsightSettings::OrHash,
            instructions: String,
            integrations: T::Array[Telnyx::AI::AssistantIntegration::OrHash],
            interruption_settings:
              Telnyx::AI::InferenceEmbeddingInterruptionSettings::OrHash,
            llm_api_key_ref: String,
            mcp_servers: T::Array[Telnyx::AI::AssistantMcpServer::OrHash],
            messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
            model: String,
            name: String,
            observability_settings: Telnyx::AI::ObservabilityReq::OrHash,
            post_conversation_settings:
              Telnyx::AI::PostConversationSettingsReq::OrHash,
            privacy_settings: Telnyx::AI::PrivacySettings::OrHash,
            promote_to_main: T::Boolean,
            tags: T::Array[String],
            telephony_settings: Telnyx::AI::TelephonySettings::OrHash,
            tool_ids: T::Array[String],
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::Handoff::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::AssistantTool::Transfer::OrHash,
                  Telnyx::AI::AssistantTool::Invite::OrHash,
                  Telnyx::AI::AssistantTool::Refer::OrHash,
                  Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                  Telnyx::AI::AssistantTool::SendMessage::OrHash,
                  Telnyx::AI::AssistantTool::SkipTurn::OrHash
                )
              ],
            transcription: Telnyx::AI::TranscriptionSettings::OrHash,
            version_name: String,
            voice_settings: Telnyx::AI::VoiceSettings::OrHash,
            widget_settings: Telnyx::AI::WidgetSettings::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          assistant_id:,
          # Conversation flow as supplied by API clients (create / update).
          #
          # A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
          # unique node/edge IDs, that `start_node_id` references a real node, and that
          # every edge's endpoints reference real nodes.
          conversation_flow: nil,
          description: nil,
          # Map of dynamic variables and their default values
          dynamic_variables: nil,
          # Timeout in milliseconds for the dynamic variables webhook. Must be between 1 and
          # 10000 ms. If the webhook does not respond within this timeout, the call proceeds
          # with default values. See the
          # [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
          dynamic_variables_webhook_timeout_ms: nil,
          # If `dynamic_variables_webhook_url` is set, Telnyx sends a POST request to this
          # URL at the start of the conversation to resolve dynamic variables. **Gotcha:**
          # the webhook response must wrap variables under a top-level `dynamic_variables`
          # object, e.g. `{"dynamic_variables": {"customer_name": "Jane"}}`. Returning a
          # flat object will be ignored and variables will fall back to their defaults. See
          # the
          # [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          # for the full request/response format and timeout behavior.
          dynamic_variables_webhook_url: nil,
          enabled_features: nil,
          external_llm: nil,
          fallback_config: nil,
          # Text that the assistant will use to start the conversation. This may be
          # templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
          # Use an empty string to have the assistant wait for the user to speak first. Use
          # the special value `<assistant-speaks-first-with-model-generated-message>` to
          # have the assistant generate the greeting based on the system instructions.
          greeting: nil,
          insight_settings: nil,
          # System instructions for the assistant. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          instructions: nil,
          # Connected integrations attached to the assistant. The catalog of available
          # integrations is at `/ai/integrations`; the user's connected integrations are at
          # `/ai/integrations/connections`. Each item references a catalog integration by
          # `integration_id`.
          integrations: nil,
          # Settings for interruptions and how the assistant decides the user has finished
          # speaking. These timings are most relevant when using non turn-taking
          # transcription models. For turn-taking models like `deepgram/flux`, end-of-turn
          # behavior is controlled by the transcription end-of-turn settings under
          # `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
          # `eager_eot_threshold`).
          interruption_settings: nil,
          # This is only needed when using third-party inference providers selected by
          # `model`. The `identifier` for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
          # that refers to your LLM provider's API key. For bring-your-own endpoint
          # authentication, use `external_llm.llm_api_key_ref` instead. Warning: Free plans
          # are unlikely to work with this integration.
          llm_api_key_ref: nil,
          # MCP servers attached to the assistant. Create MCP servers with
          # `/ai/mcp_servers`, then reference them by `id` here.
          mcp_servers: nil,
          messaging_settings: nil,
          # ID of the model to use when `external_llm` is not set. You can use the
          # [Get models API](https://developers.telnyx.com/api-reference/openai-chat/get-available-models-openai-compatible)
          # to see available models. If `external_llm` is provided, the assistant uses
          # `external_llm` instead of this field. If neither `model` nor `external_llm` is
          # provided, Telnyx applies the default model.
          model: nil,
          name: nil,
          observability_settings: nil,
          # Configuration for post-conversation processing. When enabled, the assistant
          # receives one additional LLM turn after the conversation ends, allowing it to
          # execute tool calls such as logging to a CRM or sending a summary. The assistant
          # can execute multiple parallel or sequential tools during this phase.
          # Telephony-control tools (e.g. hangup, transfer) are unavailable
          # post-conversation. Beta feature.
          post_conversation_settings: nil,
          privacy_settings: nil,
          # Indicates whether the assistant should be promoted to the main version. Defaults
          # to true.
          promote_to_main: nil,
          # Tags associated with the assistant. Tags can also be managed with the assistant
          # tag endpoints.
          tags: nil,
          telephony_settings: nil,
          # IDs of shared tools to attach to the assistant. New integrations should prefer
          # `tool_ids` over inline `tools`.
          tool_ids: nil,
          # Deprecated for new integrations. Inline tool definitions available to the
          # assistant. Prefer `tool_ids` to attach shared tools created with the AI Tools
          # endpoints.
          tools: nil,
          transcription: nil,
          # Human-readable name for the assistant version.
          version_name: nil,
          voice_settings: nil,
          # Configuration settings for the assistant's web widget.
          widget_settings: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              assistant_id: String,
              conversation_flow: Telnyx::AI::ConversationFlowReq,
              description: String,
              dynamic_variables: T::Hash[Symbol, T.anything],
              dynamic_variables_webhook_timeout_ms: Integer,
              dynamic_variables_webhook_url: String,
              enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
              external_llm: Telnyx::AI::ExternalLlmReq,
              fallback_config: Telnyx::AI::FallbackConfigReq,
              greeting: String,
              insight_settings: Telnyx::AI::InsightSettings,
              instructions: String,
              integrations: T::Array[Telnyx::AI::AssistantIntegration],
              interruption_settings:
                Telnyx::AI::InferenceEmbeddingInterruptionSettings,
              llm_api_key_ref: String,
              mcp_servers: T::Array[Telnyx::AI::AssistantMcpServer],
              messaging_settings: Telnyx::AI::MessagingSettings,
              model: String,
              name: String,
              observability_settings: Telnyx::AI::ObservabilityReq,
              post_conversation_settings:
                Telnyx::AI::PostConversationSettingsReq,
              privacy_settings: Telnyx::AI::PrivacySettings,
              promote_to_main: T::Boolean,
              tags: T::Array[String],
              telephony_settings: Telnyx::AI::TelephonySettings,
              tool_ids: T::Array[String],
              tools:
                T::Array[
                  T.any(
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams,
                    Telnyx::AI::RetrievalTool,
                    Telnyx::AI::AssistantTool::Handoff,
                    Telnyx::AI::HangupTool,
                    Telnyx::AI::AssistantTool::Transfer,
                    Telnyx::AI::AssistantTool::Invite,
                    Telnyx::AI::AssistantTool::Refer,
                    Telnyx::AI::AssistantTool::SendDtmf,
                    Telnyx::AI::AssistantTool::SendMessage,
                    Telnyx::AI::AssistantTool::SkipTurn
                  )
                ],
              transcription: Telnyx::AI::TranscriptionSettings,
              version_name: String,
              voice_settings: Telnyx::AI::VoiceSettings,
              widget_settings: Telnyx::AI::WidgetSettings,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
