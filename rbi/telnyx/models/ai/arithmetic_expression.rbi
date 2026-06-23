# typed: strong

module Telnyx
  module Models
    module AI
      class ArithmeticExpression < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ArithmeticExpression, Telnyx::Internal::AnyHash)
          end

        # Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        # arbitrary recursion depth without an uncompilable by-value self-reference; see
        # the Expression schema for the variant structure.
        sig { returns(T.anything) }
        attr_accessor :left

        # Arithmetic operator applied to `left` and `right`.
        sig { returns(Telnyx::AI::ArithmeticExpression::Op::OrSymbol) }
        attr_accessor :op

        # Operand sub-expression (Expression AST node). Typed as free-form JSON to support
        # arbitrary recursion depth without an uncompilable by-value self-reference; see
        # the Expression schema for the variant structure.
        sig { returns(T.anything) }
        attr_accessor :right

        sig { returns(Symbol) }
        attr_accessor :type

        # Numeric expression: applies an arithmetic operator to two sub-expressions.
        #
        # Useful for derived numeric checks, e.g. `cart_total + shipping > 50`. Both
        # operands should resolve to numbers at runtime.
        sig do
          params(
            left: T.anything,
            op: Telnyx::AI::ArithmeticExpression::Op::OrSymbol,
            right: T.anything,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Operand sub-expression (Expression AST node). Typed as free-form JSON to support
          # arbitrary recursion depth without an uncompilable by-value self-reference; see
          # the Expression schema for the variant structure.
          left:,
          # Arithmetic operator applied to `left` and `right`.
          op:,
          # Operand sub-expression (Expression AST node). Typed as free-form JSON to support
          # arbitrary recursion depth without an uncompilable by-value self-reference; see
          # the Expression schema for the variant structure.
          right:,
          type: :arithmetic
        )
        end

        sig do
          override.returns(
            {
              left: T.anything,
              op: Telnyx::AI::ArithmeticExpression::Op::OrSymbol,
              right: T.anything,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        # Arithmetic operator applied to `left` and `right`.
        module Op
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::ArithmeticExpression::Op) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLUS = T.let(:"+", Telnyx::AI::ArithmeticExpression::Op::TaggedSymbol)
          MINUS =
            T.let(:"-", Telnyx::AI::ArithmeticExpression::Op::TaggedSymbol)
          MULTIPLY =
            T.let(:"*", Telnyx::AI::ArithmeticExpression::Op::TaggedSymbol)
          DIVIDE =
            T.let(:"/", Telnyx::AI::ArithmeticExpression::Op::TaggedSymbol)
          MODULO =
            T.let(:"%", Telnyx::AI::ArithmeticExpression::Op::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::ArithmeticExpression::Op::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
