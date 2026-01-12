# frozen_string_literal: true

module Telnyx
  module Resources
    class SpeechToText
      # Transcribe audio streams to text over WebSocket.
      #
      # @overload transcribe(input_format:, transcription_engine:, interim_results: nil, language: nil, model: nil, request_options: {})
      #
      # @param input_format [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::InputFormat] The format of input audio stream.
      #
      # @param transcription_engine [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::TranscriptionEngine] The transcription engine to use for processing the audio stream.
      #
      # @param interim_results [Boolean] Whether to receive interim transcription results.
      #
      # @param language [String] The language spoken in the audio stream.
      #
      # @param model [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::Model] The specific model to use within the selected transcription engine.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::SpeechToTextTranscribeParams
      def transcribe(params)
        parsed, options = Telnyx::SpeechToTextTranscribeParams.dump_request(params)
        @client.request(
          method: :get,
          path: "speech-to-text/transcription",
          query: parsed,
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
