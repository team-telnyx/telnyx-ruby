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
        # `eager_eot_threshold`. Evaluated per turn, on each caller transcript, only while
        # `start_speaking_plan` is present: the tier whose suffix matches the transcript
        # tail is applied (a transcript with no terminal punctuation or number falls
        # through to `on_no_punctuation_seconds`); with no tiers configured (or a null
        # nested plan), the per-turn wait stays on `start_speaking_plan.wait_seconds`.
        sig { returns(T.nilable(Telnyx::AI::TranscriptionEndpointingPlan)) }
        attr_reader :transcription_endpointing_plan

        sig do
          params(
            transcription_endpointing_plan:
              T.nilable(Telnyx::AI::TranscriptionEndpointingPlan::OrHash)
          ).void
        end
        attr_writer :transcription_endpointing_plan

        # Wait used when per-turn endpointing does not select a tier. While the plan is
        # present this applies on every turn without a matching tier (including when
        # `transcription_endpointing_plan` is unset); a matching tier replaces it for that
        # turn, and a tier may be shorter or longer than this value.
        sig { returns(T.nilable(Float)) }
        attr_reader :wait_seconds

        sig { params(wait_seconds: Float).void }
        attr_writer :wait_seconds

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
        sig do
          params(
            transcription_endpointing_plan:
              T.nilable(Telnyx::AI::TranscriptionEndpointingPlan::OrHash),
            wait_seconds: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Endpointing thresholds used to decide when the user has finished speaking.
          # Applies to non turn-taking transcription models. For `deepgram/flux`, use
          # `transcription.settings.eot_threshold` / `eot_timeout_ms` /
          # `eager_eot_threshold`. Evaluated per turn, on each caller transcript, only while
          # `start_speaking_plan` is present: the tier whose suffix matches the transcript
          # tail is applied (a transcript with no terminal punctuation or number falls
          # through to `on_no_punctuation_seconds`); with no tiers configured (or a null
          # nested plan), the per-turn wait stays on `start_speaking_plan.wait_seconds`.
          transcription_endpointing_plan: nil,
          # Wait used when per-turn endpointing does not select a tier. While the plan is
          # present this applies on every turn without a matching tier (including when
          # `transcription_endpointing_plan` is unset); a matching tier replaces it for that
          # turn, and a tier may be shorter or longer than this value.
          wait_seconds: nil
        )
        end

        sig do
          override.returns(
            {
              transcription_endpointing_plan:
                T.nilable(Telnyx::AI::TranscriptionEndpointingPlan),
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
