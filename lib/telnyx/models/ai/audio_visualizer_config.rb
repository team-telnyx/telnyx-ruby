# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class AudioVisualizerConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute color
        #   The color theme for the audio visualizer.
        #
        #   @return [Symbol, Telnyx::Models::AI::AudioVisualizerConfig::Color, nil]
        optional :color, enum: -> { Telnyx::AI::AudioVisualizerConfig::Color }

        # @!attribute preset
        #   The preset style for the audio visualizer.
        #
        #   @return [String, nil]
        optional :preset, String

        # @!method initialize(color: nil, preset: nil)
        #   @param color [Symbol, Telnyx::Models::AI::AudioVisualizerConfig::Color] The color theme for the audio visualizer.
        #
        #   @param preset [String] The preset style for the audio visualizer.

        # The color theme for the audio visualizer.
        #
        # @see Telnyx::Models::AI::AudioVisualizerConfig#color
        module Color
          extend Telnyx::Internal::Type::Enum

          VERDANT = :verdant
          TWILIGHT = :twilight
          BLOOM = :bloom
          MYSTIC = :mystic
          FLARE = :flare
          GLACIER = :glacier

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
