# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::OpenAI#list_models
      class OpenAIListModelsResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::OpenAIListModelsResponse::Data>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::OpenAIListModelsResponse::Data] }

        # @!attribute object
        #
        #   @return [String, nil]
        optional :object, String

        # @!method initialize(data:, object: nil)
        #   @param data [Array<Telnyx::Models::AI::OpenAIListModelsResponse::Data>]
        #   @param object [String]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Model identifier. For open-source models, follows the
          #   `{organization}/{model_name}` convention from Hugging Face (e.g.
          #   `moonshotai/Kimi-K2.6`).
          #
          #   @return [String]
          required :id, String

          # @!attribute context_length
          #   Maximum total tokens (prompt + completion) supported by the model in a single
          #   request.
          #
          #   @return [Integer]
          required :context_length, Integer

          # @!attribute created
          #   Timestamp at which the model was registered on Telnyx Inference (ISO 8601).
          #
          #   @return [Time]
          required :created, Time

          # @!attribute languages
          #   ISO language codes the model supports (e.g. `en`, `es`).
          #
          #   @return [Array<String>]
          required :languages, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute license
          #   License the model is distributed under, e.g. `Apache 2.0`, `MIT`,
          #   `Llama 3 Community License`.
          #
          #   @return [String]
          required :license, String

          # @!attribute organization
          #   Organization that originally published the model, matching the prefix of `id`
          #   for open-source models.
          #
          #   @return [String]
          required :organization, String

          # @!attribute owned_by
          #   Owner of the model. `Telnyx` for Telnyx-hosted open-source models, the upstream
          #   provider name for proxied models, or the Telnyx organization id for fine-tuned
          #   models.
          #
          #   @return [String]
          required :owned_by, String

          # @!attribute parameters
          #   Total parameter count of the model.
          #
          #   @return [Integer]
          required :parameters, Integer

          # @!attribute tier
          #   Billing tier the model belongs to. Used together with `pricing` to determine
          #   cost per 1M tokens.
          #
          #   @return [Symbol, Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier]
          required :tier, enum: -> { Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier }

          # @!attribute base_model
          #   Base model the fine-tuned model was trained from. Only set for fine-tuned
          #   models.
          #
          #   @return [String, nil]
          optional :base_model, String, nil?: true

          # @!attribute description
          #   Short, human-readable summary of what the model is best suited for.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute is_fine_tunable
          #   Whether the model can be used as a base for a fine-tuning job via
          #   `POST /v2/ai/fine_tuning/jobs`.
          #
          #   @return [Boolean, nil]
          optional :is_fine_tunable, Telnyx::Internal::Type::Boolean

          # @!attribute is_vision_supported
          #   Whether the model accepts image inputs in chat completions (multimodal vision
          #   support).
          #
          #   @return [Boolean, nil]
          optional :is_vision_supported, Telnyx::Internal::Type::Boolean

          # @!attribute max_completion_tokens
          #   Maximum number of completion (output) tokens the model will generate per
          #   request. `null` if unconstrained beyond `context_length`.
          #
          #   @return [Integer, nil]
          optional :max_completion_tokens, Integer, nil?: true

          # @!attribute object
          #   Object type. Always `model`.
          #
          #   @return [String, nil]
          optional :object, String

          # @!attribute parameters_str
          #   Human-readable parameter count, e.g. `1.0T`, `753.9B`, `8B`.
          #
          #   @return [String, nil]
          optional :parameters_str, String, nil?: true

          # @!attribute pricing
          #   Mapping of token kind to price, as strings to preserve precision. Typical keys
          #   are `prompt`, `cached_prompt`, and `completion`. When pricing is available the
          #   block also includes `currency` (ISO 4217 code matching the account's configured
          #   billing currency) and `unit` (the denomination the prices are quoted in,
          #   currently always `1M_tokens` for token-priced models).
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :pricing, Telnyx::Internal::Type::HashOf[String]

          # @!attribute recommended_for_assistants
          #   Whether Telnyx currently recommends this model as the LLM powering a Telnyx AI
          #   Assistant.
          #
          #   @return [Boolean, nil]
          optional :recommended_for_assistants, Telnyx::Internal::Type::Boolean

          # @!attribute regions
          #   Public region names where the model is currently deployed (e.g. `us-central-1`,
          #   `eu-central-1`).
          #
          #   @return [Array<String>, nil]
          optional :regions, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute task
          #   Primary task the model is intended for, e.g. `text-generation`,
          #   `audio-text-to-text`, `feature-extraction` (embeddings).
          #
          #   @return [String, nil]
          optional :task, String

          # @!method initialize(id:, context_length:, created:, languages:, license:, organization:, owned_by:, parameters:, tier:, base_model: nil, description: nil, is_fine_tunable: nil, is_vision_supported: nil, max_completion_tokens: nil, object: nil, parameters_str: nil, pricing: nil, recommended_for_assistants: nil, regions: nil, task: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::OpenAIListModelsResponse::Data} for more details.
          #
          #   Metadata for a model available on Telnyx Inference. Returned by
          #   `GET /v2/ai/openai/models` (and the deprecated `GET /v2/ai/models`). Open-source
          #   models live under their Hugging Face organization (e.g. `moonshotai/Kimi-K2.6`,
          #   `zai-org/GLM-5.1-FP8`, `MiniMaxAI/MiniMax-M2.7`); fine-tuned models are owned by
          #   the Telnyx organization that trained them.
          #
          #   @param id [String] Model identifier. For open-source models, follows the `{organization}/{model_nam
          #
          #   @param context_length [Integer] Maximum total tokens (prompt + completion) supported by the model in a single re
          #
          #   @param created [Time] Timestamp at which the model was registered on Telnyx Inference (ISO 8601).
          #
          #   @param languages [Array<String>] ISO language codes the model supports (e.g. `en`, `es`).
          #
          #   @param license [String] License the model is distributed under, e.g. `Apache 2.0`, `MIT`, `Llama 3 Commu
          #
          #   @param organization [String] Organization that originally published the model, matching the prefix of `id` fo
          #
          #   @param owned_by [String] Owner of the model. `Telnyx` for Telnyx-hosted open-source models, the upstream
          #
          #   @param parameters [Integer] Total parameter count of the model.
          #
          #   @param tier [Symbol, Telnyx::Models::AI::OpenAIListModelsResponse::Data::Tier] Billing tier the model belongs to. Used together with `pricing` to determine cos
          #
          #   @param base_model [String, nil] Base model the fine-tuned model was trained from. Only set for fine-tuned models
          #
          #   @param description [String, nil] Short, human-readable summary of what the model is best suited for.
          #
          #   @param is_fine_tunable [Boolean] Whether the model can be used as a base for a fine-tuning job via `POST /v2/ai/f
          #
          #   @param is_vision_supported [Boolean] Whether the model accepts image inputs in chat completions (multimodal vision su
          #
          #   @param max_completion_tokens [Integer, nil] Maximum number of completion (output) tokens the model will generate per request
          #
          #   @param object [String] Object type. Always `model`.
          #
          #   @param parameters_str [String, nil] Human-readable parameter count, e.g. `1.0T`, `753.9B`, `8B`.
          #
          #   @param pricing [Hash{Symbol=>String}] Mapping of token kind to price, as strings to preserve precision. Typical keys a
          #
          #   @param recommended_for_assistants [Boolean] Whether Telnyx currently recommends this model as the LLM powering a Telnyx AI A
          #
          #   @param regions [Array<String>] Public region names where the model is currently deployed (e.g. `us-central-1`,
          #
          #   @param task [String] Primary task the model is intended for, e.g. `text-generation`, `audio-text-to-t

          # Billing tier the model belongs to. Used together with `pricing` to determine
          # cost per 1M tokens.
          #
          # @see Telnyx::Models::AI::OpenAIListModelsResponse::Data#tier
          module Tier
            extend Telnyx::Internal::Type::Enum

            SMALL = :small
            MEDIUM = :medium
            LARGE = :large
            UNLISTED = :unlisted

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
