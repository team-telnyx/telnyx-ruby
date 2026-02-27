# frozen_string_literal: true

module Telnyx
  module Resources
    class TextToSpeech
      # Retrieve a list of available voices from one or all TTS providers. When
      # `provider` is specified, returns voices for that provider only. Otherwise,
      # returns voices from all providers.
      #
      # Some providers (ElevenLabs, Resemble) require an API key to list voices.
      #
      # @overload list_voices(api_key: nil, provider: nil, request_options: {})
      #
      # @param api_key [String] API key for providers that require one to list voices (e.g. ElevenLabs).
      #
      # @param provider [Symbol, Telnyx::Models::TextToSpeechListVoicesParams::Provider] Filter voices by provider. If omitted, voices from all providers are returned.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TextToSpeechListVoicesResponse]
      #
      # @see Telnyx::Models::TextToSpeechListVoicesParams
      def list_voices(params = {})
        parsed, options = Telnyx::TextToSpeechListVoicesParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "text-to-speech/voices",
          query: query,
          model: Telnyx::Models::TextToSpeechListVoicesResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TextToSpeechStreamParams} for more details.
      #
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
      #
      # @overload stream(audio_format: nil, disable_cache: nil, model_id: nil, provider: nil, socket_id: nil, voice: nil, voice_id: nil, request_options: {})
      #
      # @param audio_format [Symbol, Telnyx::Models::TextToSpeechStreamParams::AudioFormat] Audio output format override. Supported for Telnyx `Natural`/`NaturalHD` models
      #
      # @param disable_cache [Boolean] When `true`, bypass the audio cache and generate fresh audio.
      #
      # @param model_id [String] Model identifier for the chosen provider. Examples: `Natural`, `NaturalHD` (Teln
      #
      # @param provider [Symbol, Telnyx::Models::TextToSpeechStreamParams::Provider] TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is pro
      #
      # @param socket_id [String] Client-provided socket identifier for tracking. If not provided, one is generate
      #
      # @param voice [String] Voice identifier in the format `provider.model_id.voice_id` or `provider.voice_i
      #
      # @param voice_id [String] Voice identifier for the chosen provider.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::TextToSpeechStreamParams
      def stream(params = {})
        parsed, options = Telnyx::TextToSpeechStreamParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "text-to-speech/speech",
          query: query,
          model: NilClass,
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
