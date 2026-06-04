# frozen_string_literal: true

module Telnyx
  module Resources
    # Discover available speech-to-text providers, models, and supported languages.
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
      # @param service_type [Symbol, Telnyx::Models::SpeechToTextListProvidersParams::ServiceType] Filter to entries that support the given service type. For backward compatibilit
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

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
