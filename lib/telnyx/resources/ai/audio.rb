# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Audio
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::AudioTranscribeParams} for more details.
        #
        # Transcribe speech to text. This endpoint is consistent with the
        # [OpenAI Transcription API](https://platform.openai.com/docs/api-reference/audio/createTranscription)
        # and may be used with the OpenAI JS or Python SDK.
        #
        # @overload transcribe(model:, file: nil, file_url: nil, language: nil, model_config: nil, response_format: nil, timestamp_granularities: nil, request_options: {})
        #
        # @param model [Symbol, Telnyx::Models::AI::AudioTranscribeParams::Model] ID of the model to use. `distil-whisper/distil-large-v2` is lower latency but En
        #
        # @param file [Pathname, StringIO, IO, String, Telnyx::FilePart] The audio file object to transcribe, in one of these formats: flac, mp3, mp4, mp
        #
        # @param file_url [String] Link to audio file in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg
        #
        # @param language [String] The language of the audio to be transcribed. For `deepgram/nova-3`, only English
        #
        # @param model_config [Hash{Symbol=>Object}] Additional model-specific configuration parameters. Only allowed with `deepgram/
        #
        # @param response_format [Symbol, Telnyx::Models::AI::AudioTranscribeParams::ResponseFormat] The format of the transcript output. Use `verbose_json` to take advantage of tim
        #
        # @param timestamp_granularities [Symbol, Telnyx::Models::AI::AudioTranscribeParams::TimestampGranularities] The timestamp granularities to populate for this transcription. `response_format
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::AudioTranscribeResponse]
        #
        # @see Telnyx::Models::AI::AudioTranscribeParams
        def transcribe(params)
          parsed, options = Telnyx::AI::AudioTranscribeParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/audio/transcriptions",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: Telnyx::Models::AI::AudioTranscribeResponse,
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
end
