# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class Clause < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Telnyx::AI::Assistants::Clause, Telnyx::Internal::AnyHash)
            end

          # Attribute name from the routing context
          sig { returns(String) }
          attr_accessor :attribute

          # Match operator
          sig { returns(Telnyx::AI::Assistants::Clause::Operator::OrSymbol) }
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
              operator: Telnyx::AI::Assistants::Clause::Operator::OrSymbol,
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
                operator: Telnyx::AI::Assistants::Clause::Operator::OrSymbol,
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
                T.all(Symbol, Telnyx::AI::Assistants::Clause::Operator)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IN =
              T.let(:in, Telnyx::AI::Assistants::Clause::Operator::TaggedSymbol)
            NOT_IN =
              T.let(
                :not_in,
                Telnyx::AI::Assistants::Clause::Operator::TaggedSymbol
              )
            STARTS_WITH =
              T.let(
                :starts_with,
                Telnyx::AI::Assistants::Clause::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Telnyx::AI::Assistants::Clause::Operator::TaggedSymbol]
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
