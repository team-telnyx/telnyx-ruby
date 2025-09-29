# frozen_string_literal: true

module Telnyx
  module Internal
    module Type
      # @api private
      module Converter
        extend Telnyx::Internal::Util::SorbetRuntimeSupport

        # rubocop:disable Lint/UnusedMethodArgument

        # @api private
        #
        # @param value [Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean] :translate_names
        #
        #   @option state [Boolean] :strictness
        #
        #   @option state [Hash{Symbol=>Object}] :exactness
        #
        #   @option state [Class<StandardError>] :error
        #
        #   @option state [Integer] :branched
        #
        # @return [Object]
        def coerce(value, state:) = (raise NotImplementedError)

        # @api private
        #
        # @param value [Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean] :can_retry
        #
        # @return [Object]
        def dump(value, state:)
          case value
          in Array
            value.map { Telnyx::Internal::Type::Unknown.dump(_1, state: state) }
          in Hash
            value.transform_values { Telnyx::Internal::Type::Unknown.dump(_1, state: state) }
          in Telnyx::Internal::Type::BaseModel
            value.class.dump(value, state: state)
          in StringIO
            value.string
          in Pathname | IO
            state[:can_retry] = false if value.is_a?(IO)
            Telnyx::FilePart.new(value)
          in Telnyx::FilePart
            state[:can_retry] = false if value.content.is_a?(IO)
            value
          else
            value
          end
        end

        # @api private
        #
        # @param depth [Integer]
        #
        # @return [String]
        def inspect(depth: 0)
          super()
        end

        # rubocop:enable Lint/UnusedMethodArgument

        class << self
          # @api private
          #
          # @param spec [Hash{Symbol=>Object}, Proc, Telnyx::Internal::Type::Converter, Class] .
          #
          #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
          #
          #   @option spec [Proc] :enum
          #
          #   @option spec [Proc] :union
          #
          #   @option spec [Boolean] :"nil?"
          #
          # @return [Proc]
          def type_info(spec)
            case spec
            in Proc
              spec
            in Hash
              type_info(spec.slice(:const, :enum, :union).first&.last)
            in true | false
              -> { Telnyx::Internal::Type::Boolean }
            in Telnyx::Internal::Type::Converter | Class | Symbol
              -> { spec }
            in NilClass | Integer | Float
              -> { spec.class }
            end
          end

          # @api private
          #
          # @param type_info [Hash{Symbol=>Object}, Proc, Telnyx::Internal::Type::Converter, Class] .
          #
          #   @option type_info [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
          #
          #   @option type_info [Proc] :enum
          #
          #   @option type_info [Proc] :union
          #
          #   @option type_info [Boolean] :"nil?"
          #
          # @param spec [Hash{Symbol=>Object}, Proc, Telnyx::Internal::Type::Converter, Class] .
          #
          #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
          #
          #   @option spec [Proc] :enum
          #
          #   @option spec [Proc] :union
          #
          #   @option spec [Boolean] :"nil?"
          #
          # @return [Hash{Symbol=>Object}]
          def meta_info(type_info, spec)
            [spec, type_info].grep(Hash).first.to_h.except(:const, :enum, :union, :nil?)
          end

          # @api private
          #
          # @param translate_names [Boolean]
          #
          # @return [Hash{Symbol=>Object}]
          def new_coerce_state(translate_names: true)
            {
              translate_names: translate_names,
              strictness: true,
              exactness: {yes: 0, no: 0, maybe: 0},
              error: nil,
              branched: 0
            }
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
          #
          # @param target [Telnyx::Internal::Type::Converter, Class]
          #
          # @param value [Object]
          #
          # @param state [Hash{Symbol=>Object}] The `strictness` is one of `true`, `false`. This informs the coercion strategy
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
          #
          #   @option state [Boolean] :translate_names
          #
          #   @option state [Boolean] :strictness
          #
          #   @option state [Hash{Symbol=>Object}] :exactness
          #
          #   @option state [Class<StandardError>] :error
          #
          #   @option state [Integer] :branched
          #
          # @return [Object]
          def coerce(target, value, state: Telnyx::Internal::Type::Converter.new_coerce_state)
            # rubocop:disable Metrics/BlockNesting
            exactness = state.fetch(:exactness)

            case target
            in Telnyx::Internal::Type::Converter
              return target.coerce(value, state: state)
            in Class
              if value.is_a?(target)
                exactness[:yes] += 1
                return value
              end

              case target
              in -> { _1 <= NilClass }
                exactness[value.nil? ? :yes : :maybe] += 1
                return nil
              in -> { _1 <= Integer }
                case value
                in Integer
                  exactness[:yes] += 1
                  return value
                else
                  Kernel.then do
                    return Integer(value).tap { exactness[:maybe] += 1 }
                  rescue ArgumentError, TypeError => e
                    state[:error] = e
                  end
                end
              in -> { _1 <= Float }
                if value.is_a?(Numeric)
                  exactness[:yes] += 1
                  return Float(value)
                else
                  Kernel.then do
                    return Float(value).tap { exactness[:maybe] += 1 }
                  rescue ArgumentError, TypeError => e
                    state[:error] = e
                  end
                end
              in -> { _1 <= String }
                case value
                in String | Symbol | Numeric
                  exactness[value.is_a?(Numeric) ? :maybe : :yes] += 1
                  return value.to_s
                in StringIO
                  exactness[:yes] += 1
                  return value.string
                else
                  state[:error] = TypeError.new("#{value.class} can't be coerced into #{String}")
                end
              in -> { _1 <= Date || _1 <= Time }
                Kernel.then do
                  return target.parse(value).tap { exactness[:yes] += 1 }
                rescue ArgumentError, TypeError => e
                  state[:error] = e
                end
              in -> { _1 <= StringIO } if value.is_a?(String)
                exactness[:yes] += 1
                return StringIO.new(value.b)
              else
              end
            in Symbol
              case value
              in Symbol | String
                if value.to_sym == target
                  exactness[:yes] += 1
                  return target
                else
                  exactness[:maybe] += 1
                  return value
                end
              else
                message = "cannot convert non-matching #{value.class} into #{target.inspect}"
                state[:error] = ArgumentError.new(message)
              end
            else
            end

            exactness[:no] += 1
            value
            # rubocop:enable Metrics/BlockNesting
          end

          # @api private
          #
          # @param target [Telnyx::Internal::Type::Converter, Class]
          #
          # @param value [Object]
          #
          # @param state [Hash{Symbol=>Object}] .
          #
          #   @option state [Boolean] :can_retry
          #
          # @return [Object]
          def dump(target, value, state: {can_retry: true})
            case target
            in Telnyx::Internal::Type::Converter
              target.dump(value, state: state)
            else
              Telnyx::Internal::Type::Unknown.dump(value, state: state)
            end
          end

          # @api private
          #
          # @param target [Object]
          # @param depth [Integer]
          #
          # @return [String]
          def inspect(target, depth:)
            case target
            in Telnyx::Internal::Type::Converter
              target.inspect(depth: depth.succ)
            else
              target.inspect
            end
          end
        end

        define_sorbet_constant!(:Input) do
          T.type_alias { T.any(Telnyx::Internal::Type::Converter, T::Class[T.anything]) }
        end
        define_sorbet_constant!(:CoerceState) do
          T.type_alias do
            {
              translate_names: T::Boolean,
              strictness: T::Boolean,
              exactness: {yes: Integer, no: Integer, maybe: Integer},
              error: T::Class[StandardError],
              branched: Integer
            }
          end
        end
        define_sorbet_constant!(:DumpState) do
          T.type_alias { {can_retry: T::Boolean} }
        end
      end
    end
  end
end
