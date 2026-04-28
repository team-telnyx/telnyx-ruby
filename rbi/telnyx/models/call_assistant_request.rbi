# typed: strong

module Telnyx
  module Models
    class CallAssistantRequest < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallAssistantRequest, Telnyx::Internal::AnyHash)
        end

      # The identifier of the AI assistant to use.
      sig { returns(String) }
      attr_accessor :id

      # Map of dynamic variables and their default values. Dynamic variables can be
      # referenced in instructions, greeting, and tool definitions using the
      # `{{variable_name}}` syntax. Call-control-agent automatically merges in
      # `telnyx_call_*` variables (telnyx_call_to, telnyx_call_from,
      # telnyx_conversation_channel, telnyx_agent_target, telnyx_end_user_target,
      # telnyx_call_caller_id_name) and custom header variables.
      sig do
        returns(
          T.nilable(
            T::Hash[
              Symbol,
              Telnyx::CallAssistantRequest::DynamicVariable::Variants
            ]
          )
        )
      end
      attr_reader :dynamic_variables

      sig do
        params(
          dynamic_variables:
            T::Hash[
              Symbol,
              Telnyx::CallAssistantRequest::DynamicVariable::Variants
            ]
        ).void
      end
      attr_writer :dynamic_variables

      # External LLM configuration for bringing your own LLM endpoint.
      sig { returns(T.nilable(Telnyx::CallAssistantRequest::ExternalLlm)) }
      attr_reader :external_llm

      sig do
        params(
          external_llm: Telnyx::CallAssistantRequest::ExternalLlm::OrHash
        ).void
      end
      attr_writer :external_llm

      # Fallback LLM configuration used when the primary LLM provider is unavailable.
      sig { returns(T.nilable(Telnyx::CallAssistantRequest::FallbackConfig)) }
      attr_reader :fallback_config

      sig do
        params(
          fallback_config: Telnyx::CallAssistantRequest::FallbackConfig::OrHash
        ).void
      end
      attr_writer :fallback_config

      # Initial greeting text spoken when the assistant starts. Can be plain text for
      # any voice or SSML for `AWS.Polly.<voice_id>` voices. There is a 3,000 character
      # limit.
      sig { returns(T.nilable(String)) }
      attr_reader :greeting

      sig { params(greeting: String).void }
      attr_writer :greeting

      # System instructions for the voice assistant. Can be templated with
      # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
      # This will overwrite the instructions set in the assistant configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :instructions

      sig { params(instructions: String).void }
      attr_writer :instructions

      # Integration secret identifier for the LLM provider API key. Use this field to
      # reference an
      # [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
      # containing your LLM provider API key. Supports any LLM provider (OpenAI,
      # Anthropic, etc.).
      sig { returns(T.nilable(String)) }
      attr_reader :llm_api_key_ref

      sig { params(llm_api_key_ref: String).void }
      attr_writer :llm_api_key_ref

      # MCP (Model Context Protocol) server configurations for extending the assistant's
      # capabilities with external tools and data sources.
      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :mcp_servers

      sig { params(mcp_servers: T::Array[T::Hash[Symbol, T.anything]]).void }
      attr_writer :mcp_servers

      # LLM model override for this call. If omitted, the assistant's configured model
      # is used.
      sig { returns(T.nilable(String)) }
      attr_reader :model

      sig { params(model: String).void }
      attr_writer :model

      # Assistant name override for this call.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Observability configuration for the assistant session, including Langfuse
      # integration for tracing and monitoring.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :observability_settings

      sig { params(observability_settings: T::Hash[Symbol, T.anything]).void }
      attr_writer :observability_settings

      # Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for
      # the OpenAI API key. This field is maintained for backward compatibility;
      # `llm_api_key_ref` is the canonical field name and supports all LLM providers.
      sig { returns(T.nilable(String)) }
      attr_reader :openai_api_key_ref

      sig { params(openai_api_key_ref: String).void }
      attr_writer :openai_api_key_ref

      # Inline tool definitions available to the assistant (webhook, retrieval,
      # transfer, hangup, etc.). Overrides the assistant's stored tools if provided.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                Telnyx::BookAppointmentTool,
                Telnyx::CheckAvailabilityTool,
                Telnyx::AI::WebhookTool,
                Telnyx::AI::HangupTool,
                Telnyx::AI::TransferTool,
                Telnyx::CallControlRetrievalTool
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
                Telnyx::BookAppointmentTool::OrHash,
                Telnyx::CheckAvailabilityTool::OrHash,
                Telnyx::AI::WebhookTool::OrHash,
                Telnyx::AI::HangupTool::OrHash,
                Telnyx::AI::TransferTool::OrHash,
                Telnyx::CallControlRetrievalTool::OrHash
              )
            ]
        ).void
      end
      attr_writer :tools

      # AI Assistant configuration. All fields except `id` are optional — the
      # assistant's stored configuration will be used as fallback for any omitted
      # fields.
      sig do
        params(
          id: String,
          dynamic_variables:
            T::Hash[
              Symbol,
              Telnyx::CallAssistantRequest::DynamicVariable::Variants
            ],
          external_llm: Telnyx::CallAssistantRequest::ExternalLlm::OrHash,
          fallback_config: Telnyx::CallAssistantRequest::FallbackConfig::OrHash,
          greeting: String,
          instructions: String,
          llm_api_key_ref: String,
          mcp_servers: T::Array[T::Hash[Symbol, T.anything]],
          model: String,
          name: String,
          observability_settings: T::Hash[Symbol, T.anything],
          openai_api_key_ref: String,
          tools:
            T::Array[
              T.any(
                Telnyx::BookAppointmentTool::OrHash,
                Telnyx::CheckAvailabilityTool::OrHash,
                Telnyx::AI::WebhookTool::OrHash,
                Telnyx::AI::HangupTool::OrHash,
                Telnyx::AI::TransferTool::OrHash,
                Telnyx::CallControlRetrievalTool::OrHash
              )
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The identifier of the AI assistant to use.
        id:,
        # Map of dynamic variables and their default values. Dynamic variables can be
        # referenced in instructions, greeting, and tool definitions using the
        # `{{variable_name}}` syntax. Call-control-agent automatically merges in
        # `telnyx_call_*` variables (telnyx_call_to, telnyx_call_from,
        # telnyx_conversation_channel, telnyx_agent_target, telnyx_end_user_target,
        # telnyx_call_caller_id_name) and custom header variables.
        dynamic_variables: nil,
        # External LLM configuration for bringing your own LLM endpoint.
        external_llm: nil,
        # Fallback LLM configuration used when the primary LLM provider is unavailable.
        fallback_config: nil,
        # Initial greeting text spoken when the assistant starts. Can be plain text for
        # any voice or SSML for `AWS.Polly.<voice_id>` voices. There is a 3,000 character
        # limit.
        greeting: nil,
        # System instructions for the voice assistant. Can be templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
        # This will overwrite the instructions set in the assistant configuration.
        instructions: nil,
        # Integration secret identifier for the LLM provider API key. Use this field to
        # reference an
        # [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # containing your LLM provider API key. Supports any LLM provider (OpenAI,
        # Anthropic, etc.).
        llm_api_key_ref: nil,
        # MCP (Model Context Protocol) server configurations for extending the assistant's
        # capabilities with external tools and data sources.
        mcp_servers: nil,
        # LLM model override for this call. If omitted, the assistant's configured model
        # is used.
        model: nil,
        # Assistant name override for this call.
        name: nil,
        # Observability configuration for the assistant session, including Langfuse
        # integration for tracing and monitoring.
        observability_settings: nil,
        # Deprecated — use `llm_api_key_ref` instead. Integration secret identifier for
        # the OpenAI API key. This field is maintained for backward compatibility;
        # `llm_api_key_ref` is the canonical field name and supports all LLM providers.
        openai_api_key_ref: nil,
        # Inline tool definitions available to the assistant (webhook, retrieval,
        # transfer, hangup, etc.). Overrides the assistant's stored tools if provided.
        tools: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            dynamic_variables:
              T::Hash[
                Symbol,
                Telnyx::CallAssistantRequest::DynamicVariable::Variants
              ],
            external_llm: Telnyx::CallAssistantRequest::ExternalLlm,
            fallback_config: Telnyx::CallAssistantRequest::FallbackConfig,
            greeting: String,
            instructions: String,
            llm_api_key_ref: String,
            mcp_servers: T::Array[T::Hash[Symbol, T.anything]],
            model: String,
            name: String,
            observability_settings: T::Hash[Symbol, T.anything],
            openai_api_key_ref: String,
            tools:
              T::Array[
                T.any(
                  Telnyx::BookAppointmentTool,
                  Telnyx::CheckAvailabilityTool,
                  Telnyx::AI::WebhookTool,
                  Telnyx::AI::HangupTool,
                  Telnyx::AI::TransferTool,
                  Telnyx::CallControlRetrievalTool
                )
              ]
          }
        )
      end
      def to_hash
      end

      module DynamicVariable
        extend Telnyx::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Float, T::Boolean) }

        sig do
          override.returns(
            T::Array[Telnyx::CallAssistantRequest::DynamicVariable::Variants]
          )
        end
        def self.variants
        end
      end

      class ExternalLlm < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallAssistantRequest::ExternalLlm,
              Telnyx::Internal::AnyHash
            )
          end

        # Authentication method used when connecting to the external LLM endpoint.
        sig do
          returns(
            T.nilable(
              Telnyx::CallAssistantRequest::ExternalLlm::AuthenticationMethod::OrSymbol
            )
          )
        end
        attr_reader :authentication_method

        sig do
          params(
            authentication_method:
              Telnyx::CallAssistantRequest::ExternalLlm::AuthenticationMethod::OrSymbol
          ).void
        end
        attr_writer :authentication_method

        # Base URL for the external LLM endpoint.
        sig { returns(T.nilable(String)) }
        attr_reader :base_url

        sig { params(base_url: String).void }
        attr_writer :base_url

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

        # Model identifier to use with the external LLM endpoint.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        # URL used to retrieve an access token when certificate authentication is enabled.
        sig { returns(T.nilable(String)) }
        attr_reader :token_retrieval_url

        sig { params(token_retrieval_url: String).void }
        attr_writer :token_retrieval_url

        # External LLM configuration for bringing your own LLM endpoint.
        sig do
          params(
            authentication_method:
              Telnyx::CallAssistantRequest::ExternalLlm::AuthenticationMethod::OrSymbol,
            base_url: String,
            certificate_ref: String,
            forward_metadata: T::Boolean,
            llm_api_key_ref: String,
            model: String,
            token_retrieval_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Authentication method used when connecting to the external LLM endpoint.
          authentication_method: nil,
          # Base URL for the external LLM endpoint.
          base_url: nil,
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
          # Model identifier to use with the external LLM endpoint.
          model: nil,
          # URL used to retrieve an access token when certificate authentication is enabled.
          token_retrieval_url: nil
        )
        end

        sig do
          override.returns(
            {
              authentication_method:
                Telnyx::CallAssistantRequest::ExternalLlm::AuthenticationMethod::OrSymbol,
              base_url: String,
              certificate_ref: String,
              forward_metadata: T::Boolean,
              llm_api_key_ref: String,
              model: String,
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
                Telnyx::CallAssistantRequest::ExternalLlm::AuthenticationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOKEN =
            T.let(
              :token,
              Telnyx::CallAssistantRequest::ExternalLlm::AuthenticationMethod::TaggedSymbol
            )
          CERTIFICATE =
            T.let(
              :certificate,
              Telnyx::CallAssistantRequest::ExternalLlm::AuthenticationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallAssistantRequest::ExternalLlm::AuthenticationMethod::TaggedSymbol
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
              Telnyx::CallAssistantRequest::FallbackConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # External LLM fallback configuration.
        sig do
          returns(
            T.nilable(Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm)
          )
        end
        attr_reader :external_llm

        sig do
          params(
            external_llm:
              Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::OrHash
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

        # Fallback LLM configuration used when the primary LLM provider is unavailable.
        sig do
          params(
            external_llm:
              Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::OrHash,
            llm_api_key_ref: String,
            model: String
          ).returns(T.attached_class)
        end
        def self.new(
          # External LLM fallback configuration.
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
                Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm,
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
                Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm,
                Telnyx::Internal::AnyHash
              )
            end

          # Authentication method used when connecting to the external LLM endpoint.
          sig do
            returns(
              T.nilable(
                Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol
              )
            )
          end
          attr_reader :authentication_method

          sig do
            params(
              authentication_method:
                Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol
            ).void
          end
          attr_writer :authentication_method

          # Base URL for the external LLM endpoint.
          sig { returns(T.nilable(String)) }
          attr_reader :base_url

          sig { params(base_url: String).void }
          attr_writer :base_url

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

          # Model identifier to use with the external LLM endpoint.
          sig { returns(T.nilable(String)) }
          attr_reader :model

          sig { params(model: String).void }
          attr_writer :model

          # URL used to retrieve an access token when certificate authentication is enabled.
          sig { returns(T.nilable(String)) }
          attr_reader :token_retrieval_url

          sig { params(token_retrieval_url: String).void }
          attr_writer :token_retrieval_url

          # External LLM fallback configuration.
          sig do
            params(
              authentication_method:
                Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol,
              base_url: String,
              certificate_ref: String,
              forward_metadata: T::Boolean,
              llm_api_key_ref: String,
              model: String,
              token_retrieval_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Authentication method used when connecting to the external LLM endpoint.
            authentication_method: nil,
            # Base URL for the external LLM endpoint.
            base_url: nil,
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
            # Model identifier to use with the external LLM endpoint.
            model: nil,
            # URL used to retrieve an access token when certificate authentication is enabled.
            token_retrieval_url: nil
          )
          end

          sig do
            override.returns(
              {
                authentication_method:
                  Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::AuthenticationMethod::OrSymbol,
                base_url: String,
                certificate_ref: String,
                forward_metadata: T::Boolean,
                llm_api_key_ref: String,
                model: String,
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
                  Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::AuthenticationMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TOKEN =
              T.let(
                :token,
                Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
              )
            CERTIFICATE =
              T.let(
                :certificate,
                Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallAssistantRequest::FallbackConfig::ExternalLlm::AuthenticationMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      module Tool
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::BookAppointmentTool,
              Telnyx::CheckAvailabilityTool,
              Telnyx::AI::WebhookTool,
              Telnyx::AI::HangupTool,
              Telnyx::AI::TransferTool,
              Telnyx::CallControlRetrievalTool
            )
          end

        sig do
          override.returns(
            T::Array[Telnyx::CallAssistantRequest::Tool::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
