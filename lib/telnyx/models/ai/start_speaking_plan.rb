# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class StartSpeakingPlan < Telnyx::Internal::Type::BaseModel
        # @!attribute transcription_endpointing_plan
        #   Endpointing thresholds used to decide when the user has finished speaking.
        #   Applies to non turn-taking transcription models. For `deepgram/flux`, use
        #   `transcription.settings.eot_threshold` / `eot_timeout_ms` /
        #   `eager_eot_threshold`.
        #
        #   @return [Telnyx::Models::AI::TranscriptionEndpointingPlan, nil]
        optional :transcription_endpointing_plan, -> { Telnyx::AI::TranscriptionEndpointingPlan }

        # @!attribute wait_seconds
        #   Minimum seconds to wait before the assistant starts speaking.
        #
        #   @return [Float, nil]
        optional :wait_seconds, Float

        # @!method initialize(transcription_endpointing_plan: nil, wait_seconds: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::StartSpeakingPlan} for more details.
        #
        #   Controls when the assistant starts speaking after the user stops. These
        #   thresholds primarily apply to non turn-taking transcription models. For
        #   turn-taking models like `deepgram/flux`, end-of-turn detection is driven by the
        #   transcription end-of-turn settings under `transcription.settings` instead.
        #
        #   @param transcription_endpointing_plan [Telnyx::Models::AI::TranscriptionEndpointingPlan] Endpointing thresholds used to decide when the user has finished speaking. Appli
        #
        #   @param wait_seconds [Float] Minimum seconds to wait before the assistant starts speaking.
      end
    end
  end
end
