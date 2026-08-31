# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::OpenAI#create_response
      class OpenAICreateResponseParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute conversation
        #   Optional Telnyx Conversation ID from `POST /ai/conversations`. When provided,
        #   Telnyx stores this turn on that conversation and uses the conversation's prior
        #   messages as context. Reuse the same ID for subsequent turns and tool-result
        #   followups. Omit it for a non-persisted, stateless response.
        #
        #   @return [String, nil]
        optional :conversation, String

        # @!attribute input
        #   The input items for this turn, using the OpenAI Responses API input format.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :input, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute instructions
        #   Optional system/developer instructions for the model. When used with a persisted
        #   `conversation`, send these on the first request that creates the thread;
        #   subsequent turns can rely on the stored history.
        #
        #   @return [String, nil]
        optional :instructions, String

        # @!attribute model
        #   Model identifier to use for the response, for example `zai-org/GLM-5.1-FP8` or
        #   another model available from the Telnyx OpenAI-compatible models endpoint.
        #
        #   @return [String, nil]
        optional :model, String

        # @!attribute reasoning
        #
        #   @return [Telnyx::Models::AI::OpenAICreateResponseParams::Reasoning, nil]
        optional :reasoning, -> { Telnyx::AI::OpenAICreateResponseParams::Reasoning }

        # @!attribute service_tier
        #   The service tier to use for this request. Supported values vary by model; use
        #   `GET /v2/ai/openai/models` and inspect the model's `service_tiers` field. If
        #   omitted, Telnyx-hosted models use `default`.
        #
        #   @return [String, nil]
        optional :service_tier, String

        # @!attribute stream
        #   Set to `true` to stream Server-Sent Events, matching OpenAI's Responses
        #   streaming format.
        #
        #   @return [Boolean, nil]
        optional :stream, Telnyx::Internal::Type::Boolean

        # @!method initialize(conversation: nil, input: nil, instructions: nil, model: nil, reasoning: nil, service_tier: nil, stream: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::OpenAICreateResponseParams} for more details.
        #
        #   @param conversation [String] Optional Telnyx Conversation ID from `POST /ai/conversations`. When provided, Te
        #
        #   @param input [Hash{Symbol=>Object}] The input items for this turn, using the OpenAI Responses API input format.
        #
        #   @param instructions [String] Optional system/developer instructions for the model. When used with a persisted
        #
        #   @param model [String] Model identifier to use for the response, for example `zai-org/GLM-5.1-FP8` or a
        #
        #   @param reasoning [Telnyx::Models::AI::OpenAICreateResponseParams::Reasoning]
        #
        #   @param service_tier [String] The service tier to use for this request. Supported values vary by model; use `G
        #
        #   @param stream [Boolean] Set to `true` to stream Server-Sent Events, matching OpenAI's Responses streamin
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Reasoning < Telnyx::Internal::Type::BaseModel
          # @!attribute effort
          #   Controls the reasoning effort for models that support it. Same values and
          #   semantics as reasoning_effort on Chat Completions.
          #
          #   @return [Symbol, Telnyx::Models::AI::OpenAICreateResponseParams::Reasoning::Effort, nil]
          optional :effort, enum: -> { Telnyx::AI::OpenAICreateResponseParams::Reasoning::Effort }

          # @!method initialize(effort: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::OpenAICreateResponseParams::Reasoning} for more details.
          #
          #   @param effort [Symbol, Telnyx::Models::AI::OpenAICreateResponseParams::Reasoning::Effort] Controls the reasoning effort for models that support it. Same values and semant

          # Controls the reasoning effort for models that support it. Same values and
          # semantics as reasoning_effort on Chat Completions.
          #
          # @see Telnyx::Models::AI::OpenAICreateResponseParams::Reasoning#effort
          module Effort
            extend Telnyx::Internal::Type::Enum

            NONE = :none
            MINIMAL = :minimal
            LOW = :low
            MEDIUM = :medium
            HIGH = :high
            XHIGH = :xhigh
            MAX = :max

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
