# typed: strong

module Telnyx
  module Models
    module AI
      class OpenAIListModelsResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::OpenAIListModelsResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[Telnyx::Models::AI::OpenAIListModelsResponse::Data])
        end
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_reader :object

        sig { params(object: String).void }
        attr_writer :object

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::AI::OpenAIListModelsResponse::Data::OrHash
              ],
            object: String
          ).returns(T.attached_class)
        end
        def self.new(data:, object: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[Telnyx::Models::AI::OpenAIListModelsResponse::Data],
              object: String
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::OpenAIListModelsResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Model identifier. For open-source models, follows the
          # `{organization}/{model_name}` convention from Hugging Face (e.g.
          # `moonshotai/Kimi-K2.6`).
          sig { returns(String) }
          attr_accessor :id

          # Maximum total tokens (prompt + completion) supported by the model in a single
          # request.
          sig { returns(Integer) }
          attr_accessor :context_length

          # Timestamp at which the model was registered on Telnyx Inference (ISO 8601).
          sig { returns(Time) }
          attr_accessor :created

          # ISO language codes the model supports (e.g. `en`, `es`).
          sig { returns(T::Array[String]) }
          attr_accessor :languages

          # License the model is distributed under, e.g. `Apache 2.0`, `MIT`,
          # `Llama 3 Community License`.
          sig { returns(String) }
          attr_accessor :license

          # Organization that originally published the model, matching the prefix of `id`
          # for open-source models.
          sig { returns(String) }
          attr_accessor :organization

          # Owner of the model. `Telnyx` for Telnyx-hosted open-source models, the upstream
          # provider name for proxied models, or the Telnyx organization id for fine-tuned
          # models.
          sig { returns(String) }
          attr_accessor :owned_by

          # Total parameter count of the model.
          sig { returns(Integer) }
          attr_accessor :parameters

          # Billing tier the model belongs to. Used together with `pricing` to determine
          # cost per 1M tokens.
          sig do
            returns(
              Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier::TaggedSymbol
            )
          end
          attr_accessor :tier

          # Base model the fine-tuned model was trained from. Only set for fine-tuned
          # models.
          sig { returns(T.nilable(String)) }
          attr_accessor :base_model

          # Short, human-readable summary of what the model is best suited for.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # Whether the model can be used as a base for a fine-tuning job via
          # `POST /v2/ai/fine_tuning/jobs`.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_fine_tunable

          sig { params(is_fine_tunable: T::Boolean).void }
          attr_writer :is_fine_tunable

          # Whether the model accepts image inputs in chat completions (multimodal vision
          # support).
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_vision_supported

          sig { params(is_vision_supported: T::Boolean).void }
          attr_writer :is_vision_supported

          # Maximum number of completion (output) tokens the model will generate per
          # request. `null` if unconstrained beyond `context_length`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :max_completion_tokens

          # Object type. Always `model`.
          sig { returns(T.nilable(String)) }
          attr_reader :object

          sig { params(object: String).void }
          attr_writer :object

          # Human-readable parameter count, e.g. `1.0T`, `753.9B`, `8B`.
          sig { returns(T.nilable(String)) }
          attr_accessor :parameters_str

          # Mapping of token kind to price, as strings to preserve precision. Typical keys
          # are `prompt`, `cached_prompt`, and `completion`. When pricing is available the
          # block also includes `currency` (ISO 4217 code matching the account's configured
          # billing currency) and `unit` (the denomination the prices are quoted in,
          # currently always `1M_tokens` for token-priced models).
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :pricing

          sig { params(pricing: T::Hash[Symbol, String]).void }
          attr_writer :pricing

          # Whether Telnyx currently recommends this model as the LLM powering a Telnyx AI
          # Assistant.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :recommended_for_assistants

          sig { params(recommended_for_assistants: T::Boolean).void }
          attr_writer :recommended_for_assistants

          # Public region names where the model is currently deployed (e.g. `us-central-1`,
          # `eu-central-1`).
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :regions

          sig { params(regions: T::Array[String]).void }
          attr_writer :regions

          # Primary task the model is intended for, e.g. `text-generation`,
          # `audio-text-to-text`, `feature-extraction` (embeddings).
          sig { returns(T.nilable(String)) }
          attr_reader :task

          sig { params(task: String).void }
          attr_writer :task

          # Metadata for a model available on Telnyx Inference. Returned by
          # `GET /v2/ai/openai/models` (and the deprecated `GET /v2/ai/models`). Open-source
          # models live under their Hugging Face organization (e.g. `moonshotai/Kimi-K2.6`,
          # `zai-org/GLM-5.1-FP8`, `MiniMaxAI/MiniMax-M2.7`); fine-tuned models are owned by
          # the Telnyx organization that trained them.
          sig do
            params(
              id: String,
              context_length: Integer,
              created: Time,
              languages: T::Array[String],
              license: String,
              organization: String,
              owned_by: String,
              parameters: Integer,
              tier:
                Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier::OrSymbol,
              base_model: T.nilable(String),
              description: T.nilable(String),
              is_fine_tunable: T::Boolean,
              is_vision_supported: T::Boolean,
              max_completion_tokens: T.nilable(Integer),
              object: String,
              parameters_str: T.nilable(String),
              pricing: T::Hash[Symbol, String],
              recommended_for_assistants: T::Boolean,
              regions: T::Array[String],
              task: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Model identifier. For open-source models, follows the
            # `{organization}/{model_name}` convention from Hugging Face (e.g.
            # `moonshotai/Kimi-K2.6`).
            id:,
            # Maximum total tokens (prompt + completion) supported by the model in a single
            # request.
            context_length:,
            # Timestamp at which the model was registered on Telnyx Inference (ISO 8601).
            created:,
            # ISO language codes the model supports (e.g. `en`, `es`).
            languages:,
            # License the model is distributed under, e.g. `Apache 2.0`, `MIT`,
            # `Llama 3 Community License`.
            license:,
            # Organization that originally published the model, matching the prefix of `id`
            # for open-source models.
            organization:,
            # Owner of the model. `Telnyx` for Telnyx-hosted open-source models, the upstream
            # provider name for proxied models, or the Telnyx organization id for fine-tuned
            # models.
            owned_by:,
            # Total parameter count of the model.
            parameters:,
            # Billing tier the model belongs to. Used together with `pricing` to determine
            # cost per 1M tokens.
            tier:,
            # Base model the fine-tuned model was trained from. Only set for fine-tuned
            # models.
            base_model: nil,
            # Short, human-readable summary of what the model is best suited for.
            description: nil,
            # Whether the model can be used as a base for a fine-tuning job via
            # `POST /v2/ai/fine_tuning/jobs`.
            is_fine_tunable: nil,
            # Whether the model accepts image inputs in chat completions (multimodal vision
            # support).
            is_vision_supported: nil,
            # Maximum number of completion (output) tokens the model will generate per
            # request. `null` if unconstrained beyond `context_length`.
            max_completion_tokens: nil,
            # Object type. Always `model`.
            object: nil,
            # Human-readable parameter count, e.g. `1.0T`, `753.9B`, `8B`.
            parameters_str: nil,
            # Mapping of token kind to price, as strings to preserve precision. Typical keys
            # are `prompt`, `cached_prompt`, and `completion`. When pricing is available the
            # block also includes `currency` (ISO 4217 code matching the account's configured
            # billing currency) and `unit` (the denomination the prices are quoted in,
            # currently always `1M_tokens` for token-priced models).
            pricing: nil,
            # Whether Telnyx currently recommends this model as the LLM powering a Telnyx AI
            # Assistant.
            recommended_for_assistants: nil,
            # Public region names where the model is currently deployed (e.g. `us-central-1`,
            # `eu-central-1`).
            regions: nil,
            # Primary task the model is intended for, e.g. `text-generation`,
            # `audio-text-to-text`, `feature-extraction` (embeddings).
            task: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                context_length: Integer,
                created: Time,
                languages: T::Array[String],
                license: String,
                organization: String,
                owned_by: String,
                parameters: Integer,
                tier:
                  Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier::TaggedSymbol,
                base_model: T.nilable(String),
                description: T.nilable(String),
                is_fine_tunable: T::Boolean,
                is_vision_supported: T::Boolean,
                max_completion_tokens: T.nilable(Integer),
                object: String,
                parameters_str: T.nilable(String),
                pricing: T::Hash[Symbol, String],
                recommended_for_assistants: T::Boolean,
                regions: T::Array[String],
                task: String
              }
            )
          end
          def to_hash
          end

          # Billing tier the model belongs to. Used together with `pricing` to determine
          # cost per 1M tokens.
          module Tier
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SMALL =
              T.let(
                :small,
                Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier::TaggedSymbol
              )
            MEDIUM =
              T.let(
                :medium,
                Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier::TaggedSymbol
              )
            LARGE =
              T.let(
                :large,
                Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier::TaggedSymbol
              )
            UNLISTED =
              T.let(
                :unlisted,
                Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier::TaggedSymbol
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
