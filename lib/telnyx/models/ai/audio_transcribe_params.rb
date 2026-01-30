# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Audio#transcribe
      class AudioTranscribeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute model
        #   ID of the model to use. `distil-whisper/distil-large-v2` is lower latency but
        #   English-only. `openai/whisper-large-v3-turbo` is multi-lingual but slightly
        #   higher latency. `deepgram/nova-3` supports English variants (en, en-US, en-GB,
        #   en-AU, en-NZ, en-IN) and only accepts mp3/wav files.
        #
        #   @return [Symbol, Telnyx::Models::AI::AudioTranscribeParams::Model]
        required :model, enum: -> { Telnyx::AI::AudioTranscribeParams::Model }

        # @!attribute file
        #   The audio file object to transcribe, in one of these formats: flac, mp3, mp4,
        #   mpeg, mpga, m4a, ogg, wav, or webm. File uploads are limited to 100 MB. Cannot
        #   be used together with `file_url`. Note: `deepgram/nova-3` only supports mp3 and
        #   wav formats.
        #
        #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart, nil]
        optional :file, Telnyx::Internal::Type::FileInput

        # @!attribute file_url
        #   Link to audio file in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a,
        #   ogg, wav, or webm. Support for hosted files is limited to 100MB. Cannot be used
        #   together with `file`. Note: `deepgram/nova-3` only supports mp3 and wav formats.
        #
        #   @return [String, nil]
        optional :file_url, String

        # @!attribute language
        #   The language of the audio to be transcribed. For `deepgram/nova-3`, only English
        #   variants are supported: `en`, `en-US`, `en-GB`, `en-AU`, `en-NZ`, `en-IN`. For
        #   `openai/whisper-large-v3-turbo`, supports multiple languages.
        #   `distil-whisper/distil-large-v2` does not support language parameter.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute model_config
        #   Additional model-specific configuration parameters. Only allowed with
        #   `deepgram/nova-3` model. Can include Deepgram-specific options such as
        #   `smart_format`, `punctuate`, `diarize`, `utterance`, `numerals`, and `language`.
        #   If `language` is provided both as a top-level parameter and in `model_config`,
        #   the top-level parameter takes precedence.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :model_config, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute response_format
        #   The format of the transcript output. Use `verbose_json` to take advantage of
        #   timestamps.
        #
        #   @return [Symbol, Telnyx::Models::AI::AudioTranscribeParams::ResponseFormat, nil]
        optional :response_format, enum: -> { Telnyx::AI::AudioTranscribeParams::ResponseFormat }

        # @!attribute timestamp_granularities
        #   The timestamp granularities to populate for this transcription.
        #   `response_format` must be set verbose_json to use timestamp granularities.
        #   Currently `segment` is supported.
        #
        #   @return [Symbol, Telnyx::Models::AI::AudioTranscribeParams::TimestampGranularities, nil]
        optional :timestamp_granularities,
                 enum: -> { Telnyx::AI::AudioTranscribeParams::TimestampGranularities },
                 api_name: :"timestamp_granularities[]"

        # @!method initialize(model:, file: nil, file_url: nil, language: nil, model_config: nil, response_format: nil, timestamp_granularities: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AudioTranscribeParams} for more details.
        #
        #   @param model [Symbol, Telnyx::Models::AI::AudioTranscribeParams::Model] ID of the model to use. `distil-whisper/distil-large-v2` is lower latency but En
        #
        #   @param file [Pathname, StringIO, IO, String, Telnyx::FilePart] The audio file object to transcribe, in one of these formats: flac, mp3, mp4, mp
        #
        #   @param file_url [String] Link to audio file in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg
        #
        #   @param language [String] The language of the audio to be transcribed. For `deepgram/nova-3`, only English
        #
        #   @param model_config [Hash{Symbol=>Object}] Additional model-specific configuration parameters. Only allowed with `deepgram/
        #
        #   @param response_format [Symbol, Telnyx::Models::AI::AudioTranscribeParams::ResponseFormat] The format of the transcript output. Use `verbose_json` to take advantage of tim
        #
        #   @param timestamp_granularities [Symbol, Telnyx::Models::AI::AudioTranscribeParams::TimestampGranularities] The timestamp granularities to populate for this transcription. `response_format
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # ID of the model to use. `distil-whisper/distil-large-v2` is lower latency but
        # English-only. `openai/whisper-large-v3-turbo` is multi-lingual but slightly
        # higher latency. `deepgram/nova-3` supports English variants (en, en-US, en-GB,
        # en-AU, en-NZ, en-IN) and only accepts mp3/wav files.
        module Model
          extend Telnyx::Internal::Type::Enum

          DISTIL_WHISPER_DISTIL_LARGE_V2 = :"distil-whisper/distil-large-v2"
          OPENAI_WHISPER_LARGE_V3_TURBO = :"openai/whisper-large-v3-turbo"
          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The format of the transcript output. Use `verbose_json` to take advantage of
        # timestamps.
        module ResponseFormat
          extend Telnyx::Internal::Type::Enum

          JSON = :json
          VERBOSE_JSON = :verbose_json

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The timestamp granularities to populate for this transcription.
        # `response_format` must be set verbose_json to use timestamp granularities.
        # Currently `segment` is supported.
        module TimestampGranularities
          extend Telnyx::Internal::Type::Enum

          SEGMENT = :segment

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
