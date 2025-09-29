# frozen_string_literal: true

module Telnyx
  module Internal
    module Type
      # @api private
      #
      # @abstract
      #
      # @generic Elem
      #
      # Hash of items of a given type.
      class HashOf
        include Telnyx::Internal::Type::Converter
        include Telnyx::Internal::Util::SorbetRuntimeSupport

        private_class_method :new

        # @overload [](type_info, spec = {})
        #
        # @param type_info [Hash{Symbol=>Object}, Proc, Telnyx::Internal::Type::Converter, Class]
        #
        # @param spec [Hash{Symbol=>Object}] .
        #
        #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
        #
        #   @option spec [Proc] :enum
        #
        #   @option spec [Proc] :union
        #
        #   @option spec [Boolean] :"nil?"
        #
        # @return [self]
        def self.[](...) = new(...)

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def ===(other)
          type = item_type
          case other
          in Hash
            other.all? do |key, val|
              case [key, val]
              in [Symbol | String, ^type]
                true
              else
                false
              end
            end
          else
            false
          end
        end

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other)
          # rubocop:disable Layout/LineLength
          other.is_a?(Telnyx::Internal::Type::HashOf) && other.nilable? == nilable? && other.item_type == item_type
          # rubocop:enable Layout/LineLength
        end

        # @api public
        #
        # @return [Integer]
        def hash = [self.class, item_type].hash

        # @api private
        #
        # @param value [Hash{Object=>Object}, Object]
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
        # @return [Hash{Symbol=>Object}, Object]
        def coerce(value, state:)
          exactness = state.fetch(:exactness)

          unless value.is_a?(Hash)
            exactness[:no] += 1
            state[:error] = TypeError.new("#{value.class} can't be coerced into #{Hash}")
            return value
          end

          target = item_type
          exactness[:yes] += 1
          value
            .to_h do |key, val|
              k = key.is_a?(String) ? key.to_sym : key
              v =
                case [nilable?, val]
                in [true, nil]
                  exactness[:yes] += 1
                  nil
                else
                  Telnyx::Internal::Type::Converter.coerce(target, val, state: state)
                end

              exactness[:no] += 1 unless k.is_a?(Symbol)
              [k, v]
            end
        end

        # @api private
        #
        # @param value [Hash{Object=>Object}, Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean] :can_retry
        #
        # @return [Hash{Symbol=>Object}, Object]
        def dump(value, state:)
          target = item_type
          if value.is_a?(Hash)
            value.transform_values do
              Telnyx::Internal::Type::Converter.dump(target, _1, state: state)
            end
          else
            super
          end
        end

        # @api private
        #
        # @return [Object]
        def to_sorbet_type
          T::Hash[Telnyx::Internal::Util::SorbetRuntimeSupport.to_sorbet_type(item_type)]
        end

        # @api private
        #
        # @return [generic<Elem>]
        protected def item_type = @item_type_fn.call

        # @api private
        #
        # @return [Boolean]
        protected def nilable? = @nilable

        # @api private
        #
        # @param type_info [Hash{Symbol=>Object}, Proc, Telnyx::Internal::Type::Converter, Class]
        #
        # @param spec [Hash{Symbol=>Object}] .
        #
        #   @option spec [NilClass, TrueClass, FalseClass, Integer, Float, Symbol] :const
        #
        #   @option spec [Proc] :enum
        #
        #   @option spec [Proc] :union
        #
        #   @option spec [Boolean] :"nil?"
        def initialize(type_info, spec = {})
          @item_type_fn = Telnyx::Internal::Type::Converter.type_info(type_info || spec)
          @meta = Telnyx::Internal::Type::Converter.meta_info(type_info, spec)
          @nilable = spec.fetch(:nil?, false)
        end

        # @api private
        #
        # @param depth [Integer]
        #
        # @return [String]
        def inspect(depth: 0)
          items = Telnyx::Internal::Type::Converter.inspect(item_type, depth: depth.succ)

          "#{self.class}[#{[items, nilable? ? 'nil' : nil].compact.join(' | ')}]"
        end
      end
    end
  end
end
