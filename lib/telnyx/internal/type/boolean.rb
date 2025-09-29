# frozen_string_literal: true

module Telnyx
  module Internal
    module Type
      # @api private
      #
      # @abstract
      #
      # Ruby has no Boolean class; this is something for models to refer to.
      class Boolean
        extend Telnyx::Internal::Type::Converter
        extend Telnyx::Internal::Util::SorbetRuntimeSupport

        private_class_method :new

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def self.===(other) = other == true || other == false

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def self.==(other) = other.is_a?(Class) && other <= Telnyx::Internal::Type::Boolean

        class << self
          # @api private
          #
          # Coerce value to Boolean if possible, otherwise return the original value.
          #
          # @param value [Boolean, Object]
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
          # @return [Boolean, Object]
          def coerce(value, state:)
            state.fetch(:exactness)[value == true || value == false ? :yes : :no] += 1
            value
          end

          # @!method dump(value, state:)
          #   @api private
          #
          #   @param value [Boolean, Object]
          #
          #   @param state [Hash{Symbol=>Object}] .
          #
          #     @option state [Boolean] :can_retry
          #
          #   @return [Boolean, Object]

          # @api private
          #
          # @return [Object]
          def to_sorbet_type
            T::Boolean
          end
        end
      end
    end
  end
end
