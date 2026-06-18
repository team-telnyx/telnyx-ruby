# typed: strong

module Telnyx
  module Models
    module AI
      class BooleanOpExpression < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::BooleanOpExpression, Telnyx::Internal::AnyHash)
          end

        # Logical operator. `not` is unary; `and`/`or` are n-ary (>=2).
        sig { returns(Telnyx::AI::BooleanOpExpression::Op::OrSymbol) }
        attr_accessor :op

        # Operand sub-expressions. Length must be exactly 1 for `not` and >= 2 for
        # `and`/`or`.
        sig { returns(T::Array[Telnyx::AI::Expression]) }
        attr_accessor :operands

        sig { returns(Symbol) }
        attr_accessor :type

        # Combine sub-expressions with a logical operator (`and` / `or` / `not`).
        #
        # `and` and `or` accept two or more operands; `not` accepts exactly one.
        sig do
          params(
            op: Telnyx::AI::BooleanOpExpression::Op::OrSymbol,
            operands: T::Array[Telnyx::AI::Expression],
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Logical operator. `not` is unary; `and`/`or` are n-ary (>=2).
          op:,
          # Operand sub-expressions. Length must be exactly 1 for `not` and >= 2 for
          # `and`/`or`.
          operands:,
          type: :bool_op
        )
        end

        sig do
          override.returns(
            {
              op: Telnyx::AI::BooleanOpExpression::Op::OrSymbol,
              operands: T::Array[Telnyx::AI::Expression],
              type: Symbol
            }
          )
        end
        def to_hash
        end

        # Logical operator. `not` is unary; `and`/`or` are n-ary (>=2).
        module Op
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::BooleanOpExpression::Op) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AND = T.let(:and, Telnyx::AI::BooleanOpExpression::Op::TaggedSymbol)
          OR = T.let(:or, Telnyx::AI::BooleanOpExpression::Op::TaggedSymbol)
          NOT = T.let(:not, Telnyx::AI::BooleanOpExpression::Op::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::BooleanOpExpression::Op::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
