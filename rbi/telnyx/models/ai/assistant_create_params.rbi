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

        # ID of the model to use. You can use the
        # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
        # to see all of your available models,
        sig { returns(String) }
        attr_accessor :model

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Map of dynamic variables and their default values
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :dynamic_variables

        sig { params(dynamic_variables: T::Hash[Symbol, T.anything]).void }
        attr_writer :dynamic_variables

        # If the dynamic_variables_webhook_url is set for the assistant, we will send a
        # request at the start of the conversation. See our
        # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        # for more information.
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

        # This is only needed when using third-party inference providers. The `identifier`
        # for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
        # work with this integration.
        sig { returns(T.nilable(String)) }
        attr_reader :llm_api_key_ref

        sig { params(llm_api_key_ref: String).void }
        attr_writer :llm_api_key_ref

        sig { returns(T.nilable(Telnyx::AI::MessagingSettings)) }
        attr_reader :messaging_settings

        sig do
          params(messaging_settings: Telnyx::AI::MessagingSettings::OrHash).void
        end
        attr_writer :messaging_settings

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

        sig { returns(T.nilable(Telnyx::AI::TelephonySettings)) }
        attr_reader :telephony_settings

        sig do
          params(telephony_settings: Telnyx::AI::TelephonySettings::OrHash).void
        end
        attr_writer :telephony_settings

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tool_ids

        sig { params(tool_ids: T::Array[String]).void }
        attr_writer :tool_ids

        # The tools that the assistant can use. These may be templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
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
            model: String,
            name: String,
            description: String,
            dynamic_variables: T::Hash[Symbol, T.anything],
            dynamic_variables_webhook_url: String,
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
            external_llm:
              Telnyx::AI::AssistantCreateParams::ExternalLlm::OrHash,
            fallback_config:
              Telnyx::AI::AssistantCreateParams::FallbackConfig::OrHash,
            greeting: String,
            insight_settings: Telnyx::AI::InsightSettings::OrHash,
            llm_api_key_ref: String,
            messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
            observability_settings: Telnyx::AI::ObservabilityReq::OrHash,
            post_conversation_settings:
              Telnyx::AI::AssistantCreateParams::PostConversationSettings::OrHash,
            privacy_settings: Telnyx::AI::PrivacySettings::OrHash,
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
          # ID of the model to use. You can use the
          # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
          # to see all of your available models,
          model:,
          name:,
          description: nil,
          # Map of dynamic variables and their default values
          dynamic_variables: nil,
          # If the dynamic_variables_webhook_url is set for the assistant, we will send a
          # request at the start of the conversation. See our
          # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          # for more information.
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
          # This is only needed when using third-party inference providers. The `identifier`
          # for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
          # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
          # work with this integration.
          llm_api_key_ref: nil,
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
          telephony_settings: nil,
          tool_ids: nil,
          # The tools that the assistant can use. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
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
              model: String,
              name: String,
              description: String,
              dynamic_variables: T::Hash[Symbol, T.anything],
              dynamic_variables_webhook_url: String,
              enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
              external_llm: Telnyx::AI::AssistantCreateParams::ExternalLlm,
              fallback_config:
                Telnyx::AI::AssistantCreateParams::FallbackConfig,
              greeting: String,
              insight_settings: Telnyx::AI::InsightSettings,
              llm_api_key_ref: String,
              messaging_settings: Telnyx::AI::MessagingSettings,
              observability_settings: Telnyx::AI::ObservabilityReq,
              post_conversation_settings:
                Telnyx::AI::AssistantCreateParams::PostConversationSettings,
              privacy_settings: Telnyx::AI::PrivacySettings,
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

          # When enabled, Telnyx forwards conversation metadata and dynamic variables to the
          # external LLM endpoint. Defaults to false. The external endpoint receives the
          # standard chat completions payload with top-level `metadata` and
          # `dynamic_variables` objects when values are available. For example:
          # `{"metadata":{"conversation_id":"conv_123","assistant_id":"assistant_456","call_control_id":"v3:abc123","telnyx_conversation_channel":"phone_call"},"dynamic_variables":{"customer_name":"Jane","account_id":"acct_789","telnyx_agent_target":"+13125550100","telnyx_end_user_target":"+13125550123"}}`.
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
            # When enabled, Telnyx forwards conversation metadata and dynamic variables to the
            # external LLM endpoint. Defaults to false. The external endpoint receives the
            # standard chat completions payload with top-level `metadata` and
            # `dynamic_variables` objects when values are available. For example:
            # `{"metadata":{"conversation_id":"conv_123","assistant_id":"assistant_456","call_control_id":"v3:abc123","telnyx_conversation_channel":"phone_call"},"dynamic_variables":{"customer_name":"Jane","account_id":"acct_789","telnyx_agent_target":"+13125550100","telnyx_end_user_target":"+13125550123"}}`.
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

            # When enabled, Telnyx forwards conversation metadata and dynamic variables to the
            # external LLM endpoint. Defaults to false. The external endpoint receives the
            # standard chat completions payload with top-level `metadata` and
            # `dynamic_variables` objects when values are available. For example:
            # `{"metadata":{"conversation_id":"conv_123","assistant_id":"assistant_456","call_control_id":"v3:abc123","telnyx_conversation_channel":"phone_call"},"dynamic_variables":{"customer_name":"Jane","account_id":"acct_789","telnyx_agent_target":"+13125550100","telnyx_end_user_target":"+13125550123"}}`.
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
              # When enabled, Telnyx forwards conversation metadata and dynamic variables to the
              # external LLM endpoint. Defaults to false. The external endpoint receives the
              # standard chat completions payload with top-level `metadata` and
              # `dynamic_variables` objects when values are available. For example:
              # `{"metadata":{"conversation_id":"conv_123","assistant_id":"assistant_456","call_control_id":"v3:abc123","telnyx_conversation_channel":"phone_call"},"dynamic_variables":{"customer_name":"Jane","account_id":"acct_789","telnyx_agent_target":"+13125550100","telnyx_end_user_target":"+13125550123"}}`.
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
