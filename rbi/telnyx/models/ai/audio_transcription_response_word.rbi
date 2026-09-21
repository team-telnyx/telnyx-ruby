# typed: strong

module Telnyx
  module Models
    module AI
      class AudioTranscriptionResponseWord < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::AudioTranscriptionResponseWord,
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

        # The transcribed word with punctuation and capitalisation applied. Only present
        # when `punctuate` or `smart_format` is enabled via `model_config`.
        sig { returns(T.nilable(String)) }
        attr_reader :punctuated_word

        sig { params(punctuated_word: String).void }
        attr_writer :punctuated_word

        # Speaker index. Only present when diarization is enabled via `model_config`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :speaker

        sig { params(speaker: Integer).void }
        attr_writer :speaker

        # Confidence score for the speaker assignment (0.0 to 1.0). Only present when
        # diarization is enabled via `model_config`.
        sig { returns(T.nilable(Float)) }
        attr_reader :speaker_confidence

        sig { params(speaker_confidence: Float).void }
        attr_writer :speaker_confidence

        # Word-level timing detail. Only present when using a `deepgram/*` model with
        # `model_config` options that enable word timestamps.
        sig do
          params(
            end_: Float,
            start: Float,
            word: String,
            confidence: Float,
            punctuated_word: String,
            speaker: Integer,
            speaker_confidence: Float
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
          # The transcribed word with punctuation and capitalisation applied. Only present
          # when `punctuate` or `smart_format` is enabled via `model_config`.
          punctuated_word: nil,
          # Speaker index. Only present when diarization is enabled via `model_config`.
          speaker: nil,
          # Confidence score for the speaker assignment (0.0 to 1.0). Only present when
          # diarization is enabled via `model_config`.
          speaker_confidence: nil
        )
        end

        sig do
          override.returns(
            {
              end_: Float,
              start: Float,
              word: String,
              confidence: Float,
              punctuated_word: String,
              speaker: Integer,
              speaker_confidence: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
