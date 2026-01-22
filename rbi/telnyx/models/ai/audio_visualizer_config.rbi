# typed: strong

module Telnyx
  module Models
    module AI
      class AudioVisualizerConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AudioVisualizerConfig, Telnyx::Internal::AnyHash)
          end

        # The color theme for the audio visualizer.
        sig do
          returns(T.nilable(Telnyx::AI::AudioVisualizerConfig::Color::OrSymbol))
        end
        attr_reader :color

        sig do
          params(color: Telnyx::AI::AudioVisualizerConfig::Color::OrSymbol).void
        end
        attr_writer :color

        # The preset style for the audio visualizer.
        sig { returns(T.nilable(String)) }
        attr_reader :preset

        sig { params(preset: String).void }
        attr_writer :preset

        sig do
          params(
            color: Telnyx::AI::AudioVisualizerConfig::Color::OrSymbol,
            preset: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The color theme for the audio visualizer.
          color: nil,
          # The preset style for the audio visualizer.
          preset: nil
        )
        end

        sig do
          override.returns(
            {
              color: Telnyx::AI::AudioVisualizerConfig::Color::OrSymbol,
              preset: String
            }
          )
        end
        def to_hash
        end

        # The color theme for the audio visualizer.
        module Color
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::AudioVisualizerConfig::Color)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VERDANT =
            T.let(
              :verdant,
              Telnyx::AI::AudioVisualizerConfig::Color::TaggedSymbol
            )
          TWILIGHT =
            T.let(
              :twilight,
              Telnyx::AI::AudioVisualizerConfig::Color::TaggedSymbol
            )
          BLOOM =
            T.let(
              :bloom,
              Telnyx::AI::AudioVisualizerConfig::Color::TaggedSymbol
            )
          MYSTIC =
            T.let(
              :mystic,
              Telnyx::AI::AudioVisualizerConfig::Color::TaggedSymbol
            )
          FLARE =
            T.let(
              :flare,
              Telnyx::AI::AudioVisualizerConfig::Color::TaggedSymbol
            )
          GLACIER =
            T.let(
              :glacier,
              Telnyx::AI::AudioVisualizerConfig::Color::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::AudioVisualizerConfig::Color::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
