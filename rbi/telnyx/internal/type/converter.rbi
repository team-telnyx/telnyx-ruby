# typed: strong

module Telnyx
  module Internal
    module Type
      # @api private
      module Converter
        extend Telnyx::Internal::Util::SorbetRuntimeSupport

        Input =
          T.type_alias do
            T.any(Telnyx::Internal::Type::Converter, T::Class[T.anything])
          end

        CoerceState =
          T.type_alias do
            {
              translate_names: T::Boolean,
              strictness: T::Boolean,
              exactness: {
                yes: Integer,
                no: Integer,
                maybe: Integer
              },
              error: T::Class[StandardError],
              branched: Integer
            }
          end

        DumpState = T.type_alias { { can_retry: T::Boolean } }

        # @api private
        sig do
          overridable
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
          overridable
            .params(
              value: T.anything,
              state: Telnyx::Internal::Type::Converter::DumpState
            )
            .returns(T.anything)
        end
        def dump(value, state:)
        end

        # @api private
        sig { params(depth: Integer).returns(String) }
        def inspect(depth: 0)
        end

        class << self
          # @api private
          sig do
            params(
              spec:
                T.any(
                  {
                    const:
                      T.nilable(
                        T.any(NilClass, T::Boolean, Integer, Float, Symbol)
                      ),
                    enum:
                      T.nilable(
                        T.proc.returns(Telnyx::Internal::Type::Converter::Input)
                      ),
                    union:
                      T.nilable(
                        T.proc.returns(Telnyx::Internal::Type::Converter::Input)
                      )
                  },
                  T.proc.returns(Telnyx::Internal::Type::Converter::Input),
                  Telnyx::Internal::Type::Converter::Input
                )
            ).returns(T.proc.returns(T.anything))
          end
          def self.type_info(spec)
          end

          # @api private
          sig do
            params(
              type_info:
                T.any(
                  {
                    const:
                      T.nilable(
                        T.any(NilClass, T::Boolean, Integer, Float, Symbol)
                      ),
                    enum:
                      T.nilable(
                        T.proc.returns(Telnyx::Internal::Type::Converter::Input)
                      ),
                    union:
                      T.nilable(
                        T.proc.returns(Telnyx::Internal::Type::Converter::Input)
                      )
                  },
                  T.proc.returns(Telnyx::Internal::Type::Converter::Input),
                  Telnyx::Internal::Type::Converter::Input
                ),
              spec:
                T.any(
                  {
                    const:
                      T.nilable(
                        T.any(NilClass, T::Boolean, Integer, Float, Symbol)
                      ),
                    enum:
                      T.nilable(
                        T.proc.returns(Telnyx::Internal::Type::Converter::Input)
                      ),
                    union:
                      T.nilable(
                        T.proc.returns(Telnyx::Internal::Type::Converter::Input)
                      )
                  },
                  T.proc.returns(Telnyx::Internal::Type::Converter::Input),
                  Telnyx::Internal::Type::Converter::Input
                )
            ).returns(Telnyx::Internal::AnyHash)
          end
          def self.meta_info(type_info, spec)
          end

          # @api private
          sig do
            params(translate_names: T::Boolean).returns(
              Telnyx::Internal::Type::Converter::CoerceState
            )
          end
          def self.new_coerce_state(translate_names: true)
          end

          # @api private
          #
          # Based on `target`, transform `value` into `target`, to the extent possible:
          #
          # 1. if the given `value` conforms to `target` already, return the given `value`
          # 2. if it's possible and safe to convert the given `value` to `target`, then the
          #    converted value
          # 3. otherwise, the given `value` unaltered
          #
          # The coercion process is subject to improvement between minor release versions.
          # See https://docs.pydantic.dev/latest/concepts/unions/#smart-mode
          sig do
            params(
              target: Telnyx::Internal::Type::Converter::Input,
              value: T.anything,
              state: Telnyx::Internal::Type::Converter::CoerceState
            ).returns(T.anything)
          end
          def self.coerce(
            target,
            value,
            # The `strictness` is one of `true`, `false`. This informs the coercion strategy
            # when we have to decide between multiple possible conversion targets:
            #
            # - `true`: the conversion must be exact, with minimum coercion.
            # - `false`: the conversion can be approximate, with some coercion.
            #
            # The `exactness` is `Hash` with keys being one of `yes`, `no`, or `maybe`. For
            # any given conversion attempt, the exactness will be updated based on how closely
            # the value recursively matches the target type:
            #
            # - `yes`: the value can be converted to the target type with minimum coercion.
            # - `maybe`: the value can be converted to the target type with some reasonable
            #   coercion.
            # - `no`: the value cannot be converted to the target type.
            #
            # See implementation below for more details.
            state: Telnyx::Internal::Type::Converter.new_coerce_state
          )
          end

          # @api private
          sig do
            params(
              target: Telnyx::Internal::Type::Converter::Input,
              value: T.anything,
              state: Telnyx::Internal::Type::Converter::DumpState
            ).returns(T.anything)
          end
          def self.dump(target, value, state: { can_retry: true })
          end

          # @api private
          sig { params(target: T.anything, depth: Integer).returns(String) }
          def self.inspect(target, depth:)
          end
        end
      end
    end
  end
end
