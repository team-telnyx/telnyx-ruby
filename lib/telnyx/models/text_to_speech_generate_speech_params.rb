# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TextToSpeech#generate_speech
    class TextToSpeechGenerateSpeechParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute text
      #   The text to convert to speech
      #
      #   @return [String]
      required :text, String

      # @!attribute voice
      #   The voice ID in the format Provider.ModelId.VoiceId.
      #
      #   Examples:
      #
      #   - AWS.Polly.Joanna-Neural
      #   - Azure.en-US-AvaMultilingualNeural
      #   - ElevenLabs.eleven_multilingual_v2.Rachel
      #   - Telnyx.KokoroTTS.af
      #
      #   Use the `GET /text-to-speech/voices` endpoint to get a complete list of
      #   available voices.
      #
      #   @return [String]
      required :voice, String

      # @!method initialize(text:, voice:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TextToSpeechGenerateSpeechParams} for more details.
      #
      #   @param text [String] The text to convert to speech
      #
      #   @param voice [String] The voice ID in the format Provider.ModelId.VoiceId.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
