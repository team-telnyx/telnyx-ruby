# typed: strong

module Telnyx
  module Models
    class MinimaxVoiceSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::MinimaxVoiceSettings, Telnyx::Internal::AnyHash)
        end

      # Voice settings provider type
      sig { returns(Telnyx::MinimaxVoiceSettings::Type::OrSymbol) }
      attr_accessor :type

      # Voice pitch adjustment. Default is 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :pitch

      sig { params(pitch: Integer).void }
      attr_writer :pitch

      # Speech speed multiplier. Default is 1.0.
      sig { returns(T.nilable(Float)) }
      attr_reader :speed

      sig { params(speed: Float).void }
      attr_writer :speed

      # Speech volume multiplier. Default is 1.0.
      sig { returns(T.nilable(Float)) }
      attr_reader :vol

      sig { params(vol: Float).void }
      attr_writer :vol

      sig do
        params(
          type: Telnyx::MinimaxVoiceSettings::Type::OrSymbol,
          pitch: Integer,
          speed: Float,
          vol: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Voice settings provider type
        type:,
        # Voice pitch adjustment. Default is 0.
        pitch: nil,
        # Speech speed multiplier. Default is 1.0.
        speed: nil,
        # Speech volume multiplier. Default is 1.0.
        vol: nil
      )
      end

      sig do
        override.returns(
          {
            type: Telnyx::MinimaxVoiceSettings::Type::OrSymbol,
            pitch: Integer,
            speed: Float,
            vol: Float
          }
        )
      end
      def to_hash
      end

      # Voice settings provider type
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::MinimaxVoiceSettings::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMAX =
          T.let(:minimax, Telnyx::MinimaxVoiceSettings::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::MinimaxVoiceSettings::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
