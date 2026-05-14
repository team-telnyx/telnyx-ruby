# typed: strong

module Telnyx
  module Models
    module AI
      class StartSpeakingPlan < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::StartSpeakingPlan, Telnyx::Internal::AnyHash)
          end

        # Endpointing thresholds used to decide when the user has finished speaking.
        # Applies to non turn-taking transcription models. For `deepgram/flux`, use
        # `transcription.settings.eot_threshold` / `eot_timeout_ms` /
        # `eager_eot_threshold`.
        sig { returns(T.nilable(Telnyx::AI::TranscriptionEndpointingPlan)) }
        attr_reader :transcription_endpointing_plan

        sig do
          params(
            transcription_endpointing_plan:
              Telnyx::AI::TranscriptionEndpointingPlan::OrHash
          ).void
        end
        attr_writer :transcription_endpointing_plan

        # Minimum seconds to wait before the assistant starts speaking.
        sig { returns(T.nilable(Float)) }
        attr_reader :wait_seconds

        sig { params(wait_seconds: Float).void }
        attr_writer :wait_seconds

        # Controls when the assistant starts speaking after the user stops. These
        # thresholds primarily apply to non turn-taking transcription models. For
        # turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
        # transcription end-of-turn settings under `transcription.settings` instead.
        sig do
          params(
            transcription_endpointing_plan:
              Telnyx::AI::TranscriptionEndpointingPlan::OrHash,
            wait_seconds: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Endpointing thresholds used to decide when the user has finished speaking.
          # Applies to non turn-taking transcription models. For `deepgram/flux`, use
          # `transcription.settings.eot_threshold` / `eot_timeout_ms` /
          # `eager_eot_threshold`.
          transcription_endpointing_plan: nil,
          # Minimum seconds to wait before the assistant starts speaking.
          wait_seconds: nil
        )
        end

        sig do
          override.returns(
            {
              transcription_endpointing_plan:
                Telnyx::AI::TranscriptionEndpointingPlan,
              wait_seconds: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
