# typed: strong

module Telnyx
  module Resources
    # Text to speech streaming command operations
    class TextToSpeech
      # Generate synthesized speech audio from text input. Returns audio in the
      # requested format (binary audio stream, base64-encoded JSON, or an audio URL for
      # later retrieval).
      #
      # Authentication is provided via the standard `Authorization: Bearer <API_KEY>`
      # header.
      #
      # The `voice` parameter provides a convenient shorthand to specify provider,
      # model, and voice in a single string (e.g. `telnyx.NaturalHD.Alloy` or
      # `Telnyx.Ultra.<voice_id>`). Alternatively, specify `provider` explicitly along
      # with provider-specific parameters.
      #
      # Supported providers: `aws`, `telnyx`, `azure`, `elevenlabs`, `minimax`, `rime`,
      # `resemble`, `xai`.
      #
      # The Telnyx `Ultra` model supports 44 languages with emotion control, speed
      # adjustment, and volume control. Use the `telnyx` provider-specific parameters to
      # configure these features.
      sig do
        params(
          aws: ::Telnyx::TextToSpeechCreateSpeechParams::Aws::OrHash,
          azure: ::Telnyx::TextToSpeechCreateSpeechParams::Azure::OrHash,
          disable_cache: T::Boolean,
          elevenlabs:
            ::Telnyx::TextToSpeechCreateSpeechParams::Elevenlabs::OrHash,
          language: String,
          minimax: ::Telnyx::TextToSpeechCreateSpeechParams::Minimax::OrHash,
          output_type:
            ::Telnyx::TextToSpeechCreateSpeechParams::OutputType::OrSymbol,
          provider:
            ::Telnyx::TextToSpeechCreateSpeechParams::Provider::OrSymbol,
          resemble: ::Telnyx::TextToSpeechCreateSpeechParams::Resemble::OrHash,
          rime: ::Telnyx::TextToSpeechCreateSpeechParams::Rime::OrHash,
          telnyx: ::Telnyx::TextToSpeechCreateSpeechParams::Telnyx::OrHash,
          text: String,
          text_type:
            ::Telnyx::TextToSpeechCreateSpeechParams::TextType::OrSymbol,
          voice: String,
          voice_settings: T::Hash[Symbol, T.anything],
          xai: ::Telnyx::TextToSpeechCreateSpeechParams::Xai::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TextToSpeechCreateSpeechResponse)
      end
      def create_speech(
        # AWS Polly provider-specific parameters.
        aws: nil,
        # Azure Cognitive Services provider-specific parameters.
        azure: nil,
        # When `true`, bypass the audio cache and generate fresh audio.
        disable_cache: nil,
        # ElevenLabs provider-specific parameters.
        elevenlabs: nil,
        # Language code (e.g. `en-US`). Usage varies by provider.
        language: nil,
        # Minimax provider-specific parameters.
        minimax: nil,
        # Determines the response format. `binary_output` returns raw audio bytes,
        # `base64_output` returns base64-encoded audio in JSON.
        output_type: nil,
        # TTS provider. Required unless `voice` is provided.
        provider: nil,
        # Resemble AI provider-specific parameters.
        resemble: nil,
        # Rime provider-specific parameters.
        rime: nil,
        # Telnyx provider-specific parameters. Use `voice_speed` and `temperature` for
        # `Natural` and `NaturalHD` models. For the `Ultra` model, use `voice_speed`,
        # `volume`, and `emotion`.
        telnyx: nil,
        # The text to convert to speech.
        text: nil,
        # Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
        text_type: nil,
        # Voice identifier in the format `provider.model_id.voice_id` or
        # `provider.voice_id`. Examples: `telnyx.NaturalHD.Alloy`,
        # `Telnyx.Ultra.<voice_id>`, `azure.en-US-AvaMultilingualNeural`,
        # `aws.Polly.Generative.Lucia`. When provided, `provider`, `model_id`, and
        # `voice_id` are extracted automatically and take precedence over individual
        # parameters.
        voice: nil,
        # Provider-specific voice settings. Contents vary by provider — see
        # provider-specific parameter objects below.
        voice_settings: nil,
        # xAI provider-specific parameters.
        xai: nil,
        request_options: {}
      )
      end

      # Open a WebSocket connection to stream text and receive synthesized audio in real
      # time. Authentication is provided via the standard
      # `Authorization: Bearer <API_KEY>` header. Send JSON frames with text to
      # synthesize; receive JSON frames containing base64-encoded audio chunks.
      #
      # Supported providers: `aws`, `telnyx`, `azure`, `murfai`, `minimax`, `rime`,
      # `resemble`, `elevenlabs`, `xai`.
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
      # **Note:** The Telnyx `Ultra` model is not available over WebSocket. Use the HTTP
      # POST `/text-to-speech/speech` endpoint instead.
      sig do
        params(
          audio_format:
            Telnyx::TextToSpeechGenerateSpeechParams::AudioFormat::OrSymbol,
          disable_cache: T::Boolean,
          model_id: String,
          provider:
            Telnyx::TextToSpeechGenerateSpeechParams::Provider::OrSymbol,
          socket_id: String,
          voice: String,
          voice_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def generate_speech(
        # Audio output format override. Supported for Telnyx models. `pcm` and `wav` are
        # available for `Natural`/`NaturalHD` models. The `Ultra` model outputs PCM at
        # 24kHz s16le or MP3 at 128kbps 24kHz.
        audio_format: nil,
        # When `true`, bypass the audio cache and generate fresh audio.
        disable_cache: nil,
        # Model identifier for the chosen provider. Examples: `Natural`, `NaturalHD`,
        # `Ultra` (Telnyx); `Polly.Generative` (AWS).
        model_id: nil,
        # TTS provider. Defaults to `telnyx` if not specified. Ignored when `voice` is
        # provided.
        provider: nil,
        # Client-provided socket identifier for tracking. If not provided, one is
        # generated server-side.
        socket_id: nil,
        # Voice identifier in the format `provider.model_id.voice_id` or
        # `provider.voice_id` (e.g. `telnyx.NaturalHD.Telnyx_Alloy`,
        # `Telnyx.Ultra.<voice_id>`, or `azure.en-US-AvaMultilingualNeural`). When
        # provided, the `provider`, `model_id`, and `voice_id` are extracted
        # automatically. Takes precedence over individual `provider`/`model_id`/`voice_id`
        # parameters.
        voice: nil,
        # Voice identifier for the chosen provider.
        voice_id: nil,
        request_options: {}
      )
      end

      # Retrieve a list of available voices from one or all TTS providers. When
      # `provider` is specified, returns voices for that provider only. Otherwise,
      # returns voices from all providers.
      #
      # Some providers (ElevenLabs, Resemble) require an API key to list voices.
      sig do
        params(
          api_key: String,
          provider: Telnyx::TextToSpeechListVoicesParams::Provider::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TextToSpeechListVoicesResponse)
      end
      def list_voices(
        # API key for providers that require one to list voices (e.g. ElevenLabs).
        api_key: nil,
        # Filter voices by provider. If omitted, voices from all providers are returned.
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
