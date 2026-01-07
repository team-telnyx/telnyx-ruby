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
            eot_threshold: Float,
            eot_timeout_ms: Integer,
            numerals: T::Boolean,
            smart_format: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Available only for deepgram/flux. Confidence threshold for eager end of turn
          # detection. Must be lower than or equal to eot_threshold. Setting this equal to
          # eot_threshold effectively disables eager end of turn.
          eager_eot_threshold: nil,
          # Available only for deepgram/flux. Confidence required to trigger an end of turn.
          # Higher values = more reliable turn detection but slightly increased latency.
          eot_threshold: nil,
          # Available only for deepgram/flux. Maximum milliseconds of silence before forcing
          # an end of turn, regardless of confidence.
          eot_timeout_ms: nil,
          numerals: nil,
          smart_format: nil
        )
        end

        sig do
          override.returns(
            {
              eager_eot_threshold: Float,
              eot_threshold: Float,
              eot_timeout_ms: Integer,
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
