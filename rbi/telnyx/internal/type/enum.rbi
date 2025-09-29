# typed: strong

module Telnyx
  module Internal
    module Type
      # @api private
      #
      # A value from among a specified list of options. OpenAPI enum values map to Ruby
      # values in the SDK as follows:
      #
      # 1. boolean => true | false
      # 2. integer => Integer
      # 3. float => Float
      # 4. string => Symbol
      #
      # We can therefore convert string values to Symbols, but can't convert other
      # values safely.
      module Enum
        include Telnyx::Internal::Type::Converter
        include Telnyx::Internal::Util::SorbetRuntimeSupport

        # All of the valid Symbol values for this enum.
        sig do
          overridable.returns(
            T::Array[T.any(NilClass, T::Boolean, Integer, Float, Symbol)]
          )
        end
        def values
        end

        sig { params(other: T.anything).returns(T::Boolean) }
        def ===(other)
        end

        sig { params(other: T.anything).returns(T::Boolean) }
        def ==(other)
        end

        sig { returns(Integer) }
        def hash
        end

        # @api private
        #
        # Unlike with primitives, `Enum` additionally validates that the value is a member
        # of the enum.
        sig do
          override
            .params(
              value: T.any(String, Symbol, T.anything),
              state: Telnyx::Internal::Type::Converter::CoerceState
            )
            .returns(T.any(Symbol, T.anything))
        end
        def coerce(value, state:)
        end

        # @api private
        sig do
          override
            .params(
              value: T.any(Symbol, T.anything),
              state: Telnyx::Internal::Type::Converter::DumpState
            )
            .returns(T.any(Symbol, T.anything))
        end
        def dump(value, state:)
        end

        # @api private
        sig { returns(T.anything) }
        def to_sorbet_type
        end

        # @api private
        sig { params(depth: Integer).returns(String) }
        def inspect(depth: 0)
        end
      end
    end
  end
end
