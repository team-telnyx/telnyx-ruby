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

        # Interrupt-prediction sensitivity, from 0.0 to 1.0. Set to null or 0.0 to disable
        # interrupt prediction.
        sig { returns(T.nilable(Float)) }
        attr_accessor :interrupt_prediction_threshold

        # Controls when the assistant starts speaking after the user stops. These
        # thresholds primarily apply to non turn-taking transcription models. For
        # turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
        # transcription end-of-turn settings under `transcription.settings` instead.
        #
        # Sending any `start_speaking_plan` object — an empty `{}` included (the stored
        # config fills in field defaults) — engages per-turn transcript matching: on each
        # turn the transcript tail is evaluated against the configured
        # `transcription_endpointing_plan` tiers, and the wait is set to the matching
        # tier's seconds. When the transcript ends without terminal punctuation or a
        # number and `transcription_endpointing_plan` is set, its
        # `on_no_punctuation_seconds` tier applies. Only when no tier matches
        # (`transcription_endpointing_plan` unset or null) does the wait stay on
        # `wait_seconds`. Setting `start_speaking_plan` to `null` (or omitting it) turns
        # per-turn matching off entirely, and the assistant starts speaking as soon as
        # silence is detected.
        sig { returns(T.nilable(Telnyx::AI::StartSpeakingPlan)) }
        attr_reader :start_speaking_plan

        sig do
          params(
            start_speaking_plan:
              T.nilable(Telnyx::AI::StartSpeakingPlan::OrHash)
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
            interrupt_prediction_threshold: T.nilable(Float),
            start_speaking_plan:
              T.nilable(Telnyx::AI::StartSpeakingPlan::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # When true, disables user interruptions while the assistant greeting is playing.
          disable_greeting_interruption: nil,
          # Whether users can interrupt the assistant while it is speaking.
          enable: nil,
          # Interrupt-prediction sensitivity, from 0.0 to 1.0. Set to null or 0.0 to disable
          # interrupt prediction.
          interrupt_prediction_threshold: nil,
          # Controls when the assistant starts speaking after the user stops. These
          # thresholds primarily apply to non turn-taking transcription models. For
          # turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
          # transcription end-of-turn settings under `transcription.settings` instead.
          #
          # Sending any `start_speaking_plan` object — an empty `{}` included (the stored
          # config fills in field defaults) — engages per-turn transcript matching: on each
          # turn the transcript tail is evaluated against the configured
          # `transcription_endpointing_plan` tiers, and the wait is set to the matching
          # tier's seconds. When the transcript ends without terminal punctuation or a
          # number and `transcription_endpointing_plan` is set, its
          # `on_no_punctuation_seconds` tier applies. Only when no tier matches
          # (`transcription_endpointing_plan` unset or null) does the wait stay on
          # `wait_seconds`. Setting `start_speaking_plan` to `null` (or omitting it) turns
          # per-turn matching off entirely, and the assistant starts speaking as soon as
          # silence is detected.
          start_speaking_plan: nil
        )
        end

        sig do
          override.returns(
            {
              disable_greeting_interruption: T::Boolean,
              enable: T::Boolean,
              interrupt_prediction_threshold: T.nilable(Float),
              start_speaking_plan: T.nilable(Telnyx::AI::StartSpeakingPlan)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
