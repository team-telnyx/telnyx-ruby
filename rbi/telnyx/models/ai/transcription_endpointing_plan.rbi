# typed: strong

module Telnyx
  module Models
    module AI
      class TranscriptionEndpointingPlan < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::TranscriptionEndpointingPlan,
              Telnyx::Internal::AnyHash
            )
          end

        # Seconds to wait after the transcript ends without punctuation.
        sig { returns(T.nilable(Float)) }
        attr_reader :on_no_punctuation_seconds

        sig { params(on_no_punctuation_seconds: Float).void }
        attr_writer :on_no_punctuation_seconds

        # Seconds to wait after the transcript ends with a number.
        sig { returns(T.nilable(Float)) }
        attr_reader :on_number_seconds

        sig { params(on_number_seconds: Float).void }
        attr_writer :on_number_seconds

        # Seconds to wait after the transcript ends with punctuation.
        sig { returns(T.nilable(Float)) }
        attr_reader :on_punctuation_seconds

        sig { params(on_punctuation_seconds: Float).void }
        attr_writer :on_punctuation_seconds

        # Endpointing thresholds used to decide when the user has finished speaking.
        # Applies to non turn-taking transcription models. For `deepgram/flux`, use
        # `transcription.settings.eot_threshold` / `eot_timeout_ms` /
        # `eager_eot_threshold`.
        sig do
          params(
            on_no_punctuation_seconds: Float,
            on_number_seconds: Float,
            on_punctuation_seconds: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Seconds to wait after the transcript ends without punctuation.
          on_no_punctuation_seconds: nil,
          # Seconds to wait after the transcript ends with a number.
          on_number_seconds: nil,
          # Seconds to wait after the transcript ends with punctuation.
          on_punctuation_seconds: nil
        )
        end

        sig do
          override.returns(
            {
              on_no_punctuation_seconds: Float,
              on_number_seconds: Float,
              on_punctuation_seconds: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
