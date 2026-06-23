# typed: strong

module Telnyx
  module Resources
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
          service_type: Telnyx::SttServiceType::OrSymbol,
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
      sig do
        params(
          input_format:
            Telnyx::SpeechToTextRetrieveTranscriptionParams::InputFormat::OrSymbol,
          transcription_engine:
            Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::OrSymbol,
          endpointing: Integer,
          interim_results: T::Boolean,
          keyterm: String,
          keywords: String,
          language: String,
          model:
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::OrSymbol,
          redact: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def retrieve_transcription(
        # The format of input audio stream.
        input_format:,
        # The transcription engine to use for processing the audio stream.
        transcription_engine:,
        # Silence duration (in milliseconds) that triggers end-of-speech detection. When
        # set, the engine uses this value to determine when a speaker has stopped talking.
        # Supported by `xAI`, `Deepgram`, `Google`, `Speechmatics`, and `Soniox`. `Soniox`
        # accepts values between 500 and 3000. Other engines may not support this
        # parameter.
        endpointing: nil,
        # Whether to receive interim transcription results.
        interim_results: nil,
        # A key term to boost in the transcription. The engine will be more likely to
        # recognize this term. Can be specified multiple times for multiple terms.
        keyterm: nil,
        # Comma-separated list of keywords to boost in the transcription. The engine will
        # prioritize recognition of these words.
        keywords: nil,
        # The language spoken in the audio stream.
        language: nil,
        # The specific model to use within the selected transcription engine.
        model: nil,
        # Enable redaction of sensitive information (e.g., PCI data, SSN) from
        # transcription results. Supported values depend on the transcription engine.
        redact: nil,
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
