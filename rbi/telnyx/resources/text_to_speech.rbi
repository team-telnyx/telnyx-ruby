# typed: strong

module Telnyx
  module Resources
    class TextToSpeech
      # Converts the provided text to speech using the specified voice and returns audio
      # data
      sig do
        params(
          text: String,
          voice: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def generate_speech(
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

      # Returns a list of voices that can be used with the text to speech commands.
      sig do
        params(
          elevenlabs_api_key_ref: String,
          provider: Telnyx::TextToSpeechListVoicesParams::Provider::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TextToSpeechListVoicesResponse)
      end
      def list_voices(
        # Reference to your ElevenLabs API key stored in the Telnyx Portal
        elevenlabs_api_key_ref: nil,
        # Filter voices by provider
        provider: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
