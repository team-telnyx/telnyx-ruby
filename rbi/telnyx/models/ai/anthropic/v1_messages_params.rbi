# typed: strong

module Telnyx
  module Models
    module AI
      module Anthropic
        class V1MessagesParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Anthropic::V1MessagesParams,
                Telnyx::Internal::AnyHash
              )
            end

          # The maximum number of tokens to generate in the response.
          sig { returns(Integer) }
          attr_accessor :max_tokens

          # The messages to send to the model, following the
          # [Anthropic Messages API](https://docs.anthropic.com/en/api/messages) format.
          sig { returns(T::Array[T::Hash[Symbol, T.anything]]) }
          attr_accessor :messages

          # The model to use for generating the response, for example `zai-org/GLM-5.2` or
          # another model available from the Telnyx models endpoint.
          sig { returns(String) }
          attr_accessor :model

          # If you are using an external inference provider, this field allows you to pass
          # along a reference to your API key. After creating an
          # [integration secret](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
          # for your API key, pass the secret's `identifier` in this field.
          sig { returns(T.nilable(String)) }
          attr_reader :api_key_ref

          sig { params(api_key_ref: String).void }
          attr_writer :api_key_ref

          # The billing group ID to associate with this request.
          sig { returns(T.nilable(String)) }
          attr_reader :billing_group_id

          sig { params(billing_group_id: String).void }
          attr_writer :billing_group_id

          # Configuration for model fallback behavior when the primary model is unavailable.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :fallback_config

          sig { params(fallback_config: T::Hash[Symbol, T.anything]).void }
          attr_writer :fallback_config

          # Maximum number of retries for the request.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_retries

          sig { params(max_retries: Integer).void }
          attr_writer :max_retries

          # List of MCP (Model Context Protocol) servers to make available to the model.
          sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
          attr_reader :mcp_servers

          sig do
            params(mcp_servers: T::Array[T::Hash[Symbol, T.anything]]).void
          end
          attr_writer :mcp_servers

          # An object describing metadata about the request.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, T.anything]).void }
          attr_writer :metadata

          # Service tier for the request.
          sig { returns(T.nilable(String)) }
          attr_reader :service_tier

          sig { params(service_tier: String).void }
          attr_writer :service_tier

          # Custom sequences that will cause the model to stop generating.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :stop_sequences

          sig { params(stop_sequences: T::Array[String]).void }
          attr_writer :stop_sequences

          # Whether to stream the response as Anthropic-format Server-Sent Events.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :stream

          sig { params(stream: T::Boolean).void }
          attr_writer :stream

          # System prompt. Can be a string or an array of content blocks following the
          # Anthropic API format.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::Anthropic::V1MessagesParams::System::Variants
              )
            )
          end
          attr_reader :system_

          sig do
            params(
              system_: Telnyx::AI::Anthropic::V1MessagesParams::System::Variants
            ).void
          end
          attr_writer :system_

          # Amount of randomness injected into the response. Ranges from 0 to 1.
          sig { returns(T.nilable(Float)) }
          attr_reader :temperature

          sig { params(temperature: Float).void }
          attr_writer :temperature

          # Extended thinking configuration for models that support it. Set `type` to
          # `enabled` to turn on extended thinking.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :thinking

          sig { params(thinking: T::Hash[Symbol, T.anything]).void }
          attr_writer :thinking

          # Request timeout in seconds.
          sig { returns(T.nilable(Float)) }
          attr_reader :timeout

          sig { params(timeout: Float).void }
          attr_writer :timeout

          # Controls how the model uses tools, following the Anthropic API format.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :tool_choice

          sig { params(tool_choice: T::Hash[Symbol, T.anything]).void }
          attr_writer :tool_choice

          # Definitions of tools that the model may use, following the Anthropic API format.
          sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
          attr_reader :tools

          sig { params(tools: T::Array[T::Hash[Symbol, T.anything]]).void }
          attr_writer :tools

          # Top-k sampling parameter. Only sample from the top K options for each subsequent
          # token.
          sig { returns(T.nilable(Integer)) }
          attr_reader :top_k

          sig { params(top_k: Integer).void }
          attr_writer :top_k

          # Nucleus sampling parameter. Use temperature or top_p, but not both.
          sig { returns(T.nilable(Float)) }
          attr_reader :top_p

          sig { params(top_p: Float).void }
          attr_writer :top_p

          sig do
            params(
              max_tokens: Integer,
              messages: T::Array[T::Hash[Symbol, T.anything]],
              model: String,
              api_key_ref: String,
              billing_group_id: String,
              fallback_config: T::Hash[Symbol, T.anything],
              max_retries: Integer,
              mcp_servers: T::Array[T::Hash[Symbol, T.anything]],
              metadata: T::Hash[Symbol, T.anything],
              service_tier: String,
              stop_sequences: T::Array[String],
              stream: T::Boolean,
              system_:
                Telnyx::AI::Anthropic::V1MessagesParams::System::Variants,
              temperature: Float,
              thinking: T::Hash[Symbol, T.anything],
              timeout: Float,
              tool_choice: T::Hash[Symbol, T.anything],
              tools: T::Array[T::Hash[Symbol, T.anything]],
              top_k: Integer,
              top_p: Float,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The maximum number of tokens to generate in the response.
            max_tokens:,
            # The messages to send to the model, following the
            # [Anthropic Messages API](https://docs.anthropic.com/en/api/messages) format.
            messages:,
            # The model to use for generating the response, for example `zai-org/GLM-5.2` or
            # another model available from the Telnyx models endpoint.
            model:,
            # If you are using an external inference provider, this field allows you to pass
            # along a reference to your API key. After creating an
            # [integration secret](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
            # for your API key, pass the secret's `identifier` in this field.
            api_key_ref: nil,
            # The billing group ID to associate with this request.
            billing_group_id: nil,
            # Configuration for model fallback behavior when the primary model is unavailable.
            fallback_config: nil,
            # Maximum number of retries for the request.
            max_retries: nil,
            # List of MCP (Model Context Protocol) servers to make available to the model.
            mcp_servers: nil,
            # An object describing metadata about the request.
            metadata: nil,
            # Service tier for the request.
            service_tier: nil,
            # Custom sequences that will cause the model to stop generating.
            stop_sequences: nil,
            # Whether to stream the response as Anthropic-format Server-Sent Events.
            stream: nil,
            # System prompt. Can be a string or an array of content blocks following the
            # Anthropic API format.
            system_: nil,
            # Amount of randomness injected into the response. Ranges from 0 to 1.
            temperature: nil,
            # Extended thinking configuration for models that support it. Set `type` to
            # `enabled` to turn on extended thinking.
            thinking: nil,
            # Request timeout in seconds.
            timeout: nil,
            # Controls how the model uses tools, following the Anthropic API format.
            tool_choice: nil,
            # Definitions of tools that the model may use, following the Anthropic API format.
            tools: nil,
            # Top-k sampling parameter. Only sample from the top K options for each subsequent
            # token.
            top_k: nil,
            # Nucleus sampling parameter. Use temperature or top_p, but not both.
            top_p: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                max_tokens: Integer,
                messages: T::Array[T::Hash[Symbol, T.anything]],
                model: String,
                api_key_ref: String,
                billing_group_id: String,
                fallback_config: T::Hash[Symbol, T.anything],
                max_retries: Integer,
                mcp_servers: T::Array[T::Hash[Symbol, T.anything]],
                metadata: T::Hash[Symbol, T.anything],
                service_tier: String,
                stop_sequences: T::Array[String],
                stream: T::Boolean,
                system_:
                  Telnyx::AI::Anthropic::V1MessagesParams::System::Variants,
                temperature: Float,
                thinking: T::Hash[Symbol, T.anything],
                timeout: Float,
                tool_choice: T::Hash[Symbol, T.anything],
                tools: T::Array[T::Hash[Symbol, T.anything]],
                top_k: Integer,
                top_p: Float,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # System prompt. Can be a string or an array of content blocks following the
          # Anthropic API format.
          module System
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(String, T::Array[T::Hash[Symbol, T.anything]])
              end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Anthropic::V1MessagesParams::System::Variants
                ]
              )
            end
            def self.variants
            end

            UnionMember1Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::Internal::Type::HashOf[
                    Telnyx::Internal::Type::Unknown
                  ]
                ],
                Telnyx::Internal::Type::Converter
              )
          end
        end
      end
    end
  end
end
