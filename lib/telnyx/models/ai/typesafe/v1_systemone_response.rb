# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Typesafe
        # @see Telnyx::Resources::AI::Typesafe::V1#systemone
        class V1SystemoneResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute answers
          #   Answers keyed by exactly the question IDs in the request. Each answer type
          #   matches its question.
          #
          #   @return [Hash{Symbol=>Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Choice, Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Noul, Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Score}]
          required :answers,
                   -> { Telnyx::Internal::Type::HashOf[union: Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer] }

          # @!attribute usage
          #   Token usage for the completed evaluation.
          #
          #   @return [Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage]
          required :usage, -> { Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage }

          response_only do
            # @!attribute model
            #   Public model alias used to evaluate the request. Returns telnyx/decision-flash
            #   when model was omitted. The underlying model is managed by Telnyx.
            #
            #   @return [Symbol, Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model]
            required :model, enum: -> { Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model }
          end

          # @!method initialize(answers:, model:, usage:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Typesafe::V1SystemoneResponse} for more details.
          #
          #   A complete synchronous evaluation. Answers are returned directly without a data
          #   wrapper.
          #
          #   @param answers [Hash{Symbol=>Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Choice, Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Noul, Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Score}] Answers keyed by exactly the question IDs in the request. Each answer type match
          #
          #   @param model [Symbol, Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model] Public model alias used to evaluate the request. Returns telnyx/decision-flash w
          #
          #   @param usage [Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage] Token usage for the completed evaluation.

          # An answer whose type matches its question.
          module Answer
            extend Telnyx::Internal::Type::Union

            discriminator :type

            # A selected option and the distribution across all supplied option keys.
            variant :choice, -> { Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Choice }

            # A yes/no score with no separate confidence or probabilities fields.
            variant :noul, -> { Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Noul }

            # An expected rating over the ordered criteria.
            variant :score, -> { Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Score }

            class Choice < Telnyx::Internal::Type::BaseModel
              # @!attribute choice
              #   The option key with the highest relative score. Ties favor the first option in
              #   request order.
              #
              #   @return [String]
              required :choice, String

              # @!attribute confidence
              #   Normalized entropy confidence: 1 - H(p) / ln(N), where H(p) = -sum(p \* ln(p))
              #   and N is the number of options. Zero indicates a uniform distribution; one
              #   indicates concentration on one option. This is neither the winning probability
              #   nor calibrated correctness.
              #
              #   @return [Float]
              required :confidence, Float

              # @!attribute probabilities
              #   Relative scores normalized across the supplied options, summing approximately
              #   to 1. These are not calibrated probabilities of correctness.
              #
              #   @return [Hash{Symbol=>Float}]
              required :probabilities, Telnyx::Internal::Type::HashOf[Float]

              # @!attribute type
              #   Answer type.
              #
              #   @return [Symbol, :choice]
              required :type, const: :choice

              # @!method initialize(choice:, confidence:, probabilities:, type: :choice)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Choice} for more
              #   details.
              #
              #   A selected option and the distribution across all supplied option keys.
              #
              #   @param choice [String] The option key with the highest relative score. Ties favor the first option in r
              #
              #   @param confidence [Float] Normalized entropy confidence: 1 - H(p) / ln(N), where H(p) = -sum(p \* ln(p))
              #   an
              #
              #   @param probabilities [Hash{Symbol=>Float}] Relative scores normalized across the supplied options, summing approximately to
              #
              #   @param type [Symbol, :choice] Answer type.
            end

            class Noul < Telnyx::Internal::Type::BaseModel
              # @!attribute noul
              #   Score of the positive outcome. Values near 1 favor yes; values near 0 favor no.
              #   This is a number, not a Boolean, and is not calibrated correctness.
              #
              #   @return [Float]
              required :noul, Float

              # @!attribute type
              #   Answer type.
              #
              #   @return [Symbol, :noul]
              required :type, const: :noul

              # @!method initialize(noul:, type: :noul)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Noul} for more
              #   details.
              #
              #   A yes/no score with no separate confidence or probabilities fields.
              #
              #   @param noul [Float] Score of the positive outcome. Values near 1 favor yes; values near 0 favor no.
              #
              #   @param type [Symbol, :noul] Answer type.
            end

            class Score < Telnyx::Internal::Type::BaseModel
              # @!attribute confidence
              #   Normalized entropy confidence: 1 - H(p) / ln(N), where H(p) = -sum(p \* ln(p))
              #   and N is the number of options. Zero indicates a uniform distribution; one
              #   indicates concentration on one option. This is neither the winning probability
              #   nor calibrated correctness.
              #
              #   @return [Float]
              required :confidence, Float

              # @!attribute legend
              #   Criterion descriptions keyed by stringified zero-based indices, such as "0",
              #   "1", and "2".
              #
              #   @return [Hash{Symbol=>String}]
              required :legend, Telnyx::Internal::Type::HashOf[String]

              # @!attribute probabilities
              #   Relative scores keyed by the same stringified indices as legend.
              #
              #   @return [Hash{Symbol=>Float}]
              required :probabilities, Telnyx::Internal::Type::HashOf[Float]

              # @!attribute score
              #   Expected zero-based criterion index: sum(index \* probability). Ranges from 0 to
              #   N-1 for N criteria; fractional values are valid.
              #
              #   @return [Float]
              required :score, Float

              # @!attribute type
              #   Answer type.
              #
              #   @return [Symbol, :score]
              required :type, const: :score

              # @!method initialize(confidence:, legend:, probabilities:, score:, type: :score)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Score} for more
              #   details.
              #
              #   An expected rating over the ordered criteria.
              #
              #   @param confidence [Float] Normalized entropy confidence: 1 - H(p) / ln(N), where H(p) = -sum(p \* ln(p))
              #   an
              #
              #   @param legend [Hash{Symbol=>String}] Criterion descriptions keyed by stringified zero-based indices, such as "0", "1"
              #
              #   @param probabilities [Hash{Symbol=>Float}] Relative scores keyed by the same stringified indices as legend.
              #
              #   @param score [Float] Expected zero-based criterion index: sum(index \* probability). Ranges from 0 to
              #
              #   @param type [Symbol, :score] Answer type.
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Choice, Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Noul, Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Score)]
          end

          # Public model alias used to evaluate the request. Returns telnyx/decision-flash
          # when model was omitted. The underlying model is managed by Telnyx.
          #
          # @see Telnyx::Models::AI::Typesafe::V1SystemoneResponse#model
          module Model
            extend Telnyx::Internal::Type::Enum

            TELNYX_DECISION_FLASH = :"telnyx/decision-flash"
            TELNYX_DECISION_PRO = :"telnyx/decision-pro"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::AI::Typesafe::V1SystemoneResponse#usage
          class Usage < Telnyx::Internal::Type::BaseModel
            # @!attribute input_tokens
            #   Input tokens processed, including shared-context preparation and question
            #   evaluation. This can exceed the token count of the unique input text.
            #
            #   @return [Integer]
            required :input_tokens, Integer

            # @!attribute output_tokens
            #   Output tokens used for the evaluation, including shared-context preparation.
            #
            #   @return [Integer]
            required :output_tokens, Integer

            # @!method initialize(input_tokens:, output_tokens:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage} for more details.
            #
            #   Token usage for the completed evaluation.
            #
            #   @param input_tokens [Integer] Input tokens processed, including shared-context preparation and question evalua
            #
            #   @param output_tokens [Integer] Output tokens used for the evaluation, including shared-context preparation.
          end
        end
      end
    end
  end
end
