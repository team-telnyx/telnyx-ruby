# typed: strong

module Telnyx
  module Models
    module AI
      class TranscriptionSettingsConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::TranscriptionSettingsConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Available only for deepgram/flux. Confidence threshold for eager end of turn
        # detection. Must be lower than or equal to eot_threshold. Setting this equal to
        # eot_threshold effectively disables eager end of turn.
        sig { returns(T.nilable(Float)) }
        attr_reader :eager_eot_threshold

        sig { params(eager_eot_threshold: Float).void }
        attr_writer :eager_eot_threshold

        # Available only for assemblyai/universal-streaming. Confidence level required to
        # trigger an end of turn. Higher values require more certainty before ending a
        # turn.
        sig { returns(T.nilable(Float)) }
        attr_reader :end_of_turn_confidence_threshold

        sig { params(end_of_turn_confidence_threshold: Float).void }
        attr_writer :end_of_turn_confidence_threshold

        # Available only for deepgram/flux. Confidence required to trigger an end of turn.
        # Higher values = more reliable turn detection but slightly increased latency.
        sig { returns(T.nilable(Float)) }
        attr_reader :eot_threshold

        sig { params(eot_threshold: Float).void }
        attr_writer :eot_threshold

        # Available only for deepgram/flux. Maximum milliseconds of silence before forcing
        # an end of turn, regardless of confidence.
        sig { returns(T.nilable(Integer)) }
        attr_reader :eot_timeout_ms

        sig { params(eot_timeout_ms: Integer).void }
        attr_writer :eot_timeout_ms

        # Available only for deepgram/nova-3 and deepgram/flux. A comma-separated list of
        # key terms to boost for recognition during transcription. Helps improve accuracy
        # for domain-specific terminology, proper nouns, or uncommon words.
        sig { returns(T.nilable(String)) }
        attr_reader :keyterm

        sig { params(keyterm: String).void }
        attr_writer :keyterm

        # Available only for assemblyai/universal-streaming. Maximum duration of silence
        # in milliseconds before forcing an end of turn.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_turn_silence

        sig { params(max_turn_silence: Integer).void }
        attr_writer :max_turn_silence

        # Available only for assemblyai/universal-streaming. Minimum duration of silence
        # in milliseconds before a turn can end. Must be less than or equal to
        # max_turn_silence.
        sig { returns(T.nilable(Integer)) }
        attr_reader :min_turn_silence

        sig { params(min_turn_silence: Integer).void }
        attr_writer :min_turn_silence

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :numerals

        sig { params(numerals: T::Boolean).void }
        attr_writer :numerals

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :smart_format

        sig { params(smart_format: T::Boolean).void }
        attr_writer :smart_format

        sig do
          params(
            eager_eot_threshold: Float,
            end_of_turn_confidence_threshold: Float,
            eot_threshold: Float,
            eot_timeout_ms: Integer,
            keyterm: String,
            max_turn_silence: Integer,
            min_turn_silence: Integer,
            numerals: T::Boolean,
            smart_format: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Available only for deepgram/flux. Confidence threshold for eager end of turn
          # detection. Must be lower than or equal to eot_threshold. Setting this equal to
          # eot_threshold effectively disables eager end of turn.
          eager_eot_threshold: nil,
          # Available only for assemblyai/universal-streaming. Confidence level required to
          # trigger an end of turn. Higher values require more certainty before ending a
          # turn.
          end_of_turn_confidence_threshold: nil,
          # Available only for deepgram/flux. Confidence required to trigger an end of turn.
          # Higher values = more reliable turn detection but slightly increased latency.
          eot_threshold: nil,
          # Available only for deepgram/flux. Maximum milliseconds of silence before forcing
          # an end of turn, regardless of confidence.
          eot_timeout_ms: nil,
          # Available only for deepgram/nova-3 and deepgram/flux. A comma-separated list of
          # key terms to boost for recognition during transcription. Helps improve accuracy
          # for domain-specific terminology, proper nouns, or uncommon words.
          keyterm: nil,
          # Available only for assemblyai/universal-streaming. Maximum duration of silence
          # in milliseconds before forcing an end of turn.
          max_turn_silence: nil,
          # Available only for assemblyai/universal-streaming. Minimum duration of silence
          # in milliseconds before a turn can end. Must be less than or equal to
          # max_turn_silence.
          min_turn_silence: nil,
          numerals: nil,
          smart_format: nil
        )
        end

        sig do
          override.returns(
            {
              eager_eot_threshold: Float,
              end_of_turn_confidence_threshold: Float,
              eot_threshold: Float,
              eot_timeout_ms: Integer,
              keyterm: String,
              max_turn_silence: Integer,
              min_turn_silence: Integer,
              numerals: T::Boolean,
              smart_format: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
