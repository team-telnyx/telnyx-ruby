# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantCreateParams, Telnyx::Internal::AnyHash)
          end

        # System instructions for the assistant. These may be templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        sig { returns(String) }
        attr_accessor :instructions

        sig { returns(String) }
        attr_accessor :name

        # Conversation flow as supplied by API clients (create / update).
        #
        # A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
        # unique node/edge IDs, that `start_node_id` references a real node, and that
        # every edge's endpoints reference real nodes.
        sig do
          returns(
            T.nilable(Telnyx::AI::AssistantCreateParams::ConversationFlow)
          )
        end
        attr_reader :conversation_flow

        sig do
          params(
            conversation_flow:
              Telnyx::AI::AssistantCreateParams::ConversationFlow::OrHash
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

        sig do
          returns(T.nilable(Telnyx::AI::AssistantCreateParams::ExternalLlm))
        end
        attr_reader :external_llm

        sig do
          params(
            external_llm: Telnyx::AI::AssistantCreateParams::ExternalLlm::OrHash
          ).void
        end
        attr_writer :external_llm

        sig do
          returns(T.nilable(Telnyx::AI::AssistantCreateParams::FallbackConfig))
        end
        attr_reader :fallback_config

        sig do
          params(
            fallback_config:
              Telnyx::AI::AssistantCreateParams::FallbackConfig::OrHash
          ).void
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

        # Connected integrations attached to the assistant. The catalog of available
        # integrations is at `/ai/integrations`; the user's connected integrations are at
        # `/ai/integrations/connections`. Each item references a catalog integration by
        # `integration_id`.
        sig do
          returns(
            T.nilable(T::Array[Telnyx::AI::AssistantCreateParams::Integration])
          )
        end
        attr_reader :integrations

        sig do
          params(
            integrations:
              T::Array[Telnyx::AI::AssistantCreateParams::Integration::OrHash]
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
          returns(
            T.nilable(Telnyx::AI::AssistantCreateParams::InterruptionSettings)
          )
        end
        attr_reader :interruption_settings

        sig do
          params(
            interruption_settings:
              Telnyx::AI::AssistantCreateParams::InterruptionSettings::OrHash
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
        sig do
          returns(
            T.nilable(T::Array[Telnyx::AI::AssistantCreateParams::McpServer])
          )
        end
        attr_reader :mcp_servers

        sig do
          params(
            mcp_servers:
              T::Array[Telnyx::AI::AssistantCreateParams::McpServer::OrHash]
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
        sig do
          returns(
            T.nilable(
              Telnyx::AI::AssistantCreateParams::PostConversationSettings
            )
          )
        end
        attr_reader :post_conversation_settings

        sig do
          params(
            post_conversation_settings:
              Telnyx::AI::AssistantCreateParams::PostConversationSettings::OrHash
          ).void
        end
        attr_writer :post_conversation_settings

        sig { returns(T.nilable(Telnyx::AI::PrivacySettings)) }
        attr_reader :privacy_settings

        sig do
          params(privacy_settings: Telnyx::AI::PrivacySettings::OrHash).void
        end
        attr_writer :privacy_settings

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
            instructions: String,
            name: String,
            conversation_flow:
              Telnyx::AI::AssistantCreateParams::ConversationFlow::OrHash,
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
          ).returns(T.attached_class)
        end
        def self.new(
          # System instructions for the assistant. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          instructions:,
          name:,
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

        sig do
          override.returns(
            {
              instructions: String,
              name: String,
              conversation_flow:
                Telnyx::AI::AssistantCreateParams::ConversationFlow,
              description: String,
              dynamic_variables: T::Hash[Symbol, T.anything],
              dynamic_variables_webhook_timeout_ms: Integer,
              dynamic_variables_webhook_url: String,
              enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
              external_llm: Telnyx::AI::AssistantCreateParams::ExternalLlm,
              fallback_config:
                Telnyx::AI::AssistantCreateParams::FallbackConfig,
              greeting: String,
              insight_settings: Telnyx::AI::InsightSettings,
              integrations:
                T::Array[Telnyx::AI::AssistantCreateParams::Integration],
              interruption_settings:
                Telnyx::AI::AssistantCreateParams::InterruptionSettings,
              llm_api_key_ref: String,
              mcp_servers:
                T::Array[Telnyx::AI::AssistantCreateParams::McpServer],
              messaging_settings: Telnyx::AI::MessagingSettings,
              model: String,
              observability_settings: Telnyx::AI::ObservabilityReq,
              post_conversation_settings:
                Telnyx::AI::AssistantCreateParams::PostConversationSettings,
              privacy_settings: Telnyx::AI::PrivacySettings,
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
              voice_settings: Telnyx::AI::VoiceSettings,
              widget_settings: Telnyx::AI::WidgetSettings,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ConversationFlow < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantCreateParams::ConversationFlow,
                Telnyx::Internal::AnyHash
              )
            end

          # All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
          # (`type: prompt`) or a tool node (`type: tool`).
          sig do
            returns(
              T::Array[
                T.any(
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt,
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool,
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak
                )
              ]
            )
          end
          attr_accessor :nodes

          # ID of the node where the conversation begins.
          sig { returns(String) }
          attr_accessor :start_node_id

          # Directed transitions between nodes. May be empty for a single-node flow.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge
                ]
              )
            )
          end
          attr_reader :edges

          sig do
            params(
              edges:
                T::Array[
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::OrHash
                ]
            ).void
          end
          attr_writer :edges

          # Conversation flow as supplied by API clients (create / update).
          #
          # A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
          # unique node/edge IDs, that `start_node_id` references a real node, and that
          # every edge's endpoints reference real nodes.
          sig do
            params(
              nodes:
                T::Array[
                  T.any(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::OrHash,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::OrHash,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::OrHash
                  )
                ],
              start_node_id: String,
              edges:
                T::Array[
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
            # (`type: prompt`) or a tool node (`type: tool`).
            nodes:,
            # ID of the node where the conversation begins.
            start_node_id:,
            # Directed transitions between nodes. May be empty for a single-node flow.
            edges: nil
          )
          end

          sig do
            override.returns(
              {
                nodes:
                  T::Array[
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak
                    )
                  ],
                start_node_id: String,
                edges:
                  T::Array[
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge
                  ]
              }
            )
          end
          def to_hash
          end

          # One step in a conversation flow, as supplied by API clients.
          #
          # Each node carries the prompt, tool scope, and optional overrides for
          # model/voice/transcription. Unset overrides cascade from the assistant.
          module Node
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt,
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool,
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak
                )
              end

            class Prompt < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Caller-supplied unique identifier for this node within the flow.
              sig { returns(String) }
              attr_accessor :id

              # Prompt that drives the LLM while this node is active. Required.
              sig { returns(String) }
              attr_accessor :instructions

              # Override for `Assistant.external_llm` while this node is active. Use this to
              # route a node's turns to a different external LLM (different `model`, `base_url`,
              # credentials). Part of the LLM bundle — see `model` for cascade semantics.
              # Mutually exclusive with `model` on the node (a single LLM identity per node).
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm
                  )
                )
              end
              attr_reader :external_llm

              sig do
                params(
                  external_llm:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::OrHash
                ).void
              end
              attr_writer :external_llm

              # How `instructions` combine with the assistant-level instructions. `replace`
              # (default): the node's instructions are used alone. `append`: the node's
              # instructions are concatenated after the assistant's instructions.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode::OrSymbol
                  )
                )
              end
              attr_reader :instructions_mode

              sig do
                params(
                  instructions_mode:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode::OrSymbol
                ).void
              end
              attr_writer :instructions_mode

              # Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
              # LLM bundle — see `model` for cascade semantics.
              sig { returns(T.nilable(String)) }
              attr_reader :llm_api_key_ref

              sig { params(llm_api_key_ref: String).void }
              attr_writer :llm_api_key_ref

              # Override for `Assistant.model` while this node is active. Part of the LLM bundle
              # (`model` + `llm_api_key_ref` + `external_llm`): when any of the three is set on
              # the node, all three are taken from the node and the assistant-level LLM identity
              # is not consulted. When none of the three is set, the assistant's bundle cascades
              # unchanged.
              sig { returns(T.nilable(String)) }
              attr_reader :model

              sig { params(model: String).void }
              attr_writer :model

              # Optional human-readable label, displayed in authoring UIs.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              # by the runtime; round-trips so frontends can persist graph layout across
              # reloads.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Position
                  )
                )
              end
              attr_reader :position

              sig do
                params(
                  position:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Position::OrHash
                ).void
              end
              attr_writer :position

              # IDs of shared (org-level) tools available at this node. Knowledge bases are
              # attached the same way — via a shared retrieval tool. Tools not listed here are
              # not callable while this node is active.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :shared_tool_ids

              sig { params(shared_tool_ids: T::Array[String]).void }
              attr_writer :shared_tool_ids

              # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
              # (default): only the node's tools are callable. `append`: the node's tools are
              # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode::OrSymbol
                  )
                )
              end
              attr_reader :tools_mode

              sig do
                params(
                  tools_mode:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode::OrSymbol
                ).void
              end
              attr_writer :tools_mode

              # Per-node transcription override (model/language/region). Unset fields cascade
              # from the assistant-level transcription.
              sig { returns(T.nilable(Telnyx::AI::TranscriptionSettings)) }
              attr_reader :transcription

              sig do
                params(
                  transcription: Telnyx::AI::TranscriptionSettings::OrHash
                ).void
              end
              attr_writer :transcription

              # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
              # standalone tool execution (see `ToolNodeReq`).
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type::OrSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # Per-node voice override. Only fields set here override the assistant-level voice
              # settings; unset fields cascade.
              sig { returns(T.nilable(Telnyx::AI::VoiceSettings)) }
              attr_reader :voice_settings

              sig do
                params(voice_settings: Telnyx::AI::VoiceSettings::OrHash).void
              end
              attr_writer :voice_settings

              # One step in a conversation flow, as supplied by API clients.
              #
              # Each node carries the prompt, tool scope, and optional overrides for
              # model/voice/transcription. Unset overrides cascade from the assistant.
              sig do
                params(
                  id: String,
                  instructions: String,
                  external_llm:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::OrHash,
                  instructions_mode:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode::OrSymbol,
                  llm_api_key_ref: String,
                  model: String,
                  name: String,
                  position:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Position::OrHash,
                  shared_tool_ids: T::Array[String],
                  tools_mode:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode::OrSymbol,
                  transcription: Telnyx::AI::TranscriptionSettings::OrHash,
                  type:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type::OrSymbol,
                  voice_settings: Telnyx::AI::VoiceSettings::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Caller-supplied unique identifier for this node within the flow.
                id:,
                # Prompt that drives the LLM while this node is active. Required.
                instructions:,
                # Override for `Assistant.external_llm` while this node is active. Use this to
                # route a node's turns to a different external LLM (different `model`, `base_url`,
                # credentials). Part of the LLM bundle — see `model` for cascade semantics.
                # Mutually exclusive with `model` on the node (a single LLM identity per node).
                external_llm: nil,
                # How `instructions` combine with the assistant-level instructions. `replace`
                # (default): the node's instructions are used alone. `append`: the node's
                # instructions are concatenated after the assistant's instructions.
                instructions_mode: nil,
                # Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
                # LLM bundle — see `model` for cascade semantics.
                llm_api_key_ref: nil,
                # Override for `Assistant.model` while this node is active. Part of the LLM bundle
                # (`model` + `llm_api_key_ref` + `external_llm`): when any of the three is set on
                # the node, all three are taken from the node and the assistant-level LLM identity
                # is not consulted. When none of the three is set, the assistant's bundle cascades
                # unchanged.
                model: nil,
                # Optional human-readable label, displayed in authoring UIs.
                name: nil,
                # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
                # by the runtime; round-trips so frontends can persist graph layout across
                # reloads.
                position: nil,
                # IDs of shared (org-level) tools available at this node. Knowledge bases are
                # attached the same way — via a shared retrieval tool. Tools not listed here are
                # not callable while this node is active.
                shared_tool_ids: nil,
                # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
                # (default): only the node's tools are callable. `append`: the node's tools are
                # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
                tools_mode: nil,
                # Per-node transcription override (model/language/region). Unset fields cascade
                # from the assistant-level transcription.
                transcription: nil,
                # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
                # standalone tool execution (see `ToolNodeReq`).
                type: nil,
                # Per-node voice override. Only fields set here override the assistant-level voice
                # settings; unset fields cascade.
                voice_settings: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    instructions: String,
                    external_llm:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm,
                    instructions_mode:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode::OrSymbol,
                    llm_api_key_ref: String,
                    model: String,
                    name: String,
                    position:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Position,
                    shared_tool_ids: T::Array[String],
                    tools_mode:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode::OrSymbol,
                    transcription: Telnyx::AI::TranscriptionSettings,
                    type:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type::OrSymbol,
                    voice_settings: Telnyx::AI::VoiceSettings
                  }
                )
              end
              def to_hash
              end

              class ExternalLlm < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Base URL for the external LLM endpoint.
                sig { returns(String) }
                attr_accessor :base_url

                # Model identifier to use with the external LLM endpoint.
                sig { returns(String) }
                attr_accessor :model

                # Authentication method used when connecting to the external LLM endpoint.
                sig do
                  returns(
                    T.nilable(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::AuthenticationMethod::OrSymbol
                    )
                  )
                end
                attr_reader :authentication_method

                sig do
                  params(
                    authentication_method:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::AuthenticationMethod::OrSymbol
                  ).void
                end
                attr_writer :authentication_method

                # Integration secret identifier for the client certificate used with certificate
                # authentication.
                sig { returns(T.nilable(String)) }
                attr_reader :certificate_ref

                sig { params(certificate_ref: String).void }
                attr_writer :certificate_ref

                # When `true`, Telnyx forwards the assistant's dynamic variables to the external
                # LLM endpoint as a top-level `extra_metadata` object on the chat completion
                # request body. Defaults to `false`. Example payload sent to the external
                # endpoint:
                # `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
                # Distinct from OpenAI's native `metadata` field, which has its own size and type
                # limits.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :forward_metadata

                sig { params(forward_metadata: T::Boolean).void }
                attr_writer :forward_metadata

                # Integration secret identifier for the external LLM API key.
                sig { returns(T.nilable(String)) }
                attr_reader :llm_api_key_ref

                sig { params(llm_api_key_ref: String).void }
                attr_writer :llm_api_key_ref

                # URL used to retrieve an access token when certificate authentication is enabled.
                sig { returns(T.nilable(String)) }
                attr_reader :token_retrieval_url

                sig { params(token_retrieval_url: String).void }
                attr_writer :token_retrieval_url

                # Override for `Assistant.external_llm` while this node is active. Use this to
                # route a node's turns to a different external LLM (different `model`, `base_url`,
                # credentials). Part of the LLM bundle — see `model` for cascade semantics.
                # Mutually exclusive with `model` on the node (a single LLM identity per node).
                sig do
                  params(
                    base_url: String,
                    model: String,
                    authentication_method:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::AuthenticationMethod::OrSymbol,
                    certificate_ref: String,
                    forward_metadata: T::Boolean,
                    llm_api_key_ref: String,
                    token_retrieval_url: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Base URL for the external LLM endpoint.
                  base_url:,
                  # Model identifier to use with the external LLM endpoint.
                  model:,
                  # Authentication method used when connecting to the external LLM endpoint.
                  authentication_method: nil,
                  # Integration secret identifier for the client certificate used with certificate
                  # authentication.
                  certificate_ref: nil,
                  # When `true`, Telnyx forwards the assistant's dynamic variables to the external
                  # LLM endpoint as a top-level `extra_metadata` object on the chat completion
                  # request body. Defaults to `false`. Example payload sent to the external
                  # endpoint:
                  # `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
                  # Distinct from OpenAI's native `metadata` field, which has its own size and type
                  # limits.
                  forward_metadata: nil,
                  # Integration secret identifier for the external LLM API key.
                  llm_api_key_ref: nil,
                  # URL used to retrieve an access token when certificate authentication is enabled.
                  token_retrieval_url: nil
                )
                end

                sig do
                  override.returns(
                    {
                      base_url: String,
                      model: String,
                      authentication_method:
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::AuthenticationMethod::OrSymbol,
                      certificate_ref: String,
                      forward_metadata: T::Boolean,
                      llm_api_key_ref: String,
                      token_retrieval_url: String
                    }
                  )
                end
                def to_hash
                end

                # Authentication method used when connecting to the external LLM endpoint.
                module AuthenticationMethod
                  extend Telnyx::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::AuthenticationMethod
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  TOKEN =
                    T.let(
                      :token,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::AuthenticationMethod::TaggedSymbol
                    )
                  CERTIFICATE =
                    T.let(
                      :certificate,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::AuthenticationMethod::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ExternalLlm::AuthenticationMethod::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              # How `instructions` combine with the assistant-level instructions. `replace`
              # (default): the node's instructions are used alone. `append`: the node's
              # instructions are concatenated after the assistant's instructions.
              module InstructionsMode
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                REPLACE =
                  T.let(
                    :replace,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode::TaggedSymbol
                  )
                APPEND =
                  T.let(
                    :append,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Position < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Position,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Horizontal coordinate in the authoring canvas.
                sig { returns(Float) }
                attr_accessor :x

                # Vertical coordinate in the authoring canvas.
                sig { returns(Float) }
                attr_accessor :y_

                # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
                # by the runtime; round-trips so frontends can persist graph layout across
                # reloads.
                sig { params(x: Float, y_: Float).returns(T.attached_class) }
                def self.new(
                  # Horizontal coordinate in the authoring canvas.
                  x:,
                  # Vertical coordinate in the authoring canvas.
                  y_:
                )
                end

                sig { override.returns({ x: Float, y_: Float }) }
                def to_hash
                end
              end

              # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
              # (default): only the node's tools are callable. `append`: the node's tools are
              # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
              module ToolsMode
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                REPLACE =
                  T.let(
                    :replace,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode::TaggedSymbol
                  )
                APPEND =
                  T.let(
                    :append,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
              # standalone tool execution (see `ToolNodeReq`).
              module Type
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PROMPT =
                  T.let(
                    :prompt,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Tool < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Caller-supplied unique identifier for this node within the flow.
              sig { returns(String) }
              attr_accessor :id

              # ID of the single shared (org-level) tool this node executes. When the flow
              # reaches this node the tool runs as a deliberate step (no LLM turn); its outgoing
              # `tool_result` edges then route on the outcome. Arguments are filled from the
              # conversation's dynamic variables by name — a dynamic variable whose name matches
              # one of the tool's parameters supplies that argument. Cross-validated against the
              # org's shared tools on write.
              sig { returns(String) }
              attr_accessor :shared_tool_id

              # Optional human-readable label, displayed in authoring UIs.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              # by the runtime; round-trips so frontends can persist graph layout across
              # reloads.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Position
                  )
                )
              end
              attr_reader :position

              sig do
                params(
                  position:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Position::OrHash
                ).void
              end
              attr_writer :position

              # Node kind discriminator. Always `tool` for a tool node.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type::OrSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # A standalone tool step in a conversation flow, as supplied by clients.
              #
              # Unlike a prompt node, a tool node has no instructions or model — it isn't an LLM
              # turn. Reaching it deterministically runs one shared tool (arguments filled from
              # matching dynamic variables by name), then routes on the result via outgoing
              # `tool_result` edges.
              sig do
                params(
                  id: String,
                  shared_tool_id: String,
                  name: String,
                  position:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Position::OrHash,
                  type:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Caller-supplied unique identifier for this node within the flow.
                id:,
                # ID of the single shared (org-level) tool this node executes. When the flow
                # reaches this node the tool runs as a deliberate step (no LLM turn); its outgoing
                # `tool_result` edges then route on the outcome. Arguments are filled from the
                # conversation's dynamic variables by name — a dynamic variable whose name matches
                # one of the tool's parameters supplies that argument. Cross-validated against the
                # org's shared tools on write.
                shared_tool_id:,
                # Optional human-readable label, displayed in authoring UIs.
                name: nil,
                # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
                # by the runtime; round-trips so frontends can persist graph layout across
                # reloads.
                position: nil,
                # Node kind discriminator. Always `tool` for a tool node.
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    shared_tool_id: String,
                    name: String,
                    position:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Position,
                    type:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              class Position < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Position,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Horizontal coordinate in the authoring canvas.
                sig { returns(Float) }
                attr_accessor :x

                # Vertical coordinate in the authoring canvas.
                sig { returns(Float) }
                attr_accessor :y_

                # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
                # by the runtime; round-trips so frontends can persist graph layout across
                # reloads.
                sig { params(x: Float, y_: Float).returns(T.attached_class) }
                def self.new(
                  # Horizontal coordinate in the authoring canvas.
                  x:,
                  # Vertical coordinate in the authoring canvas.
                  y_:
                )
                end

                sig { override.returns({ x: Float, y_: Float }) }
                def to_hash
                end
              end

              # Node kind discriminator. Always `tool` for a tool node.
              module Type
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TOOL =
                  T.let(
                    :tool,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Speak < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Caller-supplied unique identifier for this node within the flow.
              sig { returns(String) }
              attr_accessor :id

              # Message delivered to the user verbatim when the flow reaches this node. No LLM
              # turn — the text is spoken/sent exactly as written. `{{variable}}` placeholders
              # are interpolated from the conversation's dynamic variables; an unresolved
              # placeholder renders as an empty string. After delivering, the flow routes via
              # the node's outgoing `llm` / `expression` edges (commonly a single unconditional
              # edge).
              sig { returns(String) }
              attr_accessor :message

              # Optional human-readable label, displayed in authoring UIs.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              # by the runtime; round-trips so frontends can persist graph layout across
              # reloads.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Position
                  )
                )
              end
              attr_reader :position

              sig do
                params(
                  position:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Position::OrHash
                ).void
              end
              attr_writer :position

              # Node kind discriminator. Always `speak` for a speak node.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type::OrSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # A standalone scripted-message step in a flow, as supplied by clients.
              #
              # Unlike a prompt node, a speak node has no instructions or model — it isn't an
              # LLM turn. Reaching it delivers `message` to the user verbatim (with
              # `{{variable}}` interpolation), then routes via outgoing `llm` / `expression`
              # edges.
              sig do
                params(
                  id: String,
                  message: String,
                  name: String,
                  position:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Position::OrHash,
                  type:
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Caller-supplied unique identifier for this node within the flow.
                id:,
                # Message delivered to the user verbatim when the flow reaches this node. No LLM
                # turn — the text is spoken/sent exactly as written. `{{variable}}` placeholders
                # are interpolated from the conversation's dynamic variables; an unresolved
                # placeholder renders as an empty string. After delivering, the flow routes via
                # the node's outgoing `llm` / `expression` edges (commonly a single unconditional
                # edge).
                message:,
                # Optional human-readable label, displayed in authoring UIs.
                name: nil,
                # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
                # by the runtime; round-trips so frontends can persist graph layout across
                # reloads.
                position: nil,
                # Node kind discriminator. Always `speak` for a speak node.
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    message: String,
                    name: String,
                    position:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Position,
                    type:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              class Position < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Position,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Horizontal coordinate in the authoring canvas.
                sig { returns(Float) }
                attr_accessor :x

                # Vertical coordinate in the authoring canvas.
                sig { returns(Float) }
                attr_accessor :y_

                # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
                # by the runtime; round-trips so frontends can persist graph layout across
                # reloads.
                sig { params(x: Float, y_: Float).returns(T.attached_class) }
                def self.new(
                  # Horizontal coordinate in the authoring canvas.
                  x:,
                  # Vertical coordinate in the authoring canvas.
                  y_:
                )
                end

                sig { override.returns({ x: Float, y_: Float }) }
                def to_hash
                end
              end

              # Node kind discriminator. Always `speak` for a speak node.
              module Type
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SPEAK =
                  T.let(
                    :speak,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Variants
                ]
              )
            end
            def self.variants
            end
          end

          class Edge < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge,
                  Telnyx::Internal::AnyHash
                )
              end

            # Caller-supplied unique identifier for this edge within the flow.
            sig { returns(String) }
            attr_accessor :id

            # Condition that gates the transition. Discriminated by `type`: `llm`,
            # `expression`.
            sig do
              returns(
                T.any(
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Llm,
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression,
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Default
                )
              )
            end
            attr_accessor :condition

            # ID of the node this edge transitions away from.
            sig { returns(String) }
            attr_accessor :start_node_id

            # Destination of the transition. Discriminated by `type`: `node` (jump to another
            # node in this flow) or `assistant` (hand off to a different assistant).
            sig do
              returns(
                T.any(
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Node,
                  Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant
                )
              )
            end
            attr_accessor :target

            # Directed transition from one node to a target, gated by a condition.
            #
            # The target is either another node in the same flow (`NodeTarget`) or a different
            # assistant (`AssistantTarget`). Multiple edges may share a `start_node_id`; the
            # runtime evaluates them in the order they're declared and takes the first whose
            # condition is true.
            sig do
              params(
                id: String,
                condition:
                  T.any(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Llm::OrHash,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::OrHash,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Default::OrHash
                  ),
                start_node_id: String,
                target:
                  T.any(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Node::OrHash,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::OrHash
                  )
              ).returns(T.attached_class)
            end
            def self.new(
              # Caller-supplied unique identifier for this edge within the flow.
              id:,
              # Condition that gates the transition. Discriminated by `type`: `llm`,
              # `expression`.
              condition:,
              # ID of the node this edge transitions away from.
              start_node_id:,
              # Destination of the transition. Discriminated by `type`: `node` (jump to another
              # node in this flow) or `assistant` (hand off to a different assistant).
              target:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  condition:
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Llm,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Default
                    ),
                  start_node_id: String,
                  target:
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Node,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant
                    )
                }
              )
            end
            def to_hash
            end

            # Condition that gates the transition. Discriminated by `type`: `llm`,
            # `expression`.
            module Condition
              extend Telnyx::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Llm,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Default
                  )
                end

              class Llm < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Llm,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Natural-language criterion the LLM judges as true/false.
                sig { returns(String) }
                attr_accessor :prompt

                sig { returns(Symbol) }
                attr_accessor :type

                # Edge condition evaluated by the LLM from a natural-language prompt.
                #
                # The model is asked to judge the prompt against conversation context and returns
                # true/false. Use this for fuzzy intents that aren't expressible as a
                # deterministic expression (e.g. 'user wants to escalate to a human').
                sig do
                  params(prompt: String, type: Symbol).returns(T.attached_class)
                end
                def self.new(
                  # Natural-language criterion the LLM judges as true/false.
                  prompt:,
                  type: :llm
                )
                end

                sig { override.returns({ prompt: String, type: Symbol }) }
                def to_hash
                end
              end

              class Expression < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # A node in a deterministic expression AST. Exactly one variant is selected by the
                # `type` discriminator. Terminal variants (`number_literal`, `string_literal`,
                # `bool_literal`, `variable`) bottom out the recursion; `arithmetic`, `bool_op`,
                # and `comparison` nest further sub-expressions.
                #
                # Extracted into a single named schema so the recursive union is defined once (was
                # previously inlined at every operand site).
                sig do
                  returns(
                    T.any(
                      T.anything,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::DynamicVariableExpression,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::StringLiteralExpression,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::NumberLiteralExpression,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::BooleanLiteralExpression
                    )
                  )
                end
                attr_accessor :expression

                sig { returns(Symbol) }
                attr_accessor :type

                # Edge condition evaluated as a deterministic expression AST.
                #
                # The expression is computed against runtime dynamic variables and must evaluate
                # to a boolean. Prefer this over `LLMCondition` when the rule is a clean function
                # of known variables — it's cheaper and predictable.
                sig do
                  params(
                    expression:
                      T.any(
                        T.anything,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::DynamicVariableExpression::OrHash,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::StringLiteralExpression::OrHash,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::NumberLiteralExpression::OrHash,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::BooleanLiteralExpression::OrHash
                      ),
                    type: Symbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # A node in a deterministic expression AST. Exactly one variant is selected by the
                  # `type` discriminator. Terminal variants (`number_literal`, `string_literal`,
                  # `bool_literal`, `variable`) bottom out the recursion; `arithmetic`, `bool_op`,
                  # and `comparison` nest further sub-expressions.
                  #
                  # Extracted into a single named schema so the recursive union is defined once (was
                  # previously inlined at every operand site).
                  expression:,
                  type: :expression
                )
                end

                sig do
                  override.returns(
                    {
                      expression:
                        T.any(
                          T.anything,
                          Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::DynamicVariableExpression,
                          Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::StringLiteralExpression,
                          Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::NumberLiteralExpression,
                          Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::BooleanLiteralExpression
                        ),
                      type: Symbol
                    }
                  )
                end
                def to_hash
                end

                # A node in a deterministic expression AST. Exactly one variant is selected by the
                # `type` discriminator. Terminal variants (`number_literal`, `string_literal`,
                # `bool_literal`, `variable`) bottom out the recursion; `arithmetic`, `bool_op`,
                # and `comparison` nest further sub-expressions.
                #
                # Extracted into a single named schema so the recursive union is defined once (was
                # previously inlined at every operand site).
                module Expression
                  extend Telnyx::Internal::Type::Union

                  Variants =
                    T.type_alias do
                      T.any(
                        T.anything,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::DynamicVariableExpression,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::StringLiteralExpression,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::NumberLiteralExpression,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::BooleanLiteralExpression
                      )
                    end

                  class DynamicVariableExpression < Telnyx::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::DynamicVariableExpression,
                          Telnyx::Internal::AnyHash
                        )
                      end

                    # Variable name to look up in the runtime context.
                    sig { returns(String) }
                    attr_accessor :name

                    sig { returns(Symbol) }
                    attr_accessor :type

                    # Reference a dynamic variable by name.
                    #
                    # Resolved at runtime from the assistant's dynamic-variables context (see
                    # `Assistant.dynamic_variables` and the dynamic-variables webhook).
                    sig do
                      params(name: String, type: Symbol).returns(
                        T.attached_class
                      )
                    end
                    def self.new(
                      # Variable name to look up in the runtime context.
                      name:,
                      type: :variable
                    )
                    end

                    sig { override.returns({ name: String, type: Symbol }) }
                    def to_hash
                    end
                  end

                  class StringLiteralExpression < Telnyx::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::StringLiteralExpression,
                          Telnyx::Internal::AnyHash
                        )
                      end

                    sig { returns(Symbol) }
                    attr_accessor :type

                    # Literal string value.
                    sig { returns(String) }
                    attr_accessor :value

                    # Constant string value.
                    sig do
                      params(value: String, type: Symbol).returns(
                        T.attached_class
                      )
                    end
                    def self.new(
                      # Literal string value.
                      value:,
                      type: :string_literal
                    )
                    end

                    sig { override.returns({ type: Symbol, value: String }) }
                    def to_hash
                    end
                  end

                  class NumberLiteralExpression < Telnyx::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::NumberLiteralExpression,
                          Telnyx::Internal::AnyHash
                        )
                      end

                    sig { returns(Symbol) }
                    attr_accessor :type

                    # Literal numeric value.
                    sig { returns(Float) }
                    attr_accessor :value

                    # Constant numeric value (float; integers are accepted and stored as float).
                    sig do
                      params(value: Float, type: Symbol).returns(
                        T.attached_class
                      )
                    end
                    def self.new(
                      # Literal numeric value.
                      value:,
                      type: :number_literal
                    )
                    end

                    sig { override.returns({ type: Symbol, value: Float }) }
                    def to_hash
                    end
                  end

                  class BooleanLiteralExpression < Telnyx::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::BooleanLiteralExpression,
                          Telnyx::Internal::AnyHash
                        )
                      end

                    sig { returns(Symbol) }
                    attr_accessor :type

                    # Literal boolean value.
                    sig { returns(T::Boolean) }
                    attr_accessor :value

                    # Constant boolean value. Useful for unconditional ('always') edges.
                    sig do
                      params(value: T::Boolean, type: Symbol).returns(
                        T.attached_class
                      )
                    end
                    def self.new(
                      # Literal boolean value.
                      value:,
                      type: :bool_literal
                    )
                    end

                    sig do
                      override.returns({ type: Symbol, value: T::Boolean })
                    end
                    def to_hash
                    end
                  end

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::Variants
                      ]
                    )
                  end
                  def self.variants
                  end
                end
              end

              class Default < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Default,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(Symbol) }
                attr_accessor :type

                # Fallback edge condition: fires only when no other edge's condition is true.
                #
                # Evaluated after every conditioned (`llm` / `expression`) edge regardless of
                # declaration order, so it routes the flow whenever none of the node's other
                # outgoing edges match. Valid **only** on edges leaving a `tool` or `speak` node,
                # where the deterministic step auto-advances and must always have somewhere to go.
                # A tool/speak node with any outgoing edge is required to carry exactly one
                # `default` edge so it never dead-ends; a tool/speak node with no outgoing edges
                # is a valid terminal step. Carries no parameters.
                sig { params(type: Symbol).returns(T.attached_class) }
                def self.new(type: :default)
                end

                sig { override.returns({ type: Symbol }) }
                def to_hash
                end
              end

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            # Destination of the transition. Discriminated by `type`: `node` (jump to another
            # node in this flow) or `assistant` (hand off to a different assistant).
            module Target
              extend Telnyx::Internal::Type::Union

              Variants =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Node,
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant
                  )
                end

              class Node < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Node,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # ID of the node this edge transitions into.
                sig { returns(String) }
                attr_accessor :node_id

                sig { returns(Symbol) }
                attr_accessor :type

                # Edge target referencing another node within the same flow.
                #
                # The runtime transitions the active node to `node_id` and continues processing
                # within the current assistant's flow.
                sig do
                  params(node_id: String, type: Symbol).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # ID of the node this edge transitions into.
                  node_id:,
                  type: :node
                )
                end

                sig { override.returns({ node_id: String, type: Symbol }) }
                def to_hash
                end
              end

              class Assistant < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # ID of the assistant the conversation transitions to.
                sig { returns(String) }
                attr_accessor :assistant_id

                sig { returns(Symbol) }
                attr_accessor :type

                # Optional canvas coordinates for rendering the target assistant as a node in
                # authoring UIs. Pure presentation — the runtime ignores it; round-trips so
                # frontends can persist graph layout across reloads. When multiple edges target
                # the same assistant, each edge's `position` is independent (frontends typically
                # use the first non-null one).
                sig do
                  returns(
                    T.nilable(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::Position
                    )
                  )
                end
                attr_reader :position

                sig do
                  params(
                    position:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::Position::OrHash
                  ).void
                end
                attr_writer :position

                # Voice behavior when handing off to the target assistant, mirroring the handoff
                # tool's `voice_mode`. `unified` (default) keeps the current voice across the
                # handoff; `distinct` lets the target assistant speak with its own configured
                # voice. Only applies to assistant targets — node targets override voice via the
                # node's own `voice_settings`.
                sig do
                  returns(
                    T.nilable(
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode::OrSymbol
                    )
                  )
                end
                attr_reader :voice_mode

                sig do
                  params(
                    voice_mode:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode::OrSymbol
                  ).void
                end
                attr_writer :voice_mode

                # Edge target referencing a different assistant.
                #
                # When the edge fires, the conversation hands off to `assistant_id`: the active
                # assistant on the conversation row is rewritten and the new assistant's flow
                # starts at its own `start_node_id`. The current turn's LLM response is delivered
                # to the user as-is; subsequent turns route to the new assistant.
                sig do
                  params(
                    assistant_id: String,
                    position:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::Position::OrHash,
                    voice_mode:
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode::OrSymbol,
                    type: Symbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # ID of the assistant the conversation transitions to.
                  assistant_id:,
                  # Optional canvas coordinates for rendering the target assistant as a node in
                  # authoring UIs. Pure presentation — the runtime ignores it; round-trips so
                  # frontends can persist graph layout across reloads. When multiple edges target
                  # the same assistant, each edge's `position` is independent (frontends typically
                  # use the first non-null one).
                  position: nil,
                  # Voice behavior when handing off to the target assistant, mirroring the handoff
                  # tool's `voice_mode`. `unified` (default) keeps the current voice across the
                  # handoff; `distinct` lets the target assistant speak with its own configured
                  # voice. Only applies to assistant targets — node targets override voice via the
                  # node's own `voice_settings`.
                  voice_mode: nil,
                  type: :assistant
                )
                end

                sig do
                  override.returns(
                    {
                      assistant_id: String,
                      type: Symbol,
                      position:
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::Position,
                      voice_mode:
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode::OrSymbol
                    }
                  )
                end
                def to_hash
                end

                class Position < Telnyx::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::Position,
                        Telnyx::Internal::AnyHash
                      )
                    end

                  # Horizontal coordinate in the authoring canvas.
                  sig { returns(Float) }
                  attr_accessor :x

                  # Vertical coordinate in the authoring canvas.
                  sig { returns(Float) }
                  attr_accessor :y_

                  # Optional canvas coordinates for rendering the target assistant as a node in
                  # authoring UIs. Pure presentation — the runtime ignores it; round-trips so
                  # frontends can persist graph layout across reloads. When multiple edges target
                  # the same assistant, each edge's `position` is independent (frontends typically
                  # use the first non-null one).
                  sig { params(x: Float, y_: Float).returns(T.attached_class) }
                  def self.new(
                    # Horizontal coordinate in the authoring canvas.
                    x:,
                    # Vertical coordinate in the authoring canvas.
                    y_:
                  )
                  end

                  sig { override.returns({ x: Float, y_: Float }) }
                  def to_hash
                  end
                end

                # Voice behavior when handing off to the target assistant, mirroring the handoff
                # tool's `voice_mode`. `unified` (default) keeps the current voice across the
                # handoff; `distinct` lets the target assistant speak with its own configured
                # voice. Only applies to assistant targets — node targets override voice via the
                # node's own `voice_settings`.
                module VoiceMode
                  extend Telnyx::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  UNIFIED =
                    T.let(
                      :unified,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode::TaggedSymbol
                    )
                  DISTINCT =
                    T.let(
                      :distinct,
                      Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end
        end

        class ExternalLlm < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantCreateParams::ExternalLlm,
                Telnyx::Internal::AnyHash
              )
            end

          # Base URL for the external LLM endpoint.
          sig { returns(String) }
          attr_accessor :base_url

          # Model identifier to use with the external LLM endpoint.
          sig { returns(String) }
          attr_accessor :model

          # Authentication method used when connecting to the external LLM endpoint.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::AssistantCreateParams::ExternalLlm::AuthenticationMethod::OrSymbol
              )
            )
          end
          attr_reader :authentication_method

          sig do
            params(
              authentication_method:
                Telnyx::AI::AssistantCreateParams::ExternalLlm::AuthenticationMethod::OrSymbol
            ).void
          end
          attr_writer :authentication_method

          # Integration secret identifier for the client certificate used with certificate
          # authentication.
          sig { returns(T.nilable(String)) }
          attr_reader :certificate_ref

          sig { params(certificate_ref: String).void }
          attr_writer :certificate_ref

          # When `true`, Telnyx forwards the assistant's dynamic variables to the external
          # LLM endpoint as a top-level `extra_metadata` object on the chat completion
          # request body. Defaults to `false`. Example payload sent to the external
          # endpoint:
          # `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
          # Distinct from OpenAI's native `metadata` field, which has its own size and type
          # limits.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :forward_metadata

          sig { params(forward_metadata: T::Boolean).void }
          attr_writer :forward_metadata

          # Integration secret identifier for the external LLM API key.
          sig { returns(T.nilable(String)) }
          attr_reader :llm_api_key_ref

          sig { params(llm_api_key_ref: String).void }
          attr_writer :llm_api_key_ref

          # URL used to retrieve an access token when certificate authentication is enabled.
          sig { returns(T.nilable(String)) }
          attr_reader :token_retrieval_url

          sig { params(token_retrieval_url: String).void }
          attr_writer :token_retrieval_url

          sig do
            params(
              base_url: String,
              model: String,
              authentication_method:
                Telnyx::AI::AssistantCreateParams::ExternalLlm::AuthenticationMethod::OrSymbol,
              certificate_ref: String,
              forward_metadata: T::Boolean,
              llm_api_key_ref: String,
              token_retrieval_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Base URL for the external LLM endpoint.
            base_url:,
            # Model identifier to use with the external LLM endpoint.
            model:,
            # Authentication method used when connecting to the external LLM endpoint.
            authentication_method: nil,
            # Integration secret identifier for the client certificate used with certificate
            # authentication.
            certificate_ref: nil,
            # When `true`, Telnyx forwards the assistant's dynamic variables to the external
            # LLM endpoint as a top-level `extra_metadata` object on the chat completion
            # request body. Defaults to `false`. Example payload sent to the external
            # endpoint:
            # `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
            # Distinct from OpenAI's native `metadata` field, which has its own size and type
            # limits.
            forward_metadata: nil,
            # Integration secret identifier for the external LLM API key.
            llm_api_key_ref: nil,
            # URL used to retrieve an access token when certificate authentication is enabled.
            token_retrieval_url: nil
          )
          end

          sig do
            override.returns(
              {
                base_url: String,
                model: String,
                authentication_method:
                  Telnyx::AI::AssistantCreateParams::ExternalLlm::AuthenticationMethod::OrSymbol,
                certificate_ref: String,
                forward_metadata: T::Boolean,
                llm_api_key_ref: String,
                token_retrieval_url: String
              }
            )
          end
          def to_hash
          end

          # Authentication method used when connecting to the external LLM endpoint.
          module AuthenticationMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::AssistantCreateParams::ExternalLlm::AuthenticationMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TOKEN =
              T.let(
                :token,
                Telnyx::AI::AssistantCreateParams::ExternalLlm::AuthenticationMethod::TaggedSymbol
              )
            CERTIFICATE =
              T.let(
                :certificate,
                Telnyx::AI::AssistantCreateParams::ExternalLlm::AuthenticationMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::AssistantCreateParams::ExternalLlm::AuthenticationMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class FallbackConfig < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantCreateParams::FallbackConfig,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm
              )
            )
          end
          attr_reader :external_llm

          sig do
            params(
              external_llm:
                Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::OrHash
            ).void
          end
          attr_writer :external_llm

          # Integration secret identifier for the fallback model API key.
          sig { returns(T.nilable(String)) }
          attr_reader :llm_api_key_ref

          sig { params(llm_api_key_ref: String).void }
          attr_writer :llm_api_key_ref

          # Fallback Telnyx-hosted model to use when the primary LLM provider is
          # unavailable.
          sig { returns(T.nilable(String)) }
          attr_reader :model

          sig { params(model: String).void }
          attr_writer :model

          sig do
            params(
              external_llm:
                Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::OrHash,
              llm_api_key_ref: String,
              model: String
            ).returns(T.attached_class)
          end
          def self.new(
            external_llm: nil,
            # Integration secret identifier for the fallback model API key.
            llm_api_key_ref: nil,
            # Fallback Telnyx-hosted model to use when the primary LLM provider is
            # unavailable.
            model: nil
          )
          end

          sig do
            override.returns(
              {
                external_llm:
                  Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm,
                llm_api_key_ref: String,
                model: String
              }
            )
          end
          def to_hash
          end

          class ExternalLlm < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm,
                  Telnyx::Internal::AnyHash
                )
              end

            # Base URL for the external LLM endpoint.
            sig { returns(String) }
            attr_accessor :base_url

            # Model identifier to use with the external LLM endpoint.
            sig { returns(String) }
            attr_accessor :model

            # Authentication method used when connecting to the external LLM endpoint.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol
                )
              )
            end
            attr_reader :authentication_method

            sig do
              params(
                authentication_method:
                  Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol
              ).void
            end
            attr_writer :authentication_method

            # Integration secret identifier for the client certificate used with certificate
            # authentication.
            sig { returns(T.nilable(String)) }
            attr_reader :certificate_ref

            sig { params(certificate_ref: String).void }
            attr_writer :certificate_ref

            # When `true`, Telnyx forwards the assistant's dynamic variables to the external
            # LLM endpoint as a top-level `extra_metadata` object on the chat completion
            # request body. Defaults to `false`. Example payload sent to the external
            # endpoint:
            # `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
            # Distinct from OpenAI's native `metadata` field, which has its own size and type
            # limits.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :forward_metadata

            sig { params(forward_metadata: T::Boolean).void }
            attr_writer :forward_metadata

            # Integration secret identifier for the external LLM API key.
            sig { returns(T.nilable(String)) }
            attr_reader :llm_api_key_ref

            sig { params(llm_api_key_ref: String).void }
            attr_writer :llm_api_key_ref

            # URL used to retrieve an access token when certificate authentication is enabled.
            sig { returns(T.nilable(String)) }
            attr_reader :token_retrieval_url

            sig { params(token_retrieval_url: String).void }
            attr_writer :token_retrieval_url

            sig do
              params(
                base_url: String,
                model: String,
                authentication_method:
                  Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol,
                certificate_ref: String,
                forward_metadata: T::Boolean,
                llm_api_key_ref: String,
                token_retrieval_url: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Base URL for the external LLM endpoint.
              base_url:,
              # Model identifier to use with the external LLM endpoint.
              model:,
              # Authentication method used when connecting to the external LLM endpoint.
              authentication_method: nil,
              # Integration secret identifier for the client certificate used with certificate
              # authentication.
              certificate_ref: nil,
              # When `true`, Telnyx forwards the assistant's dynamic variables to the external
              # LLM endpoint as a top-level `extra_metadata` object on the chat completion
              # request body. Defaults to `false`. Example payload sent to the external
              # endpoint:
              # `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
              # Distinct from OpenAI's native `metadata` field, which has its own size and type
              # limits.
              forward_metadata: nil,
              # Integration secret identifier for the external LLM API key.
              llm_api_key_ref: nil,
              # URL used to retrieve an access token when certificate authentication is enabled.
              token_retrieval_url: nil
            )
            end

            sig do
              override.returns(
                {
                  base_url: String,
                  model: String,
                  authentication_method:
                    Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol,
                  certificate_ref: String,
                  forward_metadata: T::Boolean,
                  llm_api_key_ref: String,
                  token_retrieval_url: String
                }
              )
            end
            def to_hash
            end

            # Authentication method used when connecting to the external LLM endpoint.
            module AuthenticationMethod
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::AuthenticationMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TOKEN =
                T.let(
                  :token,
                  Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
                )
              CERTIFICATE =
                T.let(
                  :certificate,
                  Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::AssistantCreateParams::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Integration < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantCreateParams::Integration,
                Telnyx::Internal::AnyHash
              )
            end

          # Catalog integration ID to attach. This is the `id` from the integrations catalog
          # at `/ai/integrations` (the same value also appears as `integration_id` on
          # entries returned by `/ai/integrations/connections`). It is **not** the
          # connection-level `id` from `/ai/integrations/connections`.
          sig { returns(String) }
          attr_accessor :integration_id

          # Optional per-assistant allowlist of integration tool names. When omitted or
          # empty, all tools allowed by the connected integration are available to the
          # assistant.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :allowed_list

          sig { params(allowed_list: T::Array[String]).void }
          attr_writer :allowed_list

          # Reference to a connected integration attached to an assistant. Discover
          # available integrations with `/ai/integrations` and connected integrations with
          # `/ai/integrations/connections`.
          sig do
            params(
              integration_id: String,
              allowed_list: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Catalog integration ID to attach. This is the `id` from the integrations catalog
            # at `/ai/integrations` (the same value also appears as `integration_id` on
            # entries returned by `/ai/integrations/connections`). It is **not** the
            # connection-level `id` from `/ai/integrations/connections`.
            integration_id:,
            # Optional per-assistant allowlist of integration tool names. When omitted or
            # empty, all tools allowed by the connected integration are available to the
            # assistant.
            allowed_list: nil
          )
          end

          sig do
            override.returns(
              { integration_id: String, allowed_list: T::Array[String] }
            )
          end
          def to_hash
          end
        end

        class InterruptionSettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantCreateParams::InterruptionSettings,
                Telnyx::Internal::AnyHash
              )
            end

          # When true, disables user interruptions while the assistant greeting is playing.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :disable_greeting_interruption

          sig { params(disable_greeting_interruption: T::Boolean).void }
          attr_writer :disable_greeting_interruption

          # Whether users can interrupt the assistant while it is speaking.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :enable

          sig { params(enable: T::Boolean).void }
          attr_writer :enable

          # Controls when the assistant starts speaking after the user stops. These
          # thresholds primarily apply to non turn-taking transcription models. For
          # turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
          # transcription end-of-turn settings under `transcription.settings` instead.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan
              )
            )
          end
          attr_reader :start_speaking_plan

          sig do
            params(
              start_speaking_plan:
                Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan::OrHash
            ).void
          end
          attr_writer :start_speaking_plan

          # Settings for interruptions and how the assistant decides the user has finished
          # speaking. These timings are most relevant when using non turn-taking
          # transcription models. For turn-taking models like `deepgram/flux`, end-of-turn
          # behavior is controlled by the transcription end-of-turn settings under
          # `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
          # `eager_eot_threshold`).
          sig do
            params(
              disable_greeting_interruption: T::Boolean,
              enable: T::Boolean,
              start_speaking_plan:
                Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # When true, disables user interruptions while the assistant greeting is playing.
            disable_greeting_interruption: nil,
            # Whether users can interrupt the assistant while it is speaking.
            enable: nil,
            # Controls when the assistant starts speaking after the user stops. These
            # thresholds primarily apply to non turn-taking transcription models. For
            # turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
            # transcription end-of-turn settings under `transcription.settings` instead.
            start_speaking_plan: nil
          )
          end

          sig do
            override.returns(
              {
                disable_greeting_interruption: T::Boolean,
                enable: T::Boolean,
                start_speaking_plan:
                  Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan
              }
            )
          end
          def to_hash
          end

          class StartSpeakingPlan < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan,
                  Telnyx::Internal::AnyHash
                )
              end

            # Endpointing thresholds used to decide when the user has finished speaking.
            # Applies to non turn-taking transcription models. For `deepgram/flux`, use
            # `transcription.settings.eot_threshold` / `eot_timeout_ms` /
            # `eager_eot_threshold`.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan
                )
              )
            end
            attr_reader :transcription_endpointing_plan

            sig do
              params(
                transcription_endpointing_plan:
                  Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan::OrHash
              ).void
            end
            attr_writer :transcription_endpointing_plan

            # Minimum seconds to wait before the assistant starts speaking.
            sig { returns(T.nilable(Float)) }
            attr_reader :wait_seconds

            sig { params(wait_seconds: Float).void }
            attr_writer :wait_seconds

            # Controls when the assistant starts speaking after the user stops. These
            # thresholds primarily apply to non turn-taking transcription models. For
            # turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
            # transcription end-of-turn settings under `transcription.settings` instead.
            sig do
              params(
                transcription_endpointing_plan:
                  Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan::OrHash,
                wait_seconds: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Endpointing thresholds used to decide when the user has finished speaking.
              # Applies to non turn-taking transcription models. For `deepgram/flux`, use
              # `transcription.settings.eot_threshold` / `eot_timeout_ms` /
              # `eager_eot_threshold`.
              transcription_endpointing_plan: nil,
              # Minimum seconds to wait before the assistant starts speaking.
              wait_seconds: nil
            )
            end

            sig do
              override.returns(
                {
                  transcription_endpointing_plan:
                    Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan,
                  wait_seconds: Float
                }
              )
            end
            def to_hash
            end

            class TranscriptionEndpointingPlan < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantCreateParams::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Seconds to wait after the transcript ends without punctuation.
              sig { returns(T.nilable(Float)) }
              attr_reader :on_no_punctuation_seconds

              sig { params(on_no_punctuation_seconds: Float).void }
              attr_writer :on_no_punctuation_seconds

              # Seconds to wait after the transcript ends with a number.
              sig { returns(T.nilable(Float)) }
              attr_reader :on_number_seconds

              sig { params(on_number_seconds: Float).void }
              attr_writer :on_number_seconds

              # Seconds to wait after the transcript ends with punctuation.
              sig { returns(T.nilable(Float)) }
              attr_reader :on_punctuation_seconds

              sig { params(on_punctuation_seconds: Float).void }
              attr_writer :on_punctuation_seconds

              # Endpointing thresholds used to decide when the user has finished speaking.
              # Applies to non turn-taking transcription models. For `deepgram/flux`, use
              # `transcription.settings.eot_threshold` / `eot_timeout_ms` /
              # `eager_eot_threshold`.
              sig do
                params(
                  on_no_punctuation_seconds: Float,
                  on_number_seconds: Float,
                  on_punctuation_seconds: Float
                ).returns(T.attached_class)
              end
              def self.new(
                # Seconds to wait after the transcript ends without punctuation.
                on_no_punctuation_seconds: nil,
                # Seconds to wait after the transcript ends with a number.
                on_number_seconds: nil,
                # Seconds to wait after the transcript ends with punctuation.
                on_punctuation_seconds: nil
              )
              end

              sig do
                override.returns(
                  {
                    on_no_punctuation_seconds: Float,
                    on_number_seconds: Float,
                    on_punctuation_seconds: Float
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class McpServer < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantCreateParams::McpServer,
                Telnyx::Internal::AnyHash
              )
            end

          # ID of the MCP server to attach. This must be the `id` of an MCP server returned
          # by the `/ai/mcp_servers` endpoints.
          sig { returns(String) }
          attr_accessor :id

          # Optional per-assistant allowlist of MCP tool names. When omitted, the assistant
          # uses the MCP server's configured `allowed_tools`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :allowed_tools

          sig { params(allowed_tools: T::Array[String]).void }
          attr_writer :allowed_tools

          # Reference to an MCP server attached to an assistant. Create and manage MCP
          # servers with the `/ai/mcp_servers` endpoints, then attach them to assistants by
          # ID.
          sig do
            params(id: String, allowed_tools: T::Array[String]).returns(
              T.attached_class
            )
          end
          def self.new(
            # ID of the MCP server to attach. This must be the `id` of an MCP server returned
            # by the `/ai/mcp_servers` endpoints.
            id:,
            # Optional per-assistant allowlist of MCP tool names. When omitted, the assistant
            # uses the MCP server's configured `allowed_tools`.
            allowed_tools: nil
          )
          end

          sig do
            override.returns({ id: String, allowed_tools: T::Array[String] })
          end
          def to_hash
          end
        end

        class PostConversationSettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantCreateParams::PostConversationSettings,
                Telnyx::Internal::AnyHash
              )
            end

          # Whether post-conversation processing is enabled. When true, the assistant will
          # be invoked after the conversation ends to perform any final tool calls. Defaults
          # to false.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :enabled

          sig { params(enabled: T::Boolean).void }
          attr_writer :enabled

          # Configuration for post-conversation processing. When enabled, the assistant
          # receives one additional LLM turn after the conversation ends, allowing it to
          # execute tool calls such as logging to a CRM or sending a summary. The assistant
          # can execute multiple parallel or sequential tools during this phase.
          # Telephony-control tools (e.g. hangup, transfer) are unavailable
          # post-conversation. Beta feature.
          sig { params(enabled: T::Boolean).returns(T.attached_class) }
          def self.new(
            # Whether post-conversation processing is enabled. When true, the assistant will
            # be invoked after the conversation ends to perform any final tool calls. Defaults
            # to false.
            enabled: nil
          )
          end

          sig { override.returns({ enabled: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
