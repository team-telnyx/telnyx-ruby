# typed: strong

module Telnyx
  module Resources
    class AI
      # Configure AI assistant specifications
      class Assistants
        # Configure AI assistant specifications
        sig { returns(Telnyx::Resources::AI::Assistants::Tests) }
        attr_reader :tests

        # Configure AI assistant specifications
        sig { returns(Telnyx::Resources::AI::Assistants::CanaryDeploys) }
        attr_reader :canary_deploys

        # Configure AI assistant specifications
        sig { returns(Telnyx::Resources::AI::Assistants::ScheduledEvents) }
        attr_reader :scheduled_events

        # Configure AI assistant specifications
        sig { returns(Telnyx::Resources::AI::Assistants::Tools) }
        attr_reader :tools

        # Configure AI assistant specifications
        sig { returns(Telnyx::Resources::AI::Assistants::Versions) }
        attr_reader :versions

        # Configure AI assistant specifications
        sig { returns(Telnyx::Resources::AI::Assistants::Tags) }
        attr_reader :tags

        # Create a new AI Assistant.
        sig do
          params(
            instructions: String,
            name: String,
            description: String,
            dynamic_variables: T::Hash[Symbol, T.anything],
            dynamic_variables_webhook_timeout_ms: Integer,
            dynamic_variables_webhook_url: String,
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
            external_llm:
              Telnyx::AI::AssistantCreateParams::ExternalLlm::OrHash,
            fallback_config:
              Telnyx::AI::AssistantCreateParams::FallbackConfig::OrHash,
            greeting: String,
            insight_settings: Telnyx::AI::InsightSettings::OrHash,
            integrations:
              T::Array[Telnyx::AI::AssistantCreateParams::Integration::OrHash],
            interruption_settings:
              Telnyx::AI::AssistantCreateParams::InterruptionSettings::OrHash,
            llm_api_key_ref: String,
            mcp_servers:
              T::Array[Telnyx::AI::AssistantCreateParams::McpServer::OrHash],
            messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
            model: String,
            observability_settings: Telnyx::AI::ObservabilityReq::OrHash,
            post_conversation_settings:
              Telnyx::AI::AssistantCreateParams::PostConversationSettings::OrHash,
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
            voice_settings: Telnyx::AI::VoiceSettings::OrHash,
            widget_settings: Telnyx::AI::WidgetSettings::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::InferenceEmbedding)
        end
        def create(
          # System instructions for the assistant. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          instructions:,
          name:,
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
          # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
          # to see available models. If `external_llm` is provided, the assistant uses
          # `external_llm` instead of this field. If neither `model` nor `external_llm` is
          # provided, Telnyx applies the default model.
          model: nil,
          observability_settings: nil,
          # Configuration for post-conversation processing. When enabled, the assistant
          # receives one additional LLM turn after the conversation ends, allowing it to
          # execute tool calls such as logging to a CRM or sending a summary. The assistant
          # can execute multiple parallel or sequential tools during this phase.
          # Telephony-control tools (e.g. hangup, transfer) are unavailable
          # post-conversation. Beta feature.
          post_conversation_settings: nil,
          privacy_settings: nil,
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
          voice_settings: nil,
          # Configuration settings for the assistant's web widget.
          widget_settings: nil,
          request_options: {}
        )
        end

        # Retrieve an AI Assistant configuration by `assistant_id`.
        sig do
          params(
            assistant_id: String,
            call_control_id: String,
            fetch_dynamic_variables_from_webhook: T::Boolean,
            from: String,
            to: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::InferenceEmbedding)
        end
        def retrieve(
          assistant_id,
          call_control_id: nil,
          fetch_dynamic_variables_from_webhook: nil,
          from: nil,
          to: nil,
          request_options: {}
        )
        end

        # Update an AI Assistant's attributes.
        sig do
          params(
            assistant_id: String,
            description: String,
            dynamic_variables: T::Hash[Symbol, T.anything],
            dynamic_variables_webhook_timeout_ms: Integer,
            dynamic_variables_webhook_url: String,
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
            external_llm:
              Telnyx::AI::AssistantUpdateParams::ExternalLlm::OrHash,
            fallback_config:
              Telnyx::AI::AssistantUpdateParams::FallbackConfig::OrHash,
            greeting: String,
            insight_settings: Telnyx::AI::InsightSettings::OrHash,
            instructions: String,
            integrations:
              T::Array[Telnyx::AI::AssistantUpdateParams::Integration::OrHash],
            interruption_settings:
              Telnyx::AI::AssistantUpdateParams::InterruptionSettings::OrHash,
            llm_api_key_ref: String,
            mcp_servers:
              T::Array[Telnyx::AI::AssistantUpdateParams::McpServer::OrHash],
            messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
            model: String,
            name: String,
            observability_settings: Telnyx::AI::ObservabilityReq::OrHash,
            post_conversation_settings:
              Telnyx::AI::AssistantUpdateParams::PostConversationSettings::OrHash,
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
          ).returns(Telnyx::AI::InferenceEmbedding)
        end
        def update(
          assistant_id,
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
          # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
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

        # Retrieve a list of all AI Assistants configured by the user.
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::AI::AssistantsList
          )
        end
        def list(request_options: {})
        end

        # Delete an AI Assistant by `assistant_id`.
        sig do
          params(
            assistant_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::AssistantDeleteResponse)
        end
        def delete(assistant_id, request_options: {})
        end

        # This endpoint allows a client to send a chat message to a specific AI Assistant.
        # The assistant processes the message and returns a relevant reply based on the
        # current conversation context. Refer to the Conversation API to
        # [create a conversation](https://developers.telnyx.com/api-reference/conversations/create-a-conversation),
        # [filter existing conversations](https://developers.telnyx.com/api-reference/conversations/list-conversations),
        # [fetch messages for a conversation](https://developers.telnyx.com/api-reference/conversations/get-conversation-messages),
        # and
        # [manually add messages to a conversation](https://developers.telnyx.com/api-reference/conversations/create-message).
        sig do
          params(
            assistant_id: String,
            content: String,
            conversation_id: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::AssistantChatResponse)
        end
        def chat(
          assistant_id,
          # The message content sent by the client to the assistant
          content:,
          # A unique identifier for the conversation thread, used to maintain context
          conversation_id:,
          # The optional display name of the user sending the message
          name: nil,
          request_options: {}
        )
        end

        # Clone an existing assistant, excluding telephony and messaging settings.
        sig do
          params(
            assistant_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::InferenceEmbedding)
        end
        def clone_(assistant_id, request_options: {})
        end

        # Get an assistant texml by `assistant_id`.
        sig do
          params(
            assistant_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(String)
        end
        def get_texml(assistant_id, request_options: {})
        end

        # Import assistants from external providers. Any assistant that has already been
        # imported will be overwritten with its latest version from the importing
        # provider.
        sig do
          params(
            api_key_ref: String,
            provider: Telnyx::AI::AssistantImportsParams::Provider::OrSymbol,
            import_ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::AssistantsList)
        end
        def imports(
          # Integration secret pointer that refers to the API key for the external provider.
          # This should be an identifier for an integration secret created via
          # /v2/integration_secrets.
          api_key_ref:,
          # The external provider to import assistants from.
          provider:,
          # Optional list of assistant IDs to import from the external provider. If not
          # provided, all assistants will be imported.
          import_ids: nil,
          request_options: {}
        )
        end

        # Send an SMS message for an assistant. This endpoint:
        #
        # 1. Validates the assistant exists and has messaging profile configured
        # 2. If should_create_conversation is true, creates a new conversation with
        #    metadata
        # 3. Sends the SMS message (If `text` is set, this will be sent. Otherwise, if
        #    this is the first message in the conversation and the assistant has a
        #    `greeting` configured, this will be sent. Otherwise the assistant will
        #    generate the text to send.)
        # 4. Updates conversation metadata if provided
        # 5. Returns the conversation ID
        sig do
          params(
            assistant_id: String,
            from: String,
            to: String,
            conversation_metadata:
              T::Hash[
                Symbol,
                Telnyx::AI::AssistantSendSMSParams::ConversationMetadata::Variants
              ],
            should_create_conversation: T::Boolean,
            text: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::AssistantSendSMSResponse)
        end
        def send_sms(
          assistant_id,
          from:,
          to:,
          conversation_metadata: nil,
          should_create_conversation: nil,
          text: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
