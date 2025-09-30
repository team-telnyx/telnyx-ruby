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
      # Array of items of a given type.
      class ArrayOf
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
        def ===(other) = other.is_a?(Array) && other.all?(item_type)

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other)
          # rubocop:disable Layout/LineLength
          other.is_a?(Telnyx::Internal::Type::ArrayOf) && other.nilable? == nilable? && other.item_type == item_type
          # rubocop:enable Layout/LineLength
        end

        # @api public
        #
        # @return [Integer]
        def hash = [self.class, item_type].hash

        # @api private
        #
        # @param value [Array<Object>, Object]
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
        # @return [Array<Object>, Object]
        def coerce(value, state:)
          exactness = state.fetch(:exactness)

          unless value.is_a?(Array)
            exactness[:no] += 1
            state[:error] = TypeError.new("#{value.class} can't be coerced into #{Array}")
            return value
          end

          target = item_type
          exactness[:yes] += 1
          value
            .map do |item|
              case [nilable?, item]
              in [true, nil]
                exactness[:yes] += 1
                nil
              else
                Telnyx::Internal::Type::Converter.coerce(target, item, state: state)
              end
            end
        end

        # @api private
        #
        # @param value [Array<Object>, Object]
        #
        # @param state [Hash{Symbol=>Object}] .
        #
        #   @option state [Boolean] :can_retry
        #
        # @return [Array<Object>, Object]
        def dump(value, state:)
          target = item_type
          if value.is_a?(Array)
            value.map do
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
          T::Array[Telnyx::Internal::Util::SorbetRuntimeSupport.to_sorbet_type(item_type)]
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
