# frozen_string_literal: true

module Telnyx
  module Resources
    class TextToSpeech
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TextToSpeechGenerateSpeechParams} for more details.
      #
      # Converts the provided text to speech using the specified voice and returns audio
      # data
      #
      # @overload generate_speech(text:, voice:, request_options: {})
      #
      # @param text [String] The text to convert to speech
      #
      # @param voice [String] The voice ID in the format Provider.ModelId.VoiceId.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Telnyx::Models::TextToSpeechGenerateSpeechParams
      def generate_speech(params)
        parsed, options = Telnyx::TextToSpeechGenerateSpeechParams.dump_request(params)
        @client.request(
          method: :post,
          path: "text-to-speech/speech",
          headers: {"accept" => "audio/mpeg"},
          body: parsed,
          model: StringIO,
          options: options
        )
      end

      # Returns a list of voices that can be used with the text to speech commands.
      #
      # @overload list_voices(elevenlabs_api_key_ref: nil, provider: nil, request_options: {})
      #
      # @param elevenlabs_api_key_ref [String] Reference to your ElevenLabs API key stored in the Telnyx Portal
      #
      # @param provider [Symbol, Telnyx::Models::TextToSpeechListVoicesParams::Provider] Filter voices by provider
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TextToSpeechListVoicesResponse]
      #
      # @see Telnyx::Models::TextToSpeechListVoicesParams
      def list_voices(params = {})
        parsed, options = Telnyx::TextToSpeechListVoicesParams.dump_request(params)
        @client.request(
          method: :get,
          path: "text-to-speech/voices",
          query: parsed,
          model: Telnyx::Models::TextToSpeechListVoicesResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
