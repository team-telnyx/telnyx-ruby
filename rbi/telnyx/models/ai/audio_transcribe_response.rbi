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
        # `distil-whisper/distil-large-v2` and `deepgram/nova-3` when `response_format` is
        # `verbose_json`. Not returned by `openai/whisper-large-v3-turbo`.
        sig { returns(T.nilable(Float)) }
        attr_reader :duration

        sig { params(duration: Float).void }
        attr_writer :duration

        # Segments of the transcribed text and their corresponding details. Returned by
        # `distil-whisper/distil-large-v2` when `response_format` is `verbose_json`. Not
        # returned by `openai/whisper-large-v3-turbo`.
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

        # Word-level timestamps and optional speaker labels. Only returned by
        # `deepgram/nova-3` when word-level output is enabled via `model_config`.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::AI::AudioTranscribeResponse::Word]
            )
          )
        end
        attr_reader :words

        sig do
          params(
            words:
              T::Array[
                Telnyx::Models::AI::AudioTranscribeResponse::Word::OrHash
              ]
          ).void
        end
        attr_writer :words

        # Response fields vary by model. `distil-whisper/distil-large-v2` returns `text`,
        # `duration`, and `segments` in `verbose_json` mode.
        # `openai/whisper-large-v3-turbo` returns `text` only. `deepgram/nova-3` returns
        # `text` and, depending on `model_config`, may include `words` with per-word
        # timestamps and speaker labels.
        sig do
          params(
            text: String,
            duration: Float,
            segments:
              T::Array[
                Telnyx::Models::AI::AudioTranscribeResponse::Segment::OrHash
              ],
            words:
              T::Array[
                Telnyx::Models::AI::AudioTranscribeResponse::Word::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The transcribed text for the audio file.
          text:,
          # The duration of the audio file in seconds. Returned by
          # `distil-whisper/distil-large-v2` and `deepgram/nova-3` when `response_format` is
          # `verbose_json`. Not returned by `openai/whisper-large-v3-turbo`.
          duration: nil,
          # Segments of the transcribed text and their corresponding details. Returned by
          # `distil-whisper/distil-large-v2` when `response_format` is `verbose_json`. Not
          # returned by `openai/whisper-large-v3-turbo`.
          segments: nil,
          # Word-level timestamps and optional speaker labels. Only returned by
          # `deepgram/nova-3` when word-level output is enabled via `model_config`.
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
              words: T::Array[Telnyx::Models::AI::AudioTranscribeResponse::Word]
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

          sig do
            params(id: Float, end_: Float, start: Float, text: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Unique identifier of the segment.
            id:,
            # End time of the segment in seconds.
            end_:,
            # Start time of the segment in seconds.
            start:,
            # Text content of the segment.
            text:
          )
          end

          sig do
            override.returns(
              { id: Float, end_: Float, start: Float, text: String }
            )
          end
          def to_hash
          end
        end

        class Word < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::AudioTranscribeResponse::Word,
                Telnyx::Internal::AnyHash
              )
            end

          # End time of the word in seconds.
          sig { returns(Float) }
          attr_accessor :end_

          # Start time of the word in seconds.
          sig { returns(Float) }
          attr_accessor :start

          # The transcribed word.
          sig { returns(String) }
          attr_accessor :word

          # Confidence score for the word (0.0 to 1.0).
          sig { returns(T.nilable(Float)) }
          attr_reader :confidence

          sig { params(confidence: Float).void }
          attr_writer :confidence

          # Speaker index. Only present when diarization is enabled via `model_config`.
          sig { returns(T.nilable(Integer)) }
          attr_reader :speaker

          sig { params(speaker: Integer).void }
          attr_writer :speaker

          # Word-level timing detail. Only present when using `deepgram/nova-3` with
          # `model_config` options that enable word timestamps.
          sig do
            params(
              end_: Float,
              start: Float,
              word: String,
              confidence: Float,
              speaker: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # End time of the word in seconds.
            end_:,
            # Start time of the word in seconds.
            start:,
            # The transcribed word.
            word:,
            # Confidence score for the word (0.0 to 1.0).
            confidence: nil,
            # Speaker index. Only present when diarization is enabled via `model_config`.
            speaker: nil
          )
          end

          sig do
            override.returns(
              {
                end_: Float,
                start: Float,
                word: String,
                confidence: Float,
                speaker: Integer
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
