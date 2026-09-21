# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NoiseSuppressionEngines#list
    class NoiseSuppressionEngineListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NoiseSuppressionEngineListResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NoiseSuppressionEngineListResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::NoiseSuppressionEngineListResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute default_attenuation_level
        #   Default attenuation level of the engine (0-100, in multiples of ten).
        #
        #   @return [Integer]
        required :default_attenuation_level, Integer

        # @!attribute label
        #   Human-readable name of the engine.
        #
        #   @return [String]
        required :label, String

        # @!attribute value
        #   Machine-readable identifier of the engine, used when configuring noise
        #   suppression.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(default_attenuation_level:, label:, value:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::NoiseSuppressionEngineListResponse::Data} for more details.
        #
        #   A noise suppression engine available to the authenticated user.
        #
        #   @param default_attenuation_level [Integer] Default attenuation level of the engine (0-100, in multiples of ten).
        #
        #   @param label [String] Human-readable name of the engine.
        #
        #   @param value [String] Machine-readable identifier of the engine, used when configuring noise suppressi
      end
    end
  end
end
