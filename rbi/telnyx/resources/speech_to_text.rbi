# typed: strong

module Telnyx
  module Resources
    # Speech to text command operations
    class SpeechToText
      # Open a WebSocket connection to stream audio and receive transcriptions in
      # real-time. Authentication is provided via the standard
      # `Authorization: Bearer <API_KEY>` header.
      #
      # Supported engines: `Azure`, `Deepgram`, `Google`, `Telnyx`.
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
            Telnyx::SpeechToTextTranscribeParams::InputFormat::OrSymbol,
          transcription_engine:
            Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine::OrSymbol,
          endpointing: Integer,
          interim_results: T::Boolean,
          keyterm: String,
          keywords: String,
          language: String,
          model: Telnyx::SpeechToTextTranscribeParams::Model::OrSymbol,
          redact: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def transcribe(
        # The format of input audio stream.
        input_format:,
        # The transcription engine to use for processing the audio stream.
        transcription_engine:,
        # Silence duration (in milliseconds) that triggers end-of-speech detection. When
        # set, the engine uses this value to determine when a speaker has stopped talking.
        # Not all engines support this parameter.
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
