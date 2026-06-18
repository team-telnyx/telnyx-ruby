# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ArithmeticExpression < Telnyx::Internal::Type::BaseModel
        # @!attribute left
        #   Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        #   arbitrary recursion depth without an uncompilable by-value self-reference; see
        #   the Expression schema for the variant structure.
        #
        #   @return [Object]
        required :left, Telnyx::Internal::Type::Unknown

        # @!attribute op
        #   Arithmetic operator applied to `left` and `right`.
        #
        #   @return [Symbol, Telnyx::Models::AI::ArithmeticExpression::Op]
        required :op, enum: -> { Telnyx::AI::ArithmeticExpression::Op }

        # @!attribute right
        #   Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        #   arbitrary recursion depth without an uncompilable by-value self-reference; see
        #   the Expression schema for the variant structure.
        #
        #   @return [Object]
        required :right, Telnyx::Internal::Type::Unknown

        # @!attribute type
        #
        #   @return [Symbol, :arithmetic]
        required :type, const: :arithmetic

        # @!method initialize(left:, op:, right:, type: :arithmetic)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ArithmeticExpression} for more details.
        #
        #   Numeric expression: applies an arithmetic operator to two sub-expressions.
        #
        #   Useful for derived numeric checks, e.g. `cart_total + shipping > 50`. Both
        #   operands should resolve to numbers at runtime.
        #
        #   @param left [Object] Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        #
        #   @param op [Symbol, Telnyx::Models::AI::ArithmeticExpression::Op] Arithmetic operator applied to `left` and `right`.
        #
        #   @param right [Object] Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        #
        #   @param type [Symbol, :arithmetic]

        # Arithmetic operator applied to `left` and `right`.
        #
        # @see Telnyx::Models::AI::ArithmeticExpression#op
        module Op
          extend Telnyx::Internal::Type::Enum

          PLUS = :+
          MINUS = :-
          MULTIPLY = :*
          DIVIDE = :/
          MODULO = :%

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
