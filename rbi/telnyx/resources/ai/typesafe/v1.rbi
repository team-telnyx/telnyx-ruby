# typed: strong

module Telnyx
  module Resources
    class AI
      class Typesafe
        # Beta API for evaluating shared context with typed questions and structured
        # answers using Flash or Pro.
        class V1
          # **Beta API.** Choose telnyx/decision-flash for the lowest cost and latency, or
          # telnyx/decision-pro for decisions that require long context, including inputs
          # beyond Jev’s 32k per-decision limit. Omitted model defaults to
          # telnyx/decision-flash.
          #
          # Evaluate shared context using named choice, noul (yes/no), and score questions.
          # Returns TypeSafe System One-compatible answer shapes, the selected public model
          # alias, and token usage. See the
          # [decision model guide](https://developers.telnyx.com/docs/inference/decision-models)
          # for examples and compatibility limits.
          #
          # The supported request subset requires instructions for every question, string
          # descriptions for criteria (or null for choice descriptions), 1–64 questions, and
          # 2–64 options for choice and score questions. The model field accepts only
          # telnyx/decision-flash or telnyx/decision-pro. Unsupported model values and
          # unknown fields are rejected. The endpoint is synchronous and does not stream.
          #
          # Use the TypeSafe Python SDK with base_url set to
          # https://api.telnyx.com/v2/ai/typesafe and a Telnyx API key. The SDK appends
          # /v1/systemone; explicitly set model to a supported Telnyx alias because its own
          # default model is not supported. Compatibility covers this operation and the
          # documented request subset; it does not include TypeSafe model listing. Scores
          # describe relative preference, not calibrated correctness.
          sig do
            params(
              questions:
                T::Hash[
                  Symbol,
                  T.any(
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice::OrHash,
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::OrHash,
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score::OrHash
                  )
                ],
              state: Telnyx::AI::Typesafe::V1SystemoneParams::State::Variants,
              model: Telnyx::AI::Typesafe::V1SystemoneParams::Model::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Typesafe::V1SystemoneResponse)
          end
          def systemone(
            # Between 1 and 64 named questions. Each key identifies the corresponding answer.
            questions:,
            # Shared context evaluated by every question.
            state:,
            # Public model alias. telnyx/decision-flash offers the lowest cost and latency;
            # telnyx/decision-pro supports decisions that require long context, including
            # inputs beyond Jev’s 32k per-decision limit. Applies to every question in the
            # request. Other values are rejected.
            model: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
