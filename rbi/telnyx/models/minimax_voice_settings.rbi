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

      # Enhances recognition for specific languages and dialects during MiniMax TTS
      # synthesis. Default is null (no boost). Set to 'auto' for automatic language
      # detection.
      sig do
        returns(
          T.nilable(Telnyx::MinimaxVoiceSettings::LanguageBoost::OrSymbol)
        )
      end
      attr_accessor :language_boost

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
          language_boost:
            T.nilable(Telnyx::MinimaxVoiceSettings::LanguageBoost::OrSymbol),
          pitch: Integer,
          speed: Float,
          vol: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Voice settings provider type
        type:,
        # Enhances recognition for specific languages and dialects during MiniMax TTS
        # synthesis. Default is null (no boost). Set to 'auto' for automatic language
        # detection.
        language_boost: nil,
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
            language_boost:
              T.nilable(Telnyx::MinimaxVoiceSettings::LanguageBoost::OrSymbol),
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

      # Enhances recognition for specific languages and dialects during MiniMax TTS
      # synthesis. Default is null (no boost). Set to 'auto' for automatic language
      # detection.
      module LanguageBoost
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MinimaxVoiceSettings::LanguageBoost)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTO =
          T.let(
            :auto,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        CHINESE =
          T.let(
            :Chinese,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        CHINESE_YUE =
          T.let(
            :"Chinese,Yue",
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :English,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        ARABIC =
          T.let(
            :Arabic,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :Russian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        SPANISH =
          T.let(
            :Spanish,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        FRENCH =
          T.let(
            :French,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :Portuguese,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        GERMAN =
          T.let(
            :German,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        TURKISH =
          T.let(
            :Turkish,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        DUTCH =
          T.let(
            :Dutch,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :Ukrainian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :Vietnamese,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :Indonesian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        JAPANESE =
          T.let(
            :Japanese,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :Italian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        KOREAN =
          T.let(
            :Korean,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        THAI =
          T.let(
            :Thai,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        POLISH =
          T.let(
            :Polish,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :Romanian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        GREEK =
          T.let(
            :Greek,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        CZECH =
          T.let(
            :Czech,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        FINNISH =
          T.let(
            :Finnish,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        HINDI =
          T.let(
            :Hindi,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :Bulgarian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        DANISH =
          T.let(
            :Danish,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        HEBREW =
          T.let(
            :Hebrew,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        MALAY =
          T.let(
            :Malay,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        PERSIAN =
          T.let(
            :Persian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :Slovak,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :Swedish,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :Croatian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        FILIPINO =
          T.let(
            :Filipino,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :Hungarian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :Norwegian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        SLOVENIAN =
          T.let(
            :Slovenian,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        CATALAN =
          T.let(
            :Catalan,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        NYNORSK =
          T.let(
            :Nynorsk,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        TAMIL =
          T.let(
            :Tamil,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )
        AFRIKAANS =
          T.let(
            :Afrikaans,
            Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::MinimaxVoiceSettings::LanguageBoost::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
