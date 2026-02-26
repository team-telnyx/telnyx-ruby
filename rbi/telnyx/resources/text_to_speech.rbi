# typed: strong

module Telnyx
  module Resources
    class TextToSpeech
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

      # Open a WebSocket connection to stream text and receive synthesized audio in real
      # time. Authentication is provided via the standard
      # `Authorization: Bearer <API_KEY>` header. Send JSON frames with text to
      # synthesize; receive JSON frames containing base64-encoded audio chunks.
      #
      # Supported providers: `aws`, `telnyx`, `azure`, `murfai`, `minimax`, `rime`,
      # `resemble`, `elevenlabs`.
      #
      # **Connection flow:**
      #
      # 1. Open WebSocket with query parameters specifying provider, voice, and model.
      # 2. Send an initial handshake message `{"text": " "}` (single space) with
      #    optional `voice_settings` to initialize the session.
      # 3. Send text messages as `{"text": "Hello world"}`.
      # 4. Receive audio chunks as JSON frames with base64-encoded audio.
      # 5. A final frame with `isFinal: true` indicates the end of audio for the current
      #    text.
      #
      # To interrupt and restart synthesis mid-stream, send `{"force": true}` — the
      # current worker is stopped and a new one is started.
      sig do
        params(
          audio_format: Telnyx::TextToSpeechStreamParams::AudioFormat::OrSymbol,
          disable_cache: T::Boolean,
          model_id: String,
          provider: Telnyx::TextToSpeechStreamParams::Provider::OrSymbol,
          socket_id: String,
          voice: String,
          voice_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def stream(
        # Audio output format override. Supported for Telnyx `Natural`/`NaturalHD` models
        # only. Accepted values: `pcm`, `wav`.
        audio_format: nil,
        # When `true`, bypass the audio cache and generate fresh audio.
        disable_cache: nil,
        # Model identifier for the chosen provider. Examples: `Natural`, `NaturalHD`
        # (Telnyx); `Polly.Generative` (AWS).
        model_id: nil,
        # TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is
        # provided.
        provider: nil,
        # Client-provided socket identifier for tracking. If not provided, one is
        # generated server-side.
        socket_id: nil,
        # Voice identifier in the format `provider.model_id.voice_id` or
        # `provider.voice_id` (e.g. `telnyx.NaturalHD.Telnyx_Alloy` or
        # `azure.en-US-AvaMultilingualNeural`). When provided, the `provider`, `model_id`,
        # and `voice_id` are extracted automatically. Takes precedence over individual
        # `provider`/`model_id`/`voice_id` parameters.
        voice: nil,
        # Voice identifier for the chosen provider.
        voice_id: nil,
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
