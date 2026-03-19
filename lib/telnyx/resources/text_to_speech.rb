# frozen_string_literal: true

module Telnyx
  module Resources
    # Text to speech streaming command operations
    class TextToSpeech
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TextToSpeechGenerateParams} for more details.
      #
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
      # `resemble`.
      #
      # The Telnyx `Ultra` model supports 44 languages with emotion control, speed
      # adjustment, and volume control. Use the `telnyx` provider-specific parameters to
      # configure these features.
      #
      # @overload generate(aws: nil, azure: nil, disable_cache: nil, elevenlabs: nil, language: nil, minimax: nil, output_type: nil, provider: nil, resemble: nil, rime: nil, telnyx: nil, text: nil, text_type: nil, voice: nil, voice_settings: nil, request_options: {})
      #
      # @param aws [::Telnyx::Models::TextToSpeechGenerateParams::Aws] AWS Polly provider-specific parameters.
      #
      # @param azure [::Telnyx::Models::TextToSpeechGenerateParams::Azure] Azure Cognitive Services provider-specific parameters.
      #
      # @param disable_cache [Boolean] When `true`, bypass the audio cache and generate fresh audio.
      #
      # @param elevenlabs [::Telnyx::Models::TextToSpeechGenerateParams::Elevenlabs] ElevenLabs provider-specific parameters.
      #
      # @param language [String] Language code (e.g. `en-US`). Usage varies by provider.
      #
      # @param minimax [::Telnyx::Models::TextToSpeechGenerateParams::Minimax] Minimax provider-specific parameters.
      #
      # @param output_type [Symbol, ::Telnyx::Models::TextToSpeechGenerateParams::OutputType] Determines the response format. `binary_output` returns raw audio bytes, `base64
      #
      # @param provider [Symbol, ::Telnyx::Models::TextToSpeechGenerateParams::Provider] TTS provider. Required unless `voice` is provided.
      #
      # @param resemble [::Telnyx::Models::TextToSpeechGenerateParams::Resemble] Resemble AI provider-specific parameters.
      #
      # @param rime [::Telnyx::Models::TextToSpeechGenerateParams::Rime] Rime provider-specific parameters.
      #
      # @param telnyx [::Telnyx::Models::TextToSpeechGenerateParams::Telnyx] Telnyx provider-specific parameters. Use `voice_speed` and `temperature` for `Na
      #
      # @param text [String] The text to convert to speech.
      #
      # @param text_type [Symbol, ::Telnyx::Models::TextToSpeechGenerateParams::TextType] Text type. Use `ssml` for SSML-formatted input (supported by AWS and Azure).
      #
      # @param voice [String] Voice identifier in the format `provider.model_id.voice_id` or `provider.voice_i
      #
      # @param voice_settings [Hash{Symbol=>Object}] Provider-specific voice settings. Contents vary by provider — see provider-speci
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TextToSpeechGenerateResponse]
      #
      # @see Telnyx::Models::TextToSpeechGenerateParams
      def generate(params = {})
        parsed, options = Telnyx::TextToSpeechGenerateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "text-to-speech/speech",
          body: parsed,
          model: Telnyx::Models::TextToSpeechGenerateResponse,
          options: options
        )
      end

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

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
