# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class StartSpeakingPlan < Telnyx::Internal::Type::BaseModel
        # @!attribute transcription_endpointing_plan
        #   Endpointing thresholds used to decide when the user has finished speaking.
        #   Applies to non turn-taking transcription models. For `deepgram/flux`, use
        #   `transcription.settings.eot_threshold` / `eot_timeout_ms` /
        #   `eager_eot_threshold`. Evaluated per turn, on each caller transcript, only while
        #   `start_speaking_plan` is present: the tier whose suffix matches the transcript
        #   tail is applied (a transcript with no terminal punctuation or number falls
        #   through to `on_no_punctuation_seconds`); with no tiers configured (or a null
        #   nested plan), the per-turn wait stays on `start_speaking_plan.wait_seconds`.
        #
        #   @return [Telnyx::Models::AI::TranscriptionEndpointingPlan, nil]
        optional :transcription_endpointing_plan, -> { Telnyx::AI::TranscriptionEndpointingPlan }, nil?: true

        # @!attribute wait_seconds
        #   Wait used when per-turn endpointing does not select a tier. While the plan is
        #   present this applies on every turn without a matching tier (including when
        #   `transcription_endpointing_plan` is unset); a matching tier replaces it for that
        #   turn, and a tier may be shorter or longer than this value.
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
        #   Sending any `start_speaking_plan` object — an empty `{}` included (the stored
        #   config fills in field defaults) — engages per-turn transcript matching: on each
        #   turn the transcript tail is evaluated against the configured
        #   `transcription_endpointing_plan` tiers, and the wait is set to the matching
        #   tier's seconds. When the transcript ends without terminal punctuation or a
        #   number and `transcription_endpointing_plan` is set, its
        #   `on_no_punctuation_seconds` tier applies. Only when no tier matches
        #   (`transcription_endpointing_plan` unset or null) does the wait stay on
        #   `wait_seconds`. Setting `start_speaking_plan` to `null` (or omitting it) turns
        #   per-turn matching off entirely, and the assistant starts speaking as soon as
        #   silence is detected.
        #
        #   @param transcription_endpointing_plan [Telnyx::Models::AI::TranscriptionEndpointingPlan, nil] Endpointing thresholds used to decide when the user has finished speaking. Appli
        #
        #   @param wait_seconds [Float] Wait used when per-turn endpointing does not select a tier. While the plan is pr
      end
    end
  end
end
