# typed: strong

module Telnyx
  module Models
    module AI
      class ComparisonExpression < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ComparisonExpression, Telnyx::Internal::AnyHash)
          end

        # Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        # arbitrary recursion depth without an uncompilable by-value self-reference; see
        # the Expression schema for the variant structure.
        sig { returns(T.anything) }
        attr_accessor :left

        # Relational/membership operator. `contains` / `not_contains` apply to strings
        # (substring) and arrays (membership).
        sig { returns(Telnyx::AI::ComparisonExpression::Op::OrSymbol) }
        attr_accessor :op

        # Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        # arbitrary recursion depth without an uncompilable by-value self-reference; see
        # the Expression schema for the variant structure.
        sig { returns(T.anything) }
        attr_accessor :right

        sig { returns(Symbol) }
        attr_accessor :type

        # Compare two sub-expressions with a relational or membership operator.
        #
        # Evaluates to a boolean. Used in edge conditions to gate transitions on runtime
        # values, e.g. `user_age >= 18` or `tier == "gold"`.
        sig do
          params(
            left: T.anything,
            op: Telnyx::AI::ComparisonExpression::Op::OrSymbol,
            right: T.anything,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Operand sub-expression (Expression AST node). Typed as free-form JSON to support
          # arbitrary recursion depth without an uncompilable by-value self-reference; see
          # the Expression schema for the variant structure.
          left:,
          # Relational/membership operator. `contains` / `not_contains` apply to strings
          # (substring) and arrays (membership).
          op:,
          # Operand sub-expression (Expression AST node). Typed as free-form JSON to support
          # arbitrary recursion depth without an uncompilable by-value self-reference; see
          # the Expression schema for the variant structure.
          right:,
          type: :comparison
        )
        end

        sig do
          override.returns(
            {
              left: T.anything,
              op: Telnyx::AI::ComparisonExpression::Op::OrSymbol,
              right: T.anything,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        # Relational/membership operator. `contains` / `not_contains` apply to strings
        # (substring) and arrays (membership).
        module Op
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::ComparisonExpression::Op) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EQ = T.let(:"==", Telnyx::AI::ComparisonExpression::Op::TaggedSymbol)
          NE = T.let(:"!=", Telnyx::AI::ComparisonExpression::Op::TaggedSymbol)
          LT = T.let(:"<", Telnyx::AI::ComparisonExpression::Op::TaggedSymbol)
          LTE = T.let(:"<=", Telnyx::AI::ComparisonExpression::Op::TaggedSymbol)
          GT = T.let(:">", Telnyx::AI::ComparisonExpression::Op::TaggedSymbol)
          GTE = T.let(:">=", Telnyx::AI::ComparisonExpression::Op::TaggedSymbol)
          CONTAINS =
            T.let(:contains, Telnyx::AI::ComparisonExpression::Op::TaggedSymbol)
          NOT_CONTAINS =
            T.let(
              :not_contains,
              Telnyx::AI::ComparisonExpression::Op::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::ComparisonExpression::Op::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
