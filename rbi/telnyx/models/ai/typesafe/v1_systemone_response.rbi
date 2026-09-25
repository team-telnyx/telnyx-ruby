# typed: strong

module Telnyx
  module Models
    module AI
      module Typesafe
        class V1SystemoneResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Typesafe::V1SystemoneResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # Answers keyed by exactly the question IDs in the request. Each answer type
          # matches its question.
          sig do
            returns(
              T::Hash[
                Symbol,
                Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Variants
              ]
            )
          end
          attr_accessor :answers

          # Token usage for the completed evaluation.
          sig do
            returns(Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage)
          end
          attr_reader :usage

          sig do
            params(
              usage:
                Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage::OrHash
            ).void
          end
          attr_writer :usage

          # Public model alias used to evaluate the request. Returns telnyx/decision-flash
          # when model was omitted. The underlying model is managed by Telnyx.
          sig do
            returns(
              Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model::TaggedSymbol
            )
          end
          attr_accessor :model

          # A complete synchronous evaluation. Answers are returned directly without a data
          # wrapper.
          sig do
            params(
              answers:
                T::Hash[
                  Symbol,
                  T.any(
                    Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Choice::OrHash,
                    Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Noul::OrHash,
                    Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Score::OrHash
                  )
                ],
              model:
                Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model::OrSymbol,
              usage:
                Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Answers keyed by exactly the question IDs in the request. Each answer type
            # matches its question.
            answers:,
            # Public model alias used to evaluate the request. Returns telnyx/decision-flash
            # when model was omitted. The underlying model is managed by Telnyx.
            model:,
            # Token usage for the completed evaluation.
            usage:
          )
          end

          sig do
            override.returns(
              {
                answers:
                  T::Hash[
                    Symbol,
                    Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Variants
                  ],
                model:
                  Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model::TaggedSymbol,
                usage: Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage
              }
            )
          end
          def to_hash
          end

          # An answer whose type matches its question.
          module Answer
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Choice,
                  Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Noul,
                  Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Score
                )
              end

            class Choice < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Choice,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The option key with the highest relative score. Ties favor the first option in
              # request order.
              sig { returns(String) }
              attr_accessor :choice

              # Normalized entropy confidence: 1 - H(p) / ln(N), where H(p) = -sum(p \* ln(p))
              # and N is the number of options. Zero indicates a uniform distribution; one
              # indicates concentration on one option. This is neither the winning probability
              # nor calibrated correctness.
              sig { returns(Float) }
              attr_accessor :confidence

              # Relative scores normalized across the supplied options, summing approximately
              # to 1. These are not calibrated probabilities of correctness.
              sig { returns(T::Hash[Symbol, Float]) }
              attr_accessor :probabilities

              # Answer type.
              sig { returns(Symbol) }
              attr_accessor :type

              # A selected option and the distribution across all supplied option keys.
              sig do
                params(
                  choice: String,
                  confidence: Float,
                  probabilities: T::Hash[Symbol, Float],
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The option key with the highest relative score. Ties favor the first option in
                # request order.
                choice:,
                # Normalized entropy confidence: 1 - H(p) / ln(N), where H(p) = -sum(p \* ln(p))
                # and N is the number of options. Zero indicates a uniform distribution; one
                # indicates concentration on one option. This is neither the winning probability
                # nor calibrated correctness.
                confidence:,
                # Relative scores normalized across the supplied options, summing approximately
                # to 1. These are not calibrated probabilities of correctness.
                probabilities:,
                # Answer type.
                type: :choice
              )
              end

              sig do
                override.returns(
                  {
                    choice: String,
                    confidence: Float,
                    probabilities: T::Hash[Symbol, Float],
                    type: Symbol
                  }
                )
              end
              def to_hash
              end
            end

            class Noul < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Noul,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Score of the positive outcome. Values near 1 favor yes; values near 0 favor no.
              # This is a number, not a Boolean, and is not calibrated correctness.
              sig { returns(Float) }
              attr_accessor :noul

              # Answer type.
              sig { returns(Symbol) }
              attr_accessor :type

              # A yes/no score with no separate confidence or probabilities fields.
              sig do
                params(noul: Float, type: Symbol).returns(T.attached_class)
              end
              def self.new(
                # Score of the positive outcome. Values near 1 favor yes; values near 0 favor no.
                # This is a number, not a Boolean, and is not calibrated correctness.
                noul:,
                # Answer type.
                type: :noul
              )
              end

              sig { override.returns({ noul: Float, type: Symbol }) }
              def to_hash
              end
            end

            class Score < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Score,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Normalized entropy confidence: 1 - H(p) / ln(N), where H(p) = -sum(p \* ln(p))
              # and N is the number of options. Zero indicates a uniform distribution; one
              # indicates concentration on one option. This is neither the winning probability
              # nor calibrated correctness.
              sig { returns(Float) }
              attr_accessor :confidence

              # Criterion descriptions keyed by stringified zero-based indices, such as "0",
              # "1", and "2".
              sig { returns(T::Hash[Symbol, String]) }
              attr_accessor :legend

              # Relative scores keyed by the same stringified indices as legend.
              sig { returns(T::Hash[Symbol, Float]) }
              attr_accessor :probabilities

              # Expected zero-based criterion index: sum(index \* probability). Ranges from 0 to
              # N-1 for N criteria; fractional values are valid.
              sig { returns(Float) }
              attr_accessor :score

              # Answer type.
              sig { returns(Symbol) }
              attr_accessor :type

              # An expected rating over the ordered criteria.
              sig do
                params(
                  confidence: Float,
                  legend: T::Hash[Symbol, String],
                  probabilities: T::Hash[Symbol, Float],
                  score: Float,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Normalized entropy confidence: 1 - H(p) / ln(N), where H(p) = -sum(p \* ln(p))
                # and N is the number of options. Zero indicates a uniform distribution; one
                # indicates concentration on one option. This is neither the winning probability
                # nor calibrated correctness.
                confidence:,
                # Criterion descriptions keyed by stringified zero-based indices, such as "0",
                # "1", and "2".
                legend:,
                # Relative scores keyed by the same stringified indices as legend.
                probabilities:,
                # Expected zero-based criterion index: sum(index \* probability). Ranges from 0 to
                # N-1 for N criteria; fractional values are valid.
                score:,
                # Answer type.
                type: :score
              )
              end

              sig do
                override.returns(
                  {
                    confidence: Float,
                    legend: T::Hash[Symbol, String],
                    probabilities: T::Hash[Symbol, Float],
                    score: Float,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer::Variants
                ]
              )
            end
            def self.variants
            end
          end

          # Public model alias used to evaluate the request. Returns telnyx/decision-flash
          # when model was omitted. The underlying model is managed by Telnyx.
          module Model
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX_DECISION_FLASH =
              T.let(
                :"telnyx/decision-flash",
                Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model::TaggedSymbol
              )
            TELNYX_DECISION_PRO =
              T.let(
                :"telnyx/decision-pro",
                Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Model::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Usage < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage,
                  Telnyx::Internal::AnyHash
                )
              end

            # Input tokens processed, including shared-context preparation and question
            # evaluation. This can exceed the token count of the unique input text.
            sig { returns(Integer) }
            attr_accessor :input_tokens

            # Output tokens used for the evaluation, including shared-context preparation.
            sig { returns(Integer) }
            attr_accessor :output_tokens

            # Token usage for the completed evaluation.
            sig do
              params(input_tokens: Integer, output_tokens: Integer).returns(
                T.attached_class
              )
            end
            def self.new(
              # Input tokens processed, including shared-context preparation and question
              # evaluation. This can exceed the token count of the unique input text.
              input_tokens:,
              # Output tokens used for the evaluation, including shared-context preparation.
              output_tokens:
            )
            end

            sig do
              override.returns(
                { input_tokens: Integer, output_tokens: Integer }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
