# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class CanaryDeployResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::CanaryDeployResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :assistant_id

          sig { returns(Time) }
          attr_accessor :created_at

          sig do
            returns(
              T::Array[Telnyx::AI::Assistants::CanaryDeployResponse::Rule]
            )
          end
          attr_accessor :rules

          sig { returns(Time) }
          attr_accessor :updated_at

          # Response shape.
          #
          # Always carries `rules` (canonical).
          sig do
            params(
              assistant_id: String,
              created_at: Time,
              rules:
                T::Array[
                  Telnyx::AI::Assistants::CanaryDeployResponse::Rule::OrHash
                ],
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(assistant_id:, created_at:, rules:, updated_at:)
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                created_at: Time,
                rules:
                  T::Array[Telnyx::AI::Assistants::CanaryDeployResponse::Rule],
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          class Rule < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::CanaryDeployResponse::Rule,
                  Telnyx::Internal::AnyHash
                )
              end

            # What a rule serves when matched.
            #
            # Exactly one of:
            #
            # - `version_id` — serve a specific version
            # - `rollout` — weighted random across versions; weights must sum to less than
            #   100, with the leftover routing to the main version
            sig do
              returns(Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve)
            end
            attr_reader :serve

            sig do
              params(
                serve:
                  Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve::OrHash
              ).void
            end
            attr_writer :serve

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match
                  ]
                )
              )
            end
            attr_reader :match

            sig do
              params(
                match:
                  T::Array[
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::OrHash
                  ]
              ).void
            end
            attr_writer :match

            # A targeting rule: `match` clauses (AND) gate `serve`.
            #
            # An empty `match` is a catch-all (always fires).
            sig do
              params(
                serve:
                  Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve::OrHash,
                match:
                  T::Array[
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # What a rule serves when matched.
              #
              # Exactly one of:
              #
              # - `version_id` — serve a specific version
              # - `rollout` — weighted random across versions; weights must sum to less than
              #   100, with the leftover routing to the main version
              serve:,
              match: nil
            )
            end

            sig do
              override.returns(
                {
                  serve:
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve,
                  match:
                    T::Array[
                      Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match
                    ]
                }
              )
            end
            def to_hash
            end

            class Serve < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve::Rollout
                    ]
                  )
                )
              end
              attr_reader :rollout

              sig do
                params(
                  rollout:
                    T::Array[
                      Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve::Rollout::OrHash
                    ]
                ).void
              end
              attr_writer :rollout

              sig { returns(T.nilable(String)) }
              attr_reader :version_id

              sig { params(version_id: String).void }
              attr_writer :version_id

              # What a rule serves when matched.
              #
              # Exactly one of:
              #
              # - `version_id` — serve a specific version
              # - `rollout` — weighted random across versions; weights must sum to less than
              #   100, with the leftover routing to the main version
              sig do
                params(
                  rollout:
                    T::Array[
                      Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve::Rollout::OrHash
                    ],
                  version_id: String
                ).returns(T.attached_class)
              end
              def self.new(rollout: nil, version_id: nil)
              end

              sig do
                override.returns(
                  {
                    rollout:
                      T::Array[
                        Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve::Rollout
                      ],
                    version_id: String
                  }
                )
              end
              def to_hash
              end

              class Rollout < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Serve::Rollout,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :version_id

                sig { returns(Float) }
                attr_accessor :weight

                # One slot in a percentage rollout.
                sig do
                  params(version_id: String, weight: Float).returns(
                    T.attached_class
                  )
                end
                def self.new(version_id:, weight:)
                end

                sig { override.returns({ version_id: String, weight: Float }) }
                def to_hash
                end
              end
            end

            class Match < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Attribute name from the routing context
              sig { returns(String) }
              attr_accessor :attribute

              # Match operator
              sig do
                returns(
                  Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::Operator::TaggedSymbol
                )
              end
              attr_accessor :operator

              sig { returns(T::Array[String]) }
              attr_accessor :values

              # A single attribute/operator/values check.
              #
              # A clause matches when the routing context's value for `attribute` satisfies
              # `operator` against any of `values`.
              sig do
                params(
                  attribute: String,
                  operator:
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::Operator::OrSymbol,
                  values: T::Array[String]
                ).returns(T.attached_class)
              end
              def self.new(
                # Attribute name from the routing context
                attribute:,
                # Match operator
                operator:,
                values:
              )
              end

              sig do
                override.returns(
                  {
                    attribute: String,
                    operator:
                      Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::Operator::TaggedSymbol,
                    values: T::Array[String]
                  }
                )
              end
              def to_hash
              end

              # Match operator
              module Operator
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::Operator
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                IN =
                  T.let(
                    :in,
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::Operator::TaggedSymbol
                  )
                NOT_IN =
                  T.let(
                    :not_in,
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::Operator::TaggedSymbol
                  )
                STARTS_WITH =
                  T.let(
                    :starts_with,
                    Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::Operator::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Assistants::CanaryDeployResponse::Rule::Match::Operator::TaggedSymbol
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
  end
end
