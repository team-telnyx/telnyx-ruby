# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TextToSpeech#list_voices
    class TextToSpeechListVoicesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute voices
      #
      #   @return [Array<Telnyx::Models::TextToSpeechListVoicesResponse::Voice>, nil]
      optional :voices,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TextToSpeechListVoicesResponse::Voice] }

      # @!method initialize(voices: nil)
      #   List of available voices.
      #
      #   @param voices [Array<Telnyx::Models::TextToSpeechListVoicesResponse::Voice>]

      class Voice < Telnyx::Internal::Type::BaseModel
        # @!attribute gender
        #   Voice gender.
        #
        #   @return [String, nil]
        optional :gender, String

        # @!attribute language
        #   Language code.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute name
        #   Voice name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute provider
        #   The TTS provider.
        #
        #   @return [String, nil]
        optional :provider, String

        # @!attribute voice_id
        #   Voice identifier.
        #
        #   @return [String, nil]
        optional :voice_id, String

        # @!method initialize(gender: nil, language: nil, name: nil, provider: nil, voice_id: nil)
        #   A voice available for text-to-speech synthesis.
        #
        #   @param gender [String] Voice gender.
        #
        #   @param language [String] Language code.
        #
        #   @param name [String] Voice name.
        #
        #   @param provider [String] The TTS provider.
        #
        #   @param voice_id [String] Voice identifier.
      end
    end
  end
end
