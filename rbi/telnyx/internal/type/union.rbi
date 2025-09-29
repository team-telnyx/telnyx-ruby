# typed: strong

module Telnyx
  module Internal
    module Type
      # @api private
      module Union
        include Telnyx::Internal::Type::Converter
        include Telnyx::Internal::Util::SorbetRuntimeSupport

        # @api private
        #
        # All of the specified variant info for this union.
        sig do
          returns(
            T::Array[
              [
                T.nilable(Symbol),
                T.proc.returns(Telnyx::Internal::Type::Converter::Input),
                Telnyx::Internal::AnyHash
              ]
            ]
          )
        end
        private def known_variants
        end

        # @api private
        sig do
          returns(
            T::Array[[T.nilable(Symbol), T.anything, Telnyx::Internal::AnyHash]]
          )
        end
        protected def derefed_variants
        end

        # All of the specified variants for this union.
        sig { overridable.returns(T::Array[T.anything]) }
        def variants
        end

        # @api private
        sig { params(property: Symbol).void }
        private def discriminator(property)
        end

        # @api private
        sig do
          params(
            key:
              T.any(
                Symbol,
                Telnyx::Internal::AnyHash,
                T.proc.returns(T.anything),
                T.anything
              ),
            spec:
              T.any(
                Telnyx::Internal::AnyHash,
                T.proc.returns(T.anything),
                T.anything
              )
          ).void
        end
        private def variant(key, spec = nil)
        end

        # @api private
        sig { params(value: T.anything).returns(T.nilable(T.anything)) }
        private def resolve_variant(value)
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
        # Tries to efficiently coerce the given value to one of the known variants.
        #
        # If the value cannot match any of the known variants, the coercion is considered
        # non-viable and returns the original value.
        sig do
          override
            .params(
              value: T.anything,
              state: Telnyx::Internal::Type::Converter::CoerceState
            )
            .returns(T.anything)
        end
        def coerce(value, state:)
        end

        # @api private
        sig do
          override
            .params(
              value: T.anything,
              state: Telnyx::Internal::Type::Converter::DumpState
            )
            .returns(T.anything)
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
