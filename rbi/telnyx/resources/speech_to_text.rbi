# typed: strong

module Telnyx
  module Resources
    class SpeechToText
      # Transcribe audio streams to text over WebSocket.
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
