# typed: strong

module Telnyx
  module Models
    module AI
      class AudioTranscribeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AudioTranscribeParams, Telnyx::Internal::AnyHash)
          end

        # ID of the model to use. `distil-whisper/distil-large-v2` is lower latency but
        # English-only. `openai/whisper-large-v3-turbo` is multi-lingual but slightly
        # higher latency. `deepgram/nova-3` supports English variants (en, en-US, en-GB,
        # en-AU, en-NZ, en-IN) and only accepts mp3/wav files.
        sig { returns(Telnyx::AI::AudioTranscribeParams::Model::OrSymbol) }
        attr_accessor :model

        # The audio file object to transcribe, in one of these formats: flac, mp3, mp4,
        # mpeg, mpga, m4a, ogg, wav, or webm. File uploads are limited to 100 MB. Cannot
        # be used together with `file_url`. Note: `deepgram/nova-3` only supports mp3 and
        # wav formats.
        sig { returns(T.nilable(Telnyx::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: Telnyx::Internal::FileInput).void }
        attr_writer :file

        # Link to audio file in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a,
        # ogg, wav, or webm. Support for hosted files is limited to 100MB. Cannot be used
        # together with `file`. Note: `deepgram/nova-3` only supports mp3 and wav formats.
        sig { returns(T.nilable(String)) }
        attr_reader :file_url

        sig { params(file_url: String).void }
        attr_writer :file_url

        # The language of the audio to be transcribed. For `deepgram/nova-3`, only English
        # variants are supported: `en`, `en-US`, `en-GB`, `en-AU`, `en-NZ`, `en-IN`. For
        # `openai/whisper-large-v3-turbo`, supports multiple languages.
        # `distil-whisper/distil-large-v2` does not support language parameter.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Additional model-specific configuration parameters. Only allowed with
        # `deepgram/nova-3` model. Can include Deepgram-specific options such as
        # `smart_format`, `punctuate`, `diarize`, `utterance`, `numerals`, and `language`.
        # If `language` is provided both as a top-level parameter and in `model_config`,
        # the top-level parameter takes precedence.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :model_config

        sig { params(model_config: T::Hash[Symbol, T.anything]).void }
        attr_writer :model_config

        # The format of the transcript output. Use `verbose_json` to take advantage of
        # timestamps.
        sig do
          returns(
            T.nilable(
              Telnyx::AI::AudioTranscribeParams::ResponseFormat::OrSymbol
            )
          )
        end
        attr_reader :response_format

        sig do
          params(
            response_format:
              Telnyx::AI::AudioTranscribeParams::ResponseFormat::OrSymbol
          ).void
        end
        attr_writer :response_format

        # The timestamp granularities to populate for this transcription.
        # `response_format` must be set verbose_json to use timestamp granularities.
        # Currently `segment` is supported.
        sig do
          returns(
            T.nilable(
              Telnyx::AI::AudioTranscribeParams::TimestampGranularities::OrSymbol
            )
          )
        end
        attr_reader :timestamp_granularities

        sig do
          params(
            timestamp_granularities:
              Telnyx::AI::AudioTranscribeParams::TimestampGranularities::OrSymbol
          ).void
        end
        attr_writer :timestamp_granularities

        sig do
          params(
            model: Telnyx::AI::AudioTranscribeParams::Model::OrSymbol,
            file: Telnyx::Internal::FileInput,
            file_url: String,
            language: String,
            model_config: T::Hash[Symbol, T.anything],
            response_format:
              Telnyx::AI::AudioTranscribeParams::ResponseFormat::OrSymbol,
            timestamp_granularities:
              Telnyx::AI::AudioTranscribeParams::TimestampGranularities::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the model to use. `distil-whisper/distil-large-v2` is lower latency but
          # English-only. `openai/whisper-large-v3-turbo` is multi-lingual but slightly
          # higher latency. `deepgram/nova-3` supports English variants (en, en-US, en-GB,
          # en-AU, en-NZ, en-IN) and only accepts mp3/wav files.
          model:,
          # The audio file object to transcribe, in one of these formats: flac, mp3, mp4,
          # mpeg, mpga, m4a, ogg, wav, or webm. File uploads are limited to 100 MB. Cannot
          # be used together with `file_url`. Note: `deepgram/nova-3` only supports mp3 and
          # wav formats.
          file: nil,
          # Link to audio file in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a,
          # ogg, wav, or webm. Support for hosted files is limited to 100MB. Cannot be used
          # together with `file`. Note: `deepgram/nova-3` only supports mp3 and wav formats.
          file_url: nil,
          # The language of the audio to be transcribed. For `deepgram/nova-3`, only English
          # variants are supported: `en`, `en-US`, `en-GB`, `en-AU`, `en-NZ`, `en-IN`. For
          # `openai/whisper-large-v3-turbo`, supports multiple languages.
          # `distil-whisper/distil-large-v2` does not support language parameter.
          language: nil,
          # Additional model-specific configuration parameters. Only allowed with
          # `deepgram/nova-3` model. Can include Deepgram-specific options such as
          # `smart_format`, `punctuate`, `diarize`, `utterance`, `numerals`, and `language`.
          # If `language` is provided both as a top-level parameter and in `model_config`,
          # the top-level parameter takes precedence.
          model_config: nil,
          # The format of the transcript output. Use `verbose_json` to take advantage of
          # timestamps.
          response_format: nil,
          # The timestamp granularities to populate for this transcription.
          # `response_format` must be set verbose_json to use timestamp granularities.
          # Currently `segment` is supported.
          timestamp_granularities: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              model: Telnyx::AI::AudioTranscribeParams::Model::OrSymbol,
              file: Telnyx::Internal::FileInput,
              file_url: String,
              language: String,
              model_config: T::Hash[Symbol, T.anything],
              response_format:
                Telnyx::AI::AudioTranscribeParams::ResponseFormat::OrSymbol,
              timestamp_granularities:
                Telnyx::AI::AudioTranscribeParams::TimestampGranularities::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # ID of the model to use. `distil-whisper/distil-large-v2` is lower latency but
        # English-only. `openai/whisper-large-v3-turbo` is multi-lingual but slightly
        # higher latency. `deepgram/nova-3` supports English variants (en, en-US, en-GB,
        # en-AU, en-NZ, en-IN) and only accepts mp3/wav files.
        module Model
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::AudioTranscribeParams::Model)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISTIL_WHISPER_DISTIL_LARGE_V2 =
            T.let(
              :"distil-whisper/distil-large-v2",
              Telnyx::AI::AudioTranscribeParams::Model::TaggedSymbol
            )
          OPENAI_WHISPER_LARGE_V3_TURBO =
            T.let(
              :"openai/whisper-large-v3-turbo",
              Telnyx::AI::AudioTranscribeParams::Model::TaggedSymbol
            )
          DEEPGRAM_NOVA_3 =
            T.let(
              :"deepgram/nova-3",
              Telnyx::AI::AudioTranscribeParams::Model::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::AudioTranscribeParams::Model::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The format of the transcript output. Use `verbose_json` to take advantage of
        # timestamps.
        module ResponseFormat
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::AudioTranscribeParams::ResponseFormat)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          JSON =
            T.let(
              :json,
              Telnyx::AI::AudioTranscribeParams::ResponseFormat::TaggedSymbol
            )
          VERBOSE_JSON =
            T.let(
              :verbose_json,
              Telnyx::AI::AudioTranscribeParams::ResponseFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::AudioTranscribeParams::ResponseFormat::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The timestamp granularities to populate for this transcription.
        # `response_format` must be set verbose_json to use timestamp granularities.
        # Currently `segment` is supported.
        module TimestampGranularities
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AI::AudioTranscribeParams::TimestampGranularities
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEGMENT =
            T.let(
              :segment,
              Telnyx::AI::AudioTranscribeParams::TimestampGranularities::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::AudioTranscribeParams::TimestampGranularities::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
