# frozen_string_literal: true

module Telnyx
  module Resources
    class SpeechToText
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SpeechToTextListProvidersParams} for more details.
      #
      # Retrieve the canonical list of supported speech-to-text providers, models,
      # accepted language codes, and the service types each model supports.
      #
      # Service types:
      #
      # - `streaming` — standalone WebSocket transcription via
      #   `/speech-to-text/transcription`.
      # - `file_based` — file-based transcription via `/ai/audio/transcriptions`.
      # - `in_call` — live call transcription via Call Control `transcription_start`.
      # - `ai_assistant` — STT configured on a Call Control AI Assistant via
      #   voice-assistant `TranscriptionConfig` (covers both live-streaming and
      #   non-streaming/batch models).
      #
      # Use this endpoint to discover which (provider, model) combinations are available
      # for the surface you need, and which language codes each accepts. `auto` in a
      # `languages` array indicates the provider performs language detection.
      #
      # @overload list_providers(provider: nil, service_type: nil, request_options: {})
      #
      # @param provider [Symbol, Telnyx::Models::SpeechToTextListProvidersParams::Provider] Filter to entries for a specific STT provider. The enum mirrors the providers ad
      #
      # @param service_type [Symbol, Telnyx::Models::SttServiceType] Filter to entries that support the given service type. For backward compatibilit
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SpeechToTextListProvidersResponse]
      #
      # @see Telnyx::Models::SpeechToTextListProvidersParams
      def list_providers(params = {})
        parsed, options = Telnyx::SpeechToTextListProvidersParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        path =
          @client.base_url_overridden? ? "speech-to-text/providers" : "https://api.telnyx.com/v2/speech-to-text/providers"
        @client.request(
          method: :get,
          path: path,
          query: query,
          model: Telnyx::Models::SpeechToTextListProvidersResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SpeechToTextRetrieveTranscriptionParams} for more details.
      #
      # Open a WebSocket connection to stream audio and receive transcriptions in
      # real-time. Authentication is provided via the standard
      # `Authorization: Bearer <API_KEY>` header.
      #
      # Supported engines: `Azure`, `Deepgram`, `Google`, `Telnyx`, `xAI`,
      # `Speechmatics`, `Soniox`.
      #
      # **Connection flow:**
      #
      # 1. Open WebSocket with query parameters specifying engine, input format, and
      #    language.
      # 2. Send binary audio frames (mp3/wav format).
      # 3. Receive JSON transcript frames with `transcript`, `is_final`, and
      #    `confidence` fields.
      # 4. Close connection when done.
      #
      # @overload retrieve_transcription(input_format:, transcription_engine:, endpointing: nil, interim_results: nil, keyterm: nil, keywords: nil, language: nil, model: nil, redact: nil, request_options: {})
      #
      # @param input_format [Symbol, Telnyx::Models::SpeechToTextRetrieveTranscriptionParams::InputFormat] The format of input audio stream.
      #
      # @param transcription_engine [Symbol, Telnyx::Models::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine] The transcription engine to use for processing the audio stream.
      #
      # @param endpointing [Integer] Silence duration (in milliseconds) that triggers end-of-speech detection. When s
      #
      # @param interim_results [Boolean] Whether to receive interim transcription results.
      #
      # @param keyterm [String] A key term to boost in the transcription. The engine will be more likely to reco
      #
      # @param keywords [String] Comma-separated list of keywords to boost in the transcription. The engine will
      #
      # @param language [String] The language spoken in the audio stream.
      #
      # @param model [Symbol, Telnyx::Models::SpeechToTextRetrieveTranscriptionParams::Model] The specific model to use within the selected transcription engine.
      #
      # @param redact [String] Enable redaction of sensitive information (e.g., PCI data, SSN) from transcripti
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::SpeechToTextRetrieveTranscriptionParams
      def retrieve_transcription(params)
        parsed, options = Telnyx::SpeechToTextRetrieveTranscriptionParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        path =
          @client.base_url_overridden? ? "speech-to-text/transcription" : "wss://api.telnyx.com/v2/speech-to-text/transcription"
        @client.request(
          method: :get,
          path: path,
          query: query,
          headers: {"content-type" => "application/octet-stream"},
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
