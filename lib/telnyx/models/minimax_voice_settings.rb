# frozen_string_literal: true

module Telnyx
  module Models
    class MinimaxVoiceSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute type
      #   Voice settings provider type
      #
      #   @return [Symbol, Telnyx::Models::MinimaxVoiceSettings::Type]
      required :type, enum: -> { Telnyx::MinimaxVoiceSettings::Type }

      # @!attribute language_boost
      #   Enhances recognition for specific languages and dialects during MiniMax TTS
      #   synthesis. Default is null (no boost). Set to 'auto' for automatic language
      #   detection.
      #
      #   @return [Symbol, Telnyx::Models::MinimaxVoiceSettings::LanguageBoost, nil]
      optional :language_boost, enum: -> { Telnyx::MinimaxVoiceSettings::LanguageBoost }, nil?: true

      # @!attribute pitch
      #   Voice pitch adjustment. Default is 0.
      #
      #   @return [Integer, nil]
      optional :pitch, Integer

      # @!attribute speed
      #   Speech speed multiplier. Default is 1.0.
      #
      #   @return [Float, nil]
      optional :speed, Float

      # @!attribute vol
      #   Speech volume multiplier. Default is 1.0.
      #
      #   @return [Float, nil]
      optional :vol, Float

      # @!method initialize(type:, language_boost: nil, pitch: nil, speed: nil, vol: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MinimaxVoiceSettings} for more details.
      #
      #   @param type [Symbol, Telnyx::Models::MinimaxVoiceSettings::Type] Voice settings provider type
      #
      #   @param language_boost [Symbol, Telnyx::Models::MinimaxVoiceSettings::LanguageBoost, nil] Enhances recognition for specific languages and dialects during MiniMax TTS synt
      #
      #   @param pitch [Integer] Voice pitch adjustment. Default is 0.
      #
      #   @param speed [Float] Speech speed multiplier. Default is 1.0.
      #
      #   @param vol [Float] Speech volume multiplier. Default is 1.0.

      # Voice settings provider type
      #
      # @see Telnyx::Models::MinimaxVoiceSettings#type
      module Type
        extend Telnyx::Internal::Type::Enum

        MINIMAX = :minimax

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Enhances recognition for specific languages and dialects during MiniMax TTS
      # synthesis. Default is null (no boost). Set to 'auto' for automatic language
      # detection.
      #
      # @see Telnyx::Models::MinimaxVoiceSettings#language_boost
      module LanguageBoost
        extend Telnyx::Internal::Type::Enum

        AUTO = :auto
        CHINESE = :Chinese
        CHINESE_YUE = :"Chinese,Yue"
        ENGLISH = :English
        ARABIC = :Arabic
        RUSSIAN = :Russian
        SPANISH = :Spanish
        FRENCH = :French
        PORTUGUESE = :Portuguese
        GERMAN = :German
        TURKISH = :Turkish
        DUTCH = :Dutch
        UKRAINIAN = :Ukrainian
        VIETNAMESE = :Vietnamese
        INDONESIAN = :Indonesian
        JAPANESE = :Japanese
        ITALIAN = :Italian
        KOREAN = :Korean
        THAI = :Thai
        POLISH = :Polish
        ROMANIAN = :Romanian
        GREEK = :Greek
        CZECH = :Czech
        FINNISH = :Finnish
        HINDI = :Hindi
        BULGARIAN = :Bulgarian
        DANISH = :Danish
        HEBREW = :Hebrew
        MALAY = :Malay
        PERSIAN = :Persian
        SLOVAK = :Slovak
        SWEDISH = :Swedish
        CROATIAN = :Croatian
        FILIPINO = :Filipino
        HUNGARIAN = :Hungarian
        NORWEGIAN = :Norwegian
        SLOVENIAN = :Slovenian
        CATALAN = :Catalan
        NYNORSK = :Nynorsk
        TAMIL = :Tamil
        AFRIKAANS = :Afrikaans

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
