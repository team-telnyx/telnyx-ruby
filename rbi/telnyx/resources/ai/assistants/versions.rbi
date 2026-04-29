# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Versions
          # Retrieves a specific version of an assistant by assistant_id and version_id
          sig do
            params(
              version_id: String,
              assistant_id: String,
              include_mcp_servers: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::InferenceEmbedding)
          end
          def retrieve(
            # Path param
            version_id,
            # Path param
            assistant_id:,
            # Query param
            include_mcp_servers: nil,
            request_options: {}
          )
          end

          # Updates the configuration of a specific assistant version. Can not update main
          # version
          sig do
            params(
              version_id: String,
              assistant_id: String,
              description: String,
              dynamic_variables: T::Hash[Symbol, T.anything],
              dynamic_variables_webhook_timeout_ms: Integer,
              dynamic_variables_webhook_url: String,
              enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
              external_llm:
                Telnyx::AI::Assistants::UpdateAssistant::ExternalLlm::OrHash,
              fallback_config:
                Telnyx::AI::Assistants::UpdateAssistant::FallbackConfig::OrHash,
              greeting: String,
              insight_settings: Telnyx::AI::InsightSettings::OrHash,
              instructions: String,
              integrations:
                T::Array[
                  Telnyx::AI::Assistants::UpdateAssistant::Integration::OrHash
                ],
              interruption_settings:
                Telnyx::AI::Assistants::UpdateAssistant::InterruptionSettings::OrHash,
              llm_api_key_ref: String,
              mcp_servers:
                T::Array[
                  Telnyx::AI::Assistants::UpdateAssistant::McpServer::OrHash
                ],
              messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
              model: String,
              name: String,
              observability_settings: Telnyx::AI::ObservabilityReq::OrHash,
              post_conversation_settings:
                Telnyx::AI::Assistants::UpdateAssistant::PostConversationSettings::OrHash,
              privacy_settings: Telnyx::AI::PrivacySettings::OrHash,
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
            ).returns(Telnyx::AI::InferenceEmbedding)
          end
          def update(
            # Path param
            version_id,
            # Path param
            assistant_id:,
            # Body param
            description: nil,
            # Body param: Map of dynamic variables and their default values
            dynamic_variables: nil,
            # Body param: Timeout in milliseconds for the dynamic variables webhook. Must be
            # between 1 and 10000 ms. If the webhook does not respond within this timeout, the
            # call proceeds with default values. See the
            # [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
            dynamic_variables_webhook_timeout_ms: nil,
            # Body param: If `dynamic_variables_webhook_url` is set, Telnyx sends a POST
            # request to this URL at the start of the conversation to resolve dynamic
            # variables. **Gotcha:** the webhook response must wrap variables under a
            # top-level `dynamic_variables` object, e.g.
            # `{"dynamic_variables": {"customer_name": "Jane"}}`. Returning a flat object will
            # be ignored and variables will fall back to their defaults. See the
            # [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
            # for the full request/response format and timeout behavior.
            dynamic_variables_webhook_url: nil,
            # Body param
            enabled_features: nil,
            # Body param
            external_llm: nil,
            # Body param
            fallback_config: nil,
            # Body param: Text that the assistant will use to start the conversation. This may
            # be templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
            # Use an empty string to have the assistant wait for the user to speak first. Use
            # the special value `<assistant-speaks-first-with-model-generated-message>` to
            # have the assistant generate the greeting based on the system instructions.
            greeting: nil,
            # Body param
            insight_settings: nil,
            # Body param: System instructions for the assistant. These may be templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
            instructions: nil,
            # Body param: Connected integrations attached to the assistant. The catalog of
            # available integrations is at `/ai/integrations`; the user's connected
            # integrations are at `/ai/integrations/connections`. Each item references a
            # catalog integration by `integration_id`.
            integrations: nil,
            # Body param: Settings for interruptions and how the assistant decides the user
            # has finished speaking. These timings are most relevant when using non
            # turn-taking transcription models. For turn-taking models like `deepgram/flux`,
            # end-of-turn behavior is controlled by the transcription end-of-turn settings
            # under `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
            # `eager_eot_threshold`).
            interruption_settings: nil,
            # Body param: This is only needed when using third-party inference providers
            # selected by `model`. The `identifier` for an integration secret
            # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
            # that refers to your LLM provider's API key. For bring-your-own endpoint
            # authentication, use `external_llm.llm_api_key_ref` instead. Warning: Free plans
            # are unlikely to work with this integration.
            llm_api_key_ref: nil,
            # Body param: MCP servers attached to the assistant. Create MCP servers with
            # `/ai/mcp_servers`, then reference them by `id` here.
            mcp_servers: nil,
            # Body param
            messaging_settings: nil,
            # Body param: ID of the model to use when `external_llm` is not set. You can use
            # the
            # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
            # to see available models. If `external_llm` is provided, the assistant uses
            # `external_llm` instead of this field. If neither `model` nor `external_llm` is
            # provided, Telnyx applies the default model.
            model: nil,
            # Body param
            name: nil,
            # Body param
            observability_settings: nil,
            # Body param: Configuration for post-conversation processing. When enabled, the
            # assistant receives one additional LLM turn after the conversation ends, allowing
            # it to execute tool calls such as logging to a CRM or sending a summary. The
            # assistant can execute multiple parallel or sequential tools during this phase.
            # Telephony-control tools (e.g. hangup, transfer) are unavailable
            # post-conversation. Beta feature.
            post_conversation_settings: nil,
            # Body param
            privacy_settings: nil,
            # Body param: Tags associated with the assistant. Tags can also be managed with
            # the assistant tag endpoints.
            tags: nil,
            # Body param
            telephony_settings: nil,
            # Body param: IDs of shared tools to attach to the assistant. New integrations
            # should prefer `tool_ids` over inline `tools`.
            tool_ids: nil,
            # Body param: Deprecated for new integrations. Inline tool definitions available
            # to the assistant. Prefer `tool_ids` to attach shared tools created with the AI
            # Tools endpoints.
            tools: nil,
            # Body param
            transcription: nil,
            # Body param: Human-readable name for the assistant version.
            version_name: nil,
            # Body param
            voice_settings: nil,
            # Body param: Configuration settings for the assistant's web widget.
            widget_settings: nil,
            request_options: {}
          )
          end

          # Retrieves all versions of a specific assistant with complete configuration and
          # metadata
          sig do
            params(
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::AssistantsList)
          end
          def list(assistant_id, request_options: {})
          end

          # Permanently removes a specific version of an assistant. Can not delete main
          # version
          sig do
            params(
              version_id: String,
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(version_id, assistant_id:, request_options: {})
          end

          # Promotes a specific version to be the main/current version of the assistant.
          # This will delete any existing canary deploy configuration and send all live
          # production traffic to this version.
          sig do
            params(
              version_id: String,
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::InferenceEmbedding)
          end
          def promote(version_id, assistant_id:, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
