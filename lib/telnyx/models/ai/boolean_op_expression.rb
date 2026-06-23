# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class BooleanOpExpression < Telnyx::Internal::Type::BaseModel
        # @!attribute op
        #   Logical operator. `not` is unary; `and`/`or` are n-ary (>=2).
        #
        #   @return [Symbol, Telnyx::Models::AI::BooleanOpExpression::Op]
        required :op, enum: -> { Telnyx::AI::BooleanOpExpression::Op }

        # @!attribute operands
        #   Operand sub-expressions. Length must be exactly 1 for `not` and >= 2 for
        #   `and`/`or`.
        #
        #   @return [Array<Telnyx::Models::AI::Expression>]
        required :operands, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::Expression] }

        # @!attribute type
        #
        #   @return [Symbol, :bool_op]
        required :type, const: :bool_op

        # @!method initialize(op:, operands:, type: :bool_op)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::BooleanOpExpression} for more details.
        #
        #   Combine sub-expressions with a logical operator (`and` / `or` / `not`).
        #
        #   `and` and `or` accept two or more operands; `not` accepts exactly one.
        #
        #   @param op [Symbol, Telnyx::Models::AI::BooleanOpExpression::Op] Logical operator. `not` is unary; `and`/`or` are n-ary (>=2).
        #
        #   @param operands [Array<Telnyx::Models::AI::Expression>] Operand sub-expressions. Length must be exactly 1 for `not` and >= 2 for `and`/`
        #
        #   @param type [Symbol, :bool_op]

        # Logical operator. `not` is unary; `and`/`or` are n-ary (>=2).
        #
        # @see Telnyx::Models::AI::BooleanOpExpression#op
        module Op
          extend Telnyx::Internal::Type::Enum

          AND = :and
          OR = :or
          NOT = :not

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
