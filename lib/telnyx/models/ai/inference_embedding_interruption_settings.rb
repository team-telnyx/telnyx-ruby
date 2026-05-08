# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class InferenceEmbeddingInterruptionSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute disable_greeting_interruption
        #   When true, disables user interruptions while the assistant greeting is playing.
        #
        #   @return [Boolean, nil]
        optional :disable_greeting_interruption, Telnyx::Internal::Type::Boolean

        # @!attribute enable
        #   Whether users can interrupt the assistant while it is speaking.
        #
        #   @return [Boolean, nil]
        optional :enable, Telnyx::Internal::Type::Boolean

        # @!attribute start_speaking_plan
        #   Controls when the assistant starts speaking after the user stops. These
        #   thresholds primarily apply to non turn-taking transcription models. For
        #   turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
        #   transcription end-of-turn settings under `transcription.settings` instead.
        #
        #   @return [Telnyx::Models::AI::StartSpeakingPlan, nil]
        optional :start_speaking_plan, -> { Telnyx::AI::StartSpeakingPlan }

        # @!method initialize(disable_greeting_interruption: nil, enable: nil, start_speaking_plan: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::InferenceEmbeddingInterruptionSettings} for more details.
        #
        #   Settings for interruptions and how the assistant decides the user has finished
        #   speaking. These timings are most relevant when using non turn-taking
        #   transcription models. For turn-taking models like `deepgram/flux`, end-of-turn
        #   behavior is controlled by the transcription end-of-turn settings under
        #   `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
        #   `eager_eot_threshold`).
        #
        #   @param disable_greeting_interruption [Boolean] When true, disables user interruptions while the assistant greeting is playing.
        #
        #   @param enable [Boolean] Whether users can interrupt the assistant while it is speaking.
        #
        #   @param start_speaking_plan [Telnyx::Models::AI::StartSpeakingPlan] Controls when the assistant starts speaking after the user stops. These threshol
      end
    end
  end
end
