# typed: strong

module Telnyx
  module Models
    module AI
      class OpenAICreateResponseParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::OpenAICreateResponseParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Optional Telnyx Conversation ID from `POST /ai/conversations`. When provided,
        # Telnyx stores this turn on that conversation and uses the conversation's prior
        # messages as context. Reuse the same ID for subsequent turns and tool-result
        # followups. Omit it for a non-persisted, stateless response.
        sig { returns(T.nilable(String)) }
        attr_reader :conversation

        sig { params(conversation: String).void }
        attr_writer :conversation

        # The input items for this turn, using the OpenAI Responses API input format.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :input

        sig { params(input: T::Hash[Symbol, T.anything]).void }
        attr_writer :input

        # Optional system/developer instructions for the model. When used with a persisted
        # `conversation`, send these on the first request that creates the thread;
        # subsequent turns can rely on the stored history.
        sig { returns(T.nilable(String)) }
        attr_reader :instructions

        sig { params(instructions: String).void }
        attr_writer :instructions

        # Model identifier to use for the response, for example `zai-org/GLM-5.1-FP8` or
        # another model available from the Telnyx OpenAI-compatible models endpoint.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        sig do
          returns(T.nilable(Telnyx::AI::OpenAICreateResponseParams::Reasoning))
        end
        attr_reader :reasoning

        sig do
          params(
            reasoning: Telnyx::AI::OpenAICreateResponseParams::Reasoning::OrHash
          ).void
        end
        attr_writer :reasoning

        # The service tier to use for this request. Supported values vary by model; use
        # `GET /v2/ai/openai/models` and inspect the model's `service_tiers` field. If
        # omitted, Telnyx-hosted models use `default`.
        sig { returns(T.nilable(String)) }
        attr_reader :service_tier

        sig { params(service_tier: String).void }
        attr_writer :service_tier

        # Set to `true` to stream Server-Sent Events, matching OpenAI's Responses
        # streaming format.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :stream

        sig { params(stream: T::Boolean).void }
        attr_writer :stream

        sig do
          params(
            conversation: String,
            input: T::Hash[Symbol, T.anything],
            instructions: String,
            model: String,
            reasoning:
              Telnyx::AI::OpenAICreateResponseParams::Reasoning::OrHash,
            service_tier: String,
            stream: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Optional Telnyx Conversation ID from `POST /ai/conversations`. When provided,
          # Telnyx stores this turn on that conversation and uses the conversation's prior
          # messages as context. Reuse the same ID for subsequent turns and tool-result
          # followups. Omit it for a non-persisted, stateless response.
          conversation: nil,
          # The input items for this turn, using the OpenAI Responses API input format.
          input: nil,
          # Optional system/developer instructions for the model. When used with a persisted
          # `conversation`, send these on the first request that creates the thread;
          # subsequent turns can rely on the stored history.
          instructions: nil,
          # Model identifier to use for the response, for example `zai-org/GLM-5.1-FP8` or
          # another model available from the Telnyx OpenAI-compatible models endpoint.
          model: nil,
          reasoning: nil,
          # The service tier to use for this request. Supported values vary by model; use
          # `GET /v2/ai/openai/models` and inspect the model's `service_tiers` field. If
          # omitted, Telnyx-hosted models use `default`.
          service_tier: nil,
          # Set to `true` to stream Server-Sent Events, matching OpenAI's Responses
          # streaming format.
          stream: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              conversation: String,
              input: T::Hash[Symbol, T.anything],
              instructions: String,
              model: String,
              reasoning: Telnyx::AI::OpenAICreateResponseParams::Reasoning,
              service_tier: String,
              stream: T::Boolean,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Reasoning < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::OpenAICreateResponseParams::Reasoning,
                Telnyx::Internal::AnyHash
              )
            end

          # Controls the reasoning effort for models that support it. Same values and
          # semantics as reasoning_effort on Chat Completions.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::OrSymbol
              )
            )
          end
          attr_reader :effort

          sig do
            params(
              effort:
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::OrSymbol
            ).void
          end
          attr_writer :effort

          sig do
            params(
              effort:
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Controls the reasoning effort for models that support it. Same values and
            # semantics as reasoning_effort on Chat Completions.
            effort: nil
          )
          end

          sig do
            override.returns(
              {
                effort:
                  Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Controls the reasoning effort for models that support it. Same values and
          # semantics as reasoning_effort on Chat Completions.
          module Effort
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NONE =
              T.let(
                :none,
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::TaggedSymbol
              )
            MINIMAL =
              T.let(
                :minimal,
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::TaggedSymbol
              )
            LOW =
              T.let(
                :low,
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::TaggedSymbol
              )
            MEDIUM =
              T.let(
                :medium,
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::TaggedSymbol
              )
            HIGH =
              T.let(
                :high,
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::TaggedSymbol
              )
            XHIGH =
              T.let(
                :xhigh,
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::TaggedSymbol
              )
            MAX =
              T.let(
                :max,
                Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
