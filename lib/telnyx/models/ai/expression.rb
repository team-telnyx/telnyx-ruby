# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # A node in a deterministic expression AST. Exactly one variant is selected by the
      # `type` discriminator. Terminal variants (`number_literal`, `string_literal`,
      # `bool_literal`, `variable`) bottom out the recursion; `arithmetic`, `bool_op`,
      # and `comparison` nest further sub-expressions.
      #
      # Extracted into a single named schema so the recursive union is defined once (was
      # previously inlined at every operand site).
      module Expression
        extend Telnyx::Internal::Type::Union

        discriminator :type

        # Compare two sub-expressions with a relational or membership operator.
        #
        # Evaluates to a boolean. Used in edge conditions to gate transitions on
        # runtime values, e.g. `user_age >= 18` or `tier == "gold"`.
        variant :comparison, -> { Telnyx::AI::ComparisonExpression }

        # Combine sub-expressions with a logical operator (`and` / `or` / `not`).
        #
        # `and` and `or` accept two or more operands; `not` accepts exactly one.
        variant :bool_op, -> { Telnyx::AI::BooleanOpExpression }

        # Numeric expression: applies an arithmetic operator to two sub-expressions.
        #
        # Useful for derived numeric checks, e.g. `cart_total + shipping > 50`.
        # Both operands should resolve to numbers at runtime.
        variant :arithmetic, -> { Telnyx::AI::ArithmeticExpression }

        # Reference a dynamic variable by name.
        #
        # Resolved at runtime from the assistant's dynamic-variables context (see
        # `Assistant.dynamic_variables` and the dynamic-variables webhook).
        variant :variable, -> { Telnyx::AI::Expression::Variable }

        # Constant string value.
        variant :string_literal, -> { Telnyx::AI::Expression::StringLiteral }

        # Constant numeric value (float; integers are accepted and stored as float).
        variant :number_literal, -> { Telnyx::AI::Expression::NumberLiteral }

        # Constant boolean value. Useful for unconditional ('always') edges.
        variant :bool_literal, -> { Telnyx::AI::Expression::BoolLiteral }

        class Variable < Telnyx::Internal::Type::BaseModel
          # @!attribute name
          #   Variable name to look up in the runtime context.
          #
          #   @return [String]
          required :name, String

          # @!attribute type
          #
          #   @return [Symbol, :variable]
          required :type, const: :variable

          # @!method initialize(name:, type: :variable)
          #   Reference a dynamic variable by name.
          #
          #   Resolved at runtime from the assistant's dynamic-variables context (see
          #   `Assistant.dynamic_variables` and the dynamic-variables webhook).
          #
          #   @param name [String] Variable name to look up in the runtime context.
          #
          #   @param type [Symbol, :variable]
        end

        class StringLiteral < Telnyx::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :string_literal]
          required :type, const: :string_literal

          # @!attribute value
          #   Literal string value.
          #
          #   @return [String]
          required :value, String

          # @!method initialize(value:, type: :string_literal)
          #   Constant string value.
          #
          #   @param value [String] Literal string value.
          #
          #   @param type [Symbol, :string_literal]
        end

        class NumberLiteral < Telnyx::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :number_literal]
          required :type, const: :number_literal

          # @!attribute value
          #   Literal numeric value.
          #
          #   @return [Float]
          required :value, Float

          # @!method initialize(value:, type: :number_literal)
          #   Constant numeric value (float; integers are accepted and stored as float).
          #
          #   @param value [Float] Literal numeric value.
          #
          #   @param type [Symbol, :number_literal]
        end

        class BoolLiteral < Telnyx::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :bool_literal]
          required :type, const: :bool_literal

          # @!attribute value
          #   Literal boolean value.
          #
          #   @return [Boolean]
          required :value, Telnyx::Internal::Type::Boolean

          # @!method initialize(value:, type: :bool_literal)
          #   Constant boolean value. Useful for unconditional ('always') edges.
          #
          #   @param value [Boolean] Literal boolean value.
          #
          #   @param type [Symbol, :bool_literal]
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::AI::ComparisonExpression, Telnyx::Models::AI::BooleanOpExpression, Telnyx::Models::AI::ArithmeticExpression, Telnyx::Models::AI::Expression::Variable, Telnyx::Models::AI::Expression::StringLiteral, Telnyx::Models::AI::Expression::NumberLiteral, Telnyx::Models::AI::Expression::BoolLiteral)]
      end
    end
  end
end
