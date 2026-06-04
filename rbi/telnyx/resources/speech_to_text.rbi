# typed: strong

module Telnyx
  module Resources
    # Discover available speech-to-text providers, models, and supported languages.
    class SpeechToText
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
      sig do
        params(
          provider: Telnyx::SpeechToTextListProvidersParams::Provider::OrSymbol,
          service_type:
            Telnyx::SpeechToTextListProvidersParams::ServiceType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SpeechToTextListProvidersResponse)
      end
      def list_providers(
        # Filter to entries for a specific STT provider. The enum mirrors the providers
        # advertised across the speech-to-text spec (including `google` and `telnyx`,
        # which are accepted as WebSocket transcription engines). A provider that has no
        # models currently registered for any service type will return an empty `data`
        # array rather than an error.
        provider: nil,
        # Filter to entries that support the given service type. For backward
        # compatibility with the values that briefly shipped before the product-aligned
        # rename, the legacy aliases `file_transcription`, `in_call_transcription`, and
        # `ai_assistant_transcription` are silently accepted and normalized to
        # `file_based`, `in_call`, and `ai_assistant` respectively. The response always
        # emits the canonical (post-rename) values.
        service_type: nil,
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
