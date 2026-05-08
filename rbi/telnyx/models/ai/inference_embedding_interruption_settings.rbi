# typed: strong

module Telnyx
  module Models
    module AI
      class InferenceEmbeddingInterruptionSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::InferenceEmbeddingInterruptionSettings,
              Telnyx::Internal::AnyHash
            )
          end

        # When true, disables user interruptions while the assistant greeting is playing.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :disable_greeting_interruption

        sig { params(disable_greeting_interruption: T::Boolean).void }
        attr_writer :disable_greeting_interruption

        # Whether users can interrupt the assistant while it is speaking.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enable

        sig { params(enable: T::Boolean).void }
        attr_writer :enable

        # Controls when the assistant starts speaking after the user stops. These
        # thresholds primarily apply to non turn-taking transcription models. For
        # turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
        # transcription end-of-turn settings under `transcription.settings` instead.
        sig { returns(T.nilable(Telnyx::AI::StartSpeakingPlan)) }
        attr_reader :start_speaking_plan

        sig do
          params(
            start_speaking_plan: Telnyx::AI::StartSpeakingPlan::OrHash
          ).void
        end
        attr_writer :start_speaking_plan

        # Settings for interruptions and how the assistant decides the user has finished
        # speaking. These timings are most relevant when using non turn-taking
        # transcription models. For turn-taking models like `deepgram/flux`, end-of-turn
        # behavior is controlled by the transcription end-of-turn settings under
        # `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
        # `eager_eot_threshold`).
        sig do
          params(
            disable_greeting_interruption: T::Boolean,
            enable: T::Boolean,
            start_speaking_plan: Telnyx::AI::StartSpeakingPlan::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # When true, disables user interruptions while the assistant greeting is playing.
          disable_greeting_interruption: nil,
          # Whether users can interrupt the assistant while it is speaking.
          enable: nil,
          # Controls when the assistant starts speaking after the user stops. These
          # thresholds primarily apply to non turn-taking transcription models. For
          # turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
          # transcription end-of-turn settings under `transcription.settings` instead.
          start_speaking_plan: nil
        )
        end

        sig do
          override.returns(
            {
              disable_greeting_interruption: T::Boolean,
              enable: T::Boolean,
              start_speaking_plan: Telnyx::AI::StartSpeakingPlan
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
