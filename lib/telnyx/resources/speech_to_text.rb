# frozen_string_literal: true

module Telnyx
  module Resources
    # Speech to text command operations
    class SpeechToText
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SpeechToTextTranscribeParams} for more details.
      #
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
      #
      # @overload transcribe(input_format:, transcription_engine:, endpointing: nil, interim_results: nil, keyterm: nil, keywords: nil, language: nil, model: nil, redact: nil, request_options: {})
      #
      # @param input_format [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::InputFormat] The format of input audio stream.
      #
      # @param transcription_engine [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::TranscriptionEngine] The transcription engine to use for processing the audio stream.
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
      # @param model [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::Model] The specific model to use within the selected transcription engine.
      #
      # @param redact [String] Enable redaction of sensitive information (e.g., PCI data, SSN) from transcripti
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::SpeechToTextTranscribeParams
      def transcribe(params)
        parsed, options = Telnyx::SpeechToTextTranscribeParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "speech-to-text/transcription",
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
