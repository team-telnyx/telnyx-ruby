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
      # - `file_transcription` — file-based transcription via
      #   `/ai/audio/transcriptions`.
      # - `in_call_transcription` — live call transcription via Call Control
      #   `transcription_start`.
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
        # Filter to entries that support the given service type.
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
