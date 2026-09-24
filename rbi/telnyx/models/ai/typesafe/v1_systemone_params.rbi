# typed: strong

module Telnyx
  module Models
    module AI
      module Typesafe
        class V1SystemoneParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Typesafe::V1SystemoneParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Between 1 and 64 named questions. Each key identifies the corresponding answer.
          sig do
            returns(
              T::Hash[
                Symbol,
                T.any(
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice,
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul,
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score
                )
              ]
            )
          end
          attr_accessor :questions

          # Shared context evaluated by every question.
          sig do
            returns(Telnyx::AI::Typesafe::V1SystemoneParams::State::Variants)
          end
          attr_accessor :state

          # Public model alias. telnyx/decision-flash offers the lowest cost and latency;
          # telnyx/decision-pro supports decisions that require long context, including
          # inputs beyond Jev’s 32k per-decision limit. Applies to every question in the
          # request. Other values are rejected.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::Typesafe::V1SystemoneParams::Model::OrSymbol
              )
            )
          end
          attr_reader :model

          sig do
            params(
              model: Telnyx::AI::Typesafe::V1SystemoneParams::Model::OrSymbol
            ).void
          end
          attr_writer :model

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
            ).returns(T.attached_class)
          end
          def self.new(
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

          sig do
            override.returns(
              {
                questions:
                  T::Hash[
                    Symbol,
                    T.any(
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice,
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul,
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score
                    )
                  ],
                state: Telnyx::AI::Typesafe::V1SystemoneParams::State::Variants,
                model: Telnyx::AI::Typesafe::V1SystemoneParams::Model::OrSymbol,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # A choice, yes/no, or ordered-score question.
          module Question
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice,
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul,
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score
                )
              end

            class Choice < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Between 2 and 64 option keys mapped to description strings or null. A null
              # description uses the option key as its text.
              sig { returns(T::Hash[Symbol, T.nilable(String)]) }
              attr_accessor :criteria

              # Required instructions describing what to decide about the shared state.
              sig do
                returns(
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice::Instructions::Variants
                )
              end
              attr_accessor :instructions

              # Question type.
              sig { returns(Symbol) }
              attr_accessor :type

              # Select one of the supplied options.
              sig do
                params(
                  criteria: T::Hash[Symbol, T.nilable(String)],
                  instructions:
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice::Instructions::Variants,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Between 2 and 64 option keys mapped to description strings or null. A null
                # description uses the option key as its text.
                criteria:,
                # Required instructions describing what to decide about the shared state.
                instructions:,
                # Question type.
                type: :choice
              )
              end

              sig do
                override.returns(
                  {
                    criteria: T::Hash[Symbol, T.nilable(String)],
                    instructions:
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice::Instructions::Variants,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end

              # Required instructions describing what to decide about the shared state.
              module Instructions
                extend Telnyx::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      String,
                      T::Hash[Symbol, T.anything],
                      T::Array[T.anything]
                    )
                  end

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice::Instructions::Variants
                    ]
                  )
                end
                def self.variants
                end

                UnionMember1Map =
                  T.let(
                    Telnyx::Internal::Type::HashOf[
                      Telnyx::Internal::Type::Unknown
                    ],
                    Telnyx::Internal::Type::Converter
                  )

                UnionMember2Array =
                  T.let(
                    Telnyx::Internal::Type::ArrayOf[
                      Telnyx::Internal::Type::Unknown
                    ],
                    Telnyx::Internal::Type::Converter
                  )
              end
            end

            class Noul < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Required instructions describing what to decide about the shared state.
              sig do
                returns(
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Instructions::Variants
                )
              end
              attr_accessor :instructions

              # Question type.
              sig { returns(Symbol) }
              attr_accessor :type

              # Optional descriptions for the positive and negative outcomes. Descriptions must
              # be strings.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Criteria
                  )
                )
              end
              attr_reader :criteria

              sig do
                params(
                  criteria:
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Criteria::OrHash
                ).void
              end
              attr_writer :criteria

              # Evaluate a yes/no question. Omit criteria to use Yes and No descriptions.
              sig do
                params(
                  instructions:
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Instructions::Variants,
                  criteria:
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Criteria::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Required instructions describing what to decide about the shared state.
                instructions:,
                # Optional descriptions for the positive and negative outcomes. Descriptions must
                # be strings.
                criteria: nil,
                # Question type.
                type: :noul
              )
              end

              sig do
                override.returns(
                  {
                    instructions:
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Instructions::Variants,
                    type: Symbol,
                    criteria:
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Criteria
                  }
                )
              end
              def to_hash
              end

              # Required instructions describing what to decide about the shared state.
              module Instructions
                extend Telnyx::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      String,
                      T::Hash[Symbol, T.anything],
                      T::Array[T.anything]
                    )
                  end

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Instructions::Variants
                    ]
                  )
                end
                def self.variants
                end

                UnionMember1Map =
                  T.let(
                    Telnyx::Internal::Type::HashOf[
                      Telnyx::Internal::Type::Unknown
                    ],
                    Telnyx::Internal::Type::Converter
                  )

                UnionMember2Array =
                  T.let(
                    Telnyx::Internal::Type::ArrayOf[
                      Telnyx::Internal::Type::Unknown
                    ],
                    Telnyx::Internal::Type::Converter
                  )
              end

              class Criteria < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Criteria,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Description of the negative outcome.
                sig { returns(T.nilable(String)) }
                attr_reader :false_

                sig { params(false_: String).void }
                attr_writer :false_

                # Description of the positive outcome.
                sig { returns(T.nilable(String)) }
                attr_reader :true_

                sig { params(true_: String).void }
                attr_writer :true_

                # Optional descriptions for the positive and negative outcomes. Descriptions must
                # be strings.
                sig do
                  params(false_: String, true_: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Description of the negative outcome.
                  false_: nil,
                  # Description of the positive outcome.
                  true_: nil
                )
                end

                sig { override.returns({ false_: String, true_: String }) }
                def to_hash
                end
              end
            end

            class Score < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Between 2 and 64 description strings in ascending score order. Indices start at
              # zero.
              sig { returns(T::Array[String]) }
              attr_accessor :criteria

              # Required instructions describing what to decide about the shared state.
              sig do
                returns(
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score::Instructions::Variants
                )
              end
              attr_accessor :instructions

              # Question type.
              sig { returns(Symbol) }
              attr_accessor :type

              # Rate the state against an ordered rubric.
              sig do
                params(
                  criteria: T::Array[String],
                  instructions:
                    Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score::Instructions::Variants,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Between 2 and 64 description strings in ascending score order. Indices start at
                # zero.
                criteria:,
                # Required instructions describing what to decide about the shared state.
                instructions:,
                # Question type.
                type: :score
              )
              end

              sig do
                override.returns(
                  {
                    criteria: T::Array[String],
                    instructions:
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score::Instructions::Variants,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end

              # Required instructions describing what to decide about the shared state.
              module Instructions
                extend Telnyx::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      String,
                      T::Hash[Symbol, T.anything],
                      T::Array[T.anything]
                    )
                  end

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score::Instructions::Variants
                    ]
                  )
                end
                def self.variants
                end

                UnionMember1Map =
                  T.let(
                    Telnyx::Internal::Type::HashOf[
                      Telnyx::Internal::Type::Unknown
                    ],
                    Telnyx::Internal::Type::Converter
                  )

                UnionMember2Array =
                  T.let(
                    Telnyx::Internal::Type::ArrayOf[
                      Telnyx::Internal::Type::Unknown
                    ],
                    Telnyx::Internal::Type::Converter
                  )
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Typesafe::V1SystemoneParams::Question::Variants
                ]
              )
            end
            def self.variants
            end
          end

          # Shared context evaluated by every question.
          module State
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(String, T::Hash[Symbol, T.anything], T::Array[T.anything])
              end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Typesafe::V1SystemoneParams::State::Variants
                ]
              )
            end
            def self.variants
            end

            UnionMember1Map =
              T.let(
                Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
                Telnyx::Internal::Type::Converter
              )

            UnionMember2Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::Internal::Type::Unknown
                ],
                Telnyx::Internal::Type::Converter
              )
          end

          # Public model alias. telnyx/decision-flash offers the lowest cost and latency;
          # telnyx/decision-pro supports decisions that require long context, including
          # inputs beyond Jev’s 32k per-decision limit. Applies to every question in the
          # request. Other values are rejected.
          module Model
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::AI::Typesafe::V1SystemoneParams::Model)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX_DECISION_FLASH =
              T.let(
                :"telnyx/decision-flash",
                Telnyx::AI::Typesafe::V1SystemoneParams::Model::TaggedSymbol
              )
            TELNYX_DECISION_PRO =
              T.let(
                :"telnyx/decision-pro",
                Telnyx::AI::Typesafe::V1SystemoneParams::Model::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Typesafe::V1SystemoneParams::Model::TaggedSymbol
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
