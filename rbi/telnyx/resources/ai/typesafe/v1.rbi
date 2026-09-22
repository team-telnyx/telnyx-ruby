# typed: strong

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
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Typesafe::V1SystemoneResponse)
          end
          def systemone(
            # Between 1 and 64 named questions. Each key identifies the corresponding answer.
            questions:,
            # Shared context evaluated by every question.
            state:,
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
