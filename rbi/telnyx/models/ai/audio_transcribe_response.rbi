# typed: strong

module Telnyx
  module Models
    module AI
      class AudioTranscribeResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::AudioTranscribeResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The transcribed text for the audio file.
        sig { returns(String) }
        attr_accessor :text

        # The duration of the audio file in seconds. Returned by
        # `distil-whisper/distil-large-v2` and the `deepgram/*` models when
        # `response_format` is `verbose_json`. Not returned by
        # `openai/whisper-large-v3-turbo`.
        sig { returns(T.nilable(Float)) }
        attr_reader :duration

        sig { params(duration: Float).void }
        attr_writer :duration

        # Segments of the transcribed text and their corresponding details. Returned by
        # `distil-whisper/distil-large-v2` and the `deepgram/*` models when
        # `response_format` is `verbose_json`; Deepgram segments also carry nested `words`
        # and `speakers`. Not returned by `openai/whisper-large-v3-turbo`.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::AI::AudioTranscribeResponse::Segment]
            )
          )
        end
        attr_reader :segments

        sig do
          params(
            segments:
              T::Array[
                Telnyx::Models::AI::AudioTranscribeResponse::Segment::OrHash
              ]
          ).void
        end
        attr_writer :segments

        # Word-level timestamps and optional speaker labels. Only returned by the
        # `deepgram/*` models when word-level output is enabled via `model_config`.
        sig do
          returns(
            T.nilable(T::Array[Telnyx::AI::AudioTranscriptionResponseWord])
          )
        end
        attr_reader :words

        sig do
          params(
            words: T::Array[Telnyx::AI::AudioTranscriptionResponseWord::OrHash]
          ).void
        end
        attr_writer :words

        # Response fields vary by model. `distil-whisper/distil-large-v2` returns `text`,
        # `duration`, and `segments` in `verbose_json` mode.
        # `openai/whisper-large-v3-turbo` returns `text` only. The `deepgram/*` models
        # return `text` and, depending on `model_config`, may include `words` with
        # per-word timestamps and speaker labels. The Parakeet models
        # (`nvidia/parakeet-v3`, `omi-health/omi-med-stt-v1`) return `text` only.
        sig do
          params(
            text: String,
            duration: Float,
            segments:
              T::Array[
                Telnyx::Models::AI::AudioTranscribeResponse::Segment::OrHash
              ],
            words: T::Array[Telnyx::AI::AudioTranscriptionResponseWord::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The transcribed text for the audio file.
          text:,
          # The duration of the audio file in seconds. Returned by
          # `distil-whisper/distil-large-v2` and the `deepgram/*` models when
          # `response_format` is `verbose_json`. Not returned by
          # `openai/whisper-large-v3-turbo`.
          duration: nil,
          # Segments of the transcribed text and their corresponding details. Returned by
          # `distil-whisper/distil-large-v2` and the `deepgram/*` models when
          # `response_format` is `verbose_json`; Deepgram segments also carry nested `words`
          # and `speakers`. Not returned by `openai/whisper-large-v3-turbo`.
          segments: nil,
          # Word-level timestamps and optional speaker labels. Only returned by the
          # `deepgram/*` models when word-level output is enabled via `model_config`.
          words: nil
        )
        end

        sig do
          override.returns(
            {
              text: String,
              duration: Float,
              segments:
                T::Array[Telnyx::Models::AI::AudioTranscribeResponse::Segment],
              words: T::Array[Telnyx::AI::AudioTranscriptionResponseWord]
            }
          )
        end
        def to_hash
        end

        class Segment < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::AudioTranscribeResponse::Segment,
                Telnyx::Internal::AnyHash
              )
            end

          # Unique identifier of the segment.
          sig { returns(Float) }
          attr_accessor :id

          # End time of the segment in seconds.
          sig { returns(Float) }
          attr_accessor :end_

          # Start time of the segment in seconds.
          sig { returns(Float) }
          attr_accessor :start

          # Text content of the segment.
          sig { returns(String) }
          attr_accessor :text

          # Speaker indices heard in this segment. Returned by the `deepgram/*` models when
          # `diarize` is enabled via `model_config`.
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :speakers

          sig { params(speakers: T::Array[Integer]).void }
          attr_writer :speakers

          # Word-level timing detail for this segment. Returned by the `deepgram/*` models
          # when word-level output is enabled via `model_config`.
          sig do
            returns(
              T.nilable(T::Array[Telnyx::AI::AudioTranscriptionResponseWord])
            )
          end
          attr_reader :words

          sig do
            params(
              words:
                T::Array[Telnyx::AI::AudioTranscriptionResponseWord::OrHash]
            ).void
          end
          attr_writer :words

          sig do
            params(
              id: Float,
              end_: Float,
              start: Float,
              text: String,
              speakers: T::Array[Integer],
              words:
                T::Array[Telnyx::AI::AudioTranscriptionResponseWord::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier of the segment.
            id:,
            # End time of the segment in seconds.
            end_:,
            # Start time of the segment in seconds.
            start:,
            # Text content of the segment.
            text:,
            # Speaker indices heard in this segment. Returned by the `deepgram/*` models when
            # `diarize` is enabled via `model_config`.
            speakers: nil,
            # Word-level timing detail for this segment. Returned by the `deepgram/*` models
            # when word-level output is enabled via `model_config`.
            words: nil
          )
          end

          sig do
            override.returns(
              {
                id: Float,
                end_: Float,
                start: Float,
                text: String,
                speakers: T::Array[Integer],
                words: T::Array[Telnyx::AI::AudioTranscriptionResponseWord]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
