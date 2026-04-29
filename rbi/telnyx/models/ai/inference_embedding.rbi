# typed: strong

module Telnyx
  module Models
    module AI
      class InferenceEmbedding < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::InferenceEmbedding, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # System instructions for the assistant. These may be templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        sig { returns(String) }
        attr_accessor :instructions

        # ID of the model to use when `external_llm` is not set. You can use the
        # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
        # to see available models. If `external_llm` is provided, the assistant uses
        # `external_llm` instead of this field. If neither `model` nor `external_llm` is
        # provided, Telnyx applies the default model.
        sig { returns(String) }
        attr_accessor :model

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Map of dynamic variables and their values
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
          returns(
            T.nilable(T::Array[Telnyx::AI::EnabledFeatures::TaggedSymbol])
          )
        end
        attr_reader :enabled_features

        sig do
          params(
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol]
          ).void
        end
        attr_writer :enabled_features

        sig { returns(T.nilable(Telnyx::AI::InferenceEmbedding::ExternalLlm)) }
        attr_reader :external_llm

        sig do
          params(
            external_llm: Telnyx::AI::InferenceEmbedding::ExternalLlm::OrHash
          ).void
        end
        attr_writer :external_llm

        sig do
          returns(T.nilable(Telnyx::AI::InferenceEmbedding::FallbackConfig))
        end
        attr_reader :fallback_config

        sig do
          params(
            fallback_config:
              Telnyx::AI::InferenceEmbedding::FallbackConfig::OrHash
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

        sig { returns(T.nilable(Telnyx::AI::ImportMetadata)) }
        attr_reader :import_metadata

        sig { params(import_metadata: Telnyx::AI::ImportMetadata::OrHash).void }
        attr_writer :import_metadata

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
            T.nilable(T::Array[Telnyx::AI::InferenceEmbedding::Integration])
          )
        end
        attr_reader :integrations

        sig do
          params(
            integrations:
              T::Array[Telnyx::AI::InferenceEmbedding::Integration::OrHash]
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
            T.nilable(Telnyx::AI::InferenceEmbedding::InterruptionSettings)
          )
        end
        attr_reader :interruption_settings

        sig do
          params(
            interruption_settings:
              Telnyx::AI::InferenceEmbedding::InterruptionSettings::OrHash
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
            T.nilable(T::Array[Telnyx::AI::InferenceEmbedding::McpServer])
          )
        end
        attr_reader :mcp_servers

        sig do
          params(
            mcp_servers:
              T::Array[Telnyx::AI::InferenceEmbedding::McpServer::OrHash]
          ).void
        end
        attr_writer :mcp_servers

        sig { returns(T.nilable(Telnyx::AI::MessagingSettings)) }
        attr_reader :messaging_settings

        sig do
          params(messaging_settings: Telnyx::AI::MessagingSettings::OrHash).void
        end
        attr_writer :messaging_settings

        sig { returns(T.nilable(Telnyx::AI::Observability)) }
        attr_reader :observability_settings

        sig do
          params(observability_settings: Telnyx::AI::Observability::OrHash).void
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
            T.nilable(Telnyx::AI::InferenceEmbedding::PostConversationSettings)
          )
        end
        attr_reader :post_conversation_settings

        sig do
          params(
            post_conversation_settings:
              Telnyx::AI::InferenceEmbedding::PostConversationSettings::OrHash
          ).void
        end
        attr_writer :post_conversation_settings

        sig { returns(T.nilable(Telnyx::AI::PrivacySettings)) }
        attr_reader :privacy_settings

        sig do
          params(privacy_settings: Telnyx::AI::PrivacySettings::OrHash).void
        end
        attr_writer :privacy_settings

        # IDs of missions related to this assistant.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :related_mission_ids

        sig { params(related_mission_ids: T::Array[String]).void }
        attr_writer :related_mission_ids

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

        # Deprecated for new integrations. Inline tool definitions available to the
        # assistant. Prefer `tool_ids` to attach shared tools created with the AI Tools
        # endpoints.
        sig do
          returns(T.nilable(T::Array[Telnyx::AI::AssistantTool::Variants]))
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

        # Timestamp when this assistant version was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :version_created_at

        sig { params(version_created_at: Time).void }
        attr_writer :version_created_at

        # Identifier for the assistant version returned by version-aware assistant
        # endpoints.
        sig { returns(T.nilable(String)) }
        attr_reader :version_id

        sig { params(version_id: String).void }
        attr_writer :version_id

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
            id: String,
            created_at: Time,
            instructions: String,
            model: String,
            name: String,
            description: String,
            dynamic_variables: T::Hash[Symbol, T.anything],
            dynamic_variables_webhook_timeout_ms: Integer,
            dynamic_variables_webhook_url: String,
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
            external_llm: Telnyx::AI::InferenceEmbedding::ExternalLlm::OrHash,
            fallback_config:
              Telnyx::AI::InferenceEmbedding::FallbackConfig::OrHash,
            greeting: String,
            import_metadata: Telnyx::AI::ImportMetadata::OrHash,
            insight_settings: Telnyx::AI::InsightSettings::OrHash,
            integrations:
              T::Array[Telnyx::AI::InferenceEmbedding::Integration::OrHash],
            interruption_settings:
              Telnyx::AI::InferenceEmbedding::InterruptionSettings::OrHash,
            llm_api_key_ref: String,
            mcp_servers:
              T::Array[Telnyx::AI::InferenceEmbedding::McpServer::OrHash],
            messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
            observability_settings: Telnyx::AI::Observability::OrHash,
            post_conversation_settings:
              Telnyx::AI::InferenceEmbedding::PostConversationSettings::OrHash,
            privacy_settings: Telnyx::AI::PrivacySettings::OrHash,
            related_mission_ids: T::Array[String],
            tags: T::Array[String],
            telephony_settings: Telnyx::AI::TelephonySettings::OrHash,
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
            version_created_at: Time,
            version_id: String,
            version_name: String,
            voice_settings: Telnyx::AI::VoiceSettings::OrHash,
            widget_settings: Telnyx::AI::WidgetSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          # System instructions for the assistant. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          instructions:,
          # ID of the model to use when `external_llm` is not set. You can use the
          # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
          # to see available models. If `external_llm` is provided, the assistant uses
          # `external_llm` instead of this field. If neither `model` nor `external_llm` is
          # provided, Telnyx applies the default model.
          model:,
          name:,
          description: nil,
          # Map of dynamic variables and their values
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
          import_metadata: nil,
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
          observability_settings: nil,
          # Configuration for post-conversation processing. When enabled, the assistant
          # receives one additional LLM turn after the conversation ends, allowing it to
          # execute tool calls such as logging to a CRM or sending a summary. The assistant
          # can execute multiple parallel or sequential tools during this phase.
          # Telephony-control tools (e.g. hangup, transfer) are unavailable
          # post-conversation. Beta feature.
          post_conversation_settings: nil,
          privacy_settings: nil,
          # IDs of missions related to this assistant.
          related_mission_ids: nil,
          # Tags associated with the assistant. Tags can also be managed with the assistant
          # tag endpoints.
          tags: nil,
          telephony_settings: nil,
          # Deprecated for new integrations. Inline tool definitions available to the
          # assistant. Prefer `tool_ids` to attach shared tools created with the AI Tools
          # endpoints.
          tools: nil,
          transcription: nil,
          # Timestamp when this assistant version was created.
          version_created_at: nil,
          # Identifier for the assistant version returned by version-aware assistant
          # endpoints.
          version_id: nil,
          # Human-readable name for the assistant version.
          version_name: nil,
          voice_settings: nil,
          # Configuration settings for the assistant's web widget.
          widget_settings: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              instructions: String,
              model: String,
              name: String,
              description: String,
              dynamic_variables: T::Hash[Symbol, T.anything],
              dynamic_variables_webhook_timeout_ms: Integer,
              dynamic_variables_webhook_url: String,
              enabled_features:
                T::Array[Telnyx::AI::EnabledFeatures::TaggedSymbol],
              external_llm: Telnyx::AI::InferenceEmbedding::ExternalLlm,
              fallback_config: Telnyx::AI::InferenceEmbedding::FallbackConfig,
              greeting: String,
              import_metadata: Telnyx::AI::ImportMetadata,
              insight_settings: Telnyx::AI::InsightSettings,
              integrations:
                T::Array[Telnyx::AI::InferenceEmbedding::Integration],
              interruption_settings:
                Telnyx::AI::InferenceEmbedding::InterruptionSettings,
              llm_api_key_ref: String,
              mcp_servers: T::Array[Telnyx::AI::InferenceEmbedding::McpServer],
              messaging_settings: Telnyx::AI::MessagingSettings,
              observability_settings: Telnyx::AI::Observability,
              post_conversation_settings:
                Telnyx::AI::InferenceEmbedding::PostConversationSettings,
              privacy_settings: Telnyx::AI::PrivacySettings,
              related_mission_ids: T::Array[String],
              tags: T::Array[String],
              telephony_settings: Telnyx::AI::TelephonySettings,
              tools: T::Array[Telnyx::AI::AssistantTool::Variants],
              transcription: Telnyx::AI::TranscriptionSettings,
              version_created_at: Time,
              version_id: String,
              version_name: String,
              voice_settings: Telnyx::AI::VoiceSettings,
              widget_settings: Telnyx::AI::WidgetSettings
            }
          )
        end
        def to_hash
        end

        class ExternalLlm < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::InferenceEmbedding::ExternalLlm,
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
                Telnyx::AI::InferenceEmbedding::ExternalLlm::AuthenticationMethod::TaggedSymbol
              )
            )
          end
          attr_reader :authentication_method

          sig do
            params(
              authentication_method:
                Telnyx::AI::InferenceEmbedding::ExternalLlm::AuthenticationMethod::OrSymbol
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
                Telnyx::AI::InferenceEmbedding::ExternalLlm::AuthenticationMethod::OrSymbol,
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
                  Telnyx::AI::InferenceEmbedding::ExternalLlm::AuthenticationMethod::TaggedSymbol,
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
                  Telnyx::AI::InferenceEmbedding::ExternalLlm::AuthenticationMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TOKEN =
              T.let(
                :token,
                Telnyx::AI::InferenceEmbedding::ExternalLlm::AuthenticationMethod::TaggedSymbol
              )
            CERTIFICATE =
              T.let(
                :certificate,
                Telnyx::AI::InferenceEmbedding::ExternalLlm::AuthenticationMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::InferenceEmbedding::ExternalLlm::AuthenticationMethod::TaggedSymbol
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
                Telnyx::AI::InferenceEmbedding::FallbackConfig,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm
              )
            )
          end
          attr_reader :external_llm

          sig do
            params(
              external_llm:
                Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::OrHash
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
                Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::OrHash,
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
                  Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm,
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
                  Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm,
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
                  Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
                )
              )
            end
            attr_reader :authentication_method

            sig do
              params(
                authentication_method:
                  Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol
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
                  Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol,
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
                    Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol,
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
                    Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::AuthenticationMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TOKEN =
                T.let(
                  :token,
                  Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
                )
              CERTIFICATE =
                T.let(
                  :certificate,
                  Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::InferenceEmbedding::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
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
                Telnyx::AI::InferenceEmbedding::Integration,
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
                Telnyx::AI::InferenceEmbedding::InterruptionSettings,
                Telnyx::Internal::AnyHash
              )
            end

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
                Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan
              )
            )
          end
          attr_reader :start_speaking_plan

          sig do
            params(
              start_speaking_plan:
                Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan::OrHash
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
              enable: T::Boolean,
              start_speaking_plan:
                Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
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
                enable: T::Boolean,
                start_speaking_plan:
                  Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan
              }
            )
          end
          def to_hash
          end

          class StartSpeakingPlan < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan,
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
                  Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan
                )
              )
            end
            attr_reader :transcription_endpointing_plan

            sig do
              params(
                transcription_endpointing_plan:
                  Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan::OrHash
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
                  Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan::OrHash,
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
                    Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan,
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
                    Telnyx::AI::InferenceEmbedding::InterruptionSettings::StartSpeakingPlan::TranscriptionEndpointingPlan,
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
                Telnyx::AI::InferenceEmbedding::McpServer,
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
                Telnyx::AI::InferenceEmbedding::PostConversationSettings,
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
