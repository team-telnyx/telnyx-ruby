# typed: strong

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

        Variants =
          T.type_alias do
            T.any(
              Telnyx::AI::ComparisonExpression,
              Telnyx::AI::BooleanOpExpression,
              Telnyx::AI::ArithmeticExpression,
              Telnyx::AI::Expression::Variable,
              Telnyx::AI::Expression::StringLiteral,
              Telnyx::AI::Expression::NumberLiteral,
              Telnyx::AI::Expression::BoolLiteral
            )
          end

        class Variable < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Telnyx::AI::Expression::Variable, Telnyx::Internal::AnyHash)
            end

          # Variable name to look up in the runtime context.
          sig { returns(String) }
          attr_accessor :name

          sig { returns(Symbol) }
          attr_accessor :type

          # Reference a dynamic variable by name.
          #
          # Resolved at runtime from the assistant's dynamic-variables context (see
          # `Assistant.dynamic_variables` and the dynamic-variables webhook).
          sig { params(name: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # Variable name to look up in the runtime context.
            name:,
            type: :variable
          )
          end

          sig { override.returns({ name: String, type: Symbol }) }
          def to_hash
          end
        end

        class StringLiteral < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Expression::StringLiteral,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # Literal string value.
          sig { returns(String) }
          attr_accessor :value

          # Constant string value.
          sig { params(value: String, type: Symbol).returns(T.attached_class) }
          def self.new(
            # Literal string value.
            value:,
            type: :string_literal
          )
          end

          sig { override.returns({ type: Symbol, value: String }) }
          def to_hash
          end
        end

        class NumberLiteral < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Expression::NumberLiteral,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # Literal numeric value.
          sig { returns(Float) }
          attr_accessor :value

          # Constant numeric value (float; integers are accepted and stored as float).
          sig { params(value: Float, type: Symbol).returns(T.attached_class) }
          def self.new(
            # Literal numeric value.
            value:,
            type: :number_literal
          )
          end

          sig { override.returns({ type: Symbol, value: Float }) }
          def to_hash
          end
        end

        class BoolLiteral < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Expression::BoolLiteral,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # Literal boolean value.
          sig { returns(T::Boolean) }
          attr_accessor :value

          # Constant boolean value. Useful for unconditional ('always') edges.
          sig do
            params(value: T::Boolean, type: Symbol).returns(T.attached_class)
          end
          def self.new(
            # Literal boolean value.
            value:,
            type: :bool_literal
          )
          end

          sig { override.returns({ type: Symbol, value: T::Boolean }) }
          def to_hash
          end
        end

        sig { override.returns(T::Array[Telnyx::AI::Expression::Variants]) }
        def self.variants
        end
      end
    end
  end
end
