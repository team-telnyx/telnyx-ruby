# typed: strong

module Telnyx
  module Models
    class TextToSpeechGenerateSpeechParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TextToSpeechGenerateSpeechParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The text to convert to speech
      sig { returns(String) }
      attr_accessor :text

      # The voice ID in the format Provider.ModelId.VoiceId.
      #
      # Examples:
      #
      # - AWS.Polly.Joanna-Neural
      # - Azure.en-US-AvaMultilingualNeural
      # - ElevenLabs.eleven_multilingual_v2.Rachel
      # - Telnyx.KokoroTTS.af
      #
      # Use the `GET /text-to-speech/voices` endpoint to get a complete list of
      # available voices.
      sig { returns(String) }
      attr_accessor :voice

      sig do
        params(
          text: String,
          voice: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The text to convert to speech
        text:,
        # The voice ID in the format Provider.ModelId.VoiceId.
        #
        # Examples:
        #
        # - AWS.Polly.Joanna-Neural
        # - Azure.en-US-AvaMultilingualNeural
        # - ElevenLabs.eleven_multilingual_v2.Rachel
        # - Telnyx.KokoroTTS.af
        #
        # Use the `GET /text-to-speech/voices` endpoint to get a complete list of
        # available voices.
        voice:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            text: String,
            voice: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
