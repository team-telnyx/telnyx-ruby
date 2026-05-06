# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class CanaryDeploy < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::CanaryDeploy,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(T::Array[Telnyx::AI::Assistants::CanaryDeploy::Rule])
            )
          end
          attr_reader :rules

          sig do
            params(
              rules:
                T::Array[Telnyx::AI::Assistants::CanaryDeploy::Rule::OrHash]
            ).void
          end
          attr_writer :rules

          # Create/update request body. Accepts:
          #
          # - `rules` — canonical ordered list of routing rules
          sig do
            params(
              rules:
                T::Array[Telnyx::AI::Assistants::CanaryDeploy::Rule::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(rules: nil)
          end

          sig do
            override.returns(
              { rules: T::Array[Telnyx::AI::Assistants::CanaryDeploy::Rule] }
            )
          end
          def to_hash
          end

          class Rule < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::CanaryDeploy::Rule,
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
            sig { returns(Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve) }
            attr_reader :serve

            sig do
              params(
                serve: Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve::OrHash
              ).void
            end
            attr_writer :serve

            sig do
              returns(
                T.nilable(
                  T::Array[Telnyx::AI::Assistants::CanaryDeploy::Rule::Match]
                )
              )
            end
            attr_reader :match

            sig do
              params(
                match:
                  T::Array[
                    Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::OrHash
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
                  Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve::OrHash,
                match:
                  T::Array[
                    Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::OrHash
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
                  serve: Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve,
                  match:
                    T::Array[Telnyx::AI::Assistants::CanaryDeploy::Rule::Match]
                }
              )
            end
            def to_hash
            end

            class Serve < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve::Rollout
                    ]
                  )
                )
              end
              attr_reader :rollout

              sig do
                params(
                  rollout:
                    T::Array[
                      Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve::Rollout::OrHash
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
                      Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve::Rollout::OrHash
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
                        Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve::Rollout
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
                      Telnyx::AI::Assistants::CanaryDeploy::Rule::Serve::Rollout,
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
                    Telnyx::AI::Assistants::CanaryDeploy::Rule::Match,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Attribute name from the routing context
              sig { returns(String) }
              attr_accessor :attribute

              # Match operator
              sig do
                returns(
                  Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::Operator::OrSymbol
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
                    Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::Operator::OrSymbol,
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
                      Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::Operator::OrSymbol,
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
                      Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::Operator
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                IN =
                  T.let(
                    :in,
                    Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::Operator::TaggedSymbol
                  )
                NOT_IN =
                  T.let(
                    :not_in,
                    Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::Operator::TaggedSymbol
                  )
                STARTS_WITH =
                  T.let(
                    :starts_with,
                    Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::Operator::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Assistants::CanaryDeploy::Rule::Match::Operator::TaggedSymbol
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
