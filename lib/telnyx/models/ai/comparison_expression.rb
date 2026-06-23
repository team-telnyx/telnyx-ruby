# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ComparisonExpression < Telnyx::Internal::Type::BaseModel
        # @!attribute left
        #   Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        #   arbitrary recursion depth without an uncompilable by-value self-reference; see
        #   the Expression schema for the variant structure.
        #
        #   @return [Object]
        required :left, Telnyx::Internal::Type::Unknown

        # @!attribute op
        #   Relational/membership operator. `contains` / `not_contains` apply to strings
        #   (substring) and arrays (membership).
        #
        #   @return [Symbol, Telnyx::Models::AI::ComparisonExpression::Op]
        required :op, enum: -> { Telnyx::AI::ComparisonExpression::Op }

        # @!attribute right
        #   Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        #   arbitrary recursion depth without an uncompilable by-value self-reference; see
        #   the Expression schema for the variant structure.
        #
        #   @return [Object]
        required :right, Telnyx::Internal::Type::Unknown

        # @!attribute type
        #
        #   @return [Symbol, :comparison]
        required :type, const: :comparison

        # @!method initialize(left:, op:, right:, type: :comparison)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ComparisonExpression} for more details.
        #
        #   Compare two sub-expressions with a relational or membership operator.
        #
        #   Evaluates to a boolean. Used in edge conditions to gate transitions on runtime
        #   values, e.g. `user_age >= 18` or `tier == "gold"`.
        #
        #   @param left [Object] Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        #
        #   @param op [Symbol, Telnyx::Models::AI::ComparisonExpression::Op] Relational/membership operator. `contains` / `not_contains` apply to strings (su
        #
        #   @param right [Object] Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        #
        #   @param type [Symbol, :comparison]

        # Relational/membership operator. `contains` / `not_contains` apply to strings
        # (substring) and arrays (membership).
        #
        # @see Telnyx::Models::AI::ComparisonExpression#op
        module Op
          extend Telnyx::Internal::Type::Enum

          EQ = :"=="
          NE = :"!="
          LT = :<
          LTE = :"<="
          GT = :>
          GTE = :">="
          CONTAINS = :contains
          NOT_CONTAINS = :not_contains

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
