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
          interim_results: T::Boolean,
          language: String,
          model: Telnyx::SpeechToTextTranscribeParams::Model::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def transcribe(
        # The format of input audio stream.
        input_format:,
        # The transcription engine to use for processing the audio stream.
        transcription_engine:,
        # Whether to receive interim transcription results.
        interim_results: nil,
        # The language spoken in the audio stream.
        language: nil,
        # The specific model to use within the selected transcription engine.
        model: nil,
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
