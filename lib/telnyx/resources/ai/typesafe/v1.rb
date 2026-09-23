# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Typesafe
        # Beta API for evaluating shared context with typed questions and structured
        # answers. Telnyx manages model selection.
        class V1
          # **Beta API.** Telnyx controls model selection.
          #
          # Evaluate shared context using named choice, noul (yes/no), and score questions.
          # Returns TypeSafe System One-compatible answer shapes, an opaque compatibility
          # identifier, and token usage. See the
          # [decision model guide](https://developers.telnyx.com/docs/inference/decision-models)
          # for examples and compatibility limits.
          #
          # The supported request subset requires instructions for every question, string
          # descriptions for criteria (or null for choice descriptions), 1–64 questions, and
          # 2–64 options for choice and score questions. The SDK-supplied model value is
          # ignored and cannot select a model. Other unknown fields are rejected. The
          # endpoint is synchronous and does not stream.
          #
          # Use the TypeSafe Python SDK with base_url set to
          # https://api.telnyx.com/v2/ai/typesafe and a Telnyx API key. The SDK appends
          # /v1/systemone. Compatibility covers this operation and the documented request
          # subset; it does not include TypeSafe model listing. Scores describe relative
          # preference, not calibrated correctness.
          #
          # @overload systemone(questions:, state:, request_options: {})
          #
          # @param questions [Hash{Symbol=>Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Choice, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Score}] Between 1 and 64 named questions. Each key identifies the corresponding answer.
          #
          # @param state [String, Hash{Symbol=>Object}, Array<Object>] Shared context evaluated by every question.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Typesafe::V1SystemoneResponse]
          #
          # @see Telnyx::Models::AI::Typesafe::V1SystemoneParams
          def systemone(params)
            parsed, options = Telnyx::AI::Typesafe::V1SystemoneParams.dump_request(params)
            @client.request(
              method: :post,
              path: "ai/typesafe/v1/systemone",
              body: parsed,
              model: Telnyx::Models::AI::Typesafe::V1SystemoneResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
