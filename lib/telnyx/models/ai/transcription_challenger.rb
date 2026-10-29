# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TranscriptionChallenger < Telnyx::Internal::Type::BaseModel
        # @!attribute model
        #   The language booster's model. It must be the same kind of model as
        #   `transcription.model`: both streaming (`deepgram/flux`, `deepgram/nova-3`,
        #   `deepgram/nova-2`, `assemblyai/universal-3-6-pro` or its legacy aliases
        #   `assemblyai/universal-3-5-pro` and `assemblyai/universal-streaming`,
        #   `xai/grok-stt`, `soniox/stt-rt-v4`, `soniox/stt-rt-v5`, `humain/realtime`,
        #   `reson8/turns`) or both non-streaming (`azure/fast`, `nvidia/parakeet-v3`,
        #   `omi-health/omi-med-stt-v1`, `cohere/ar-stt`, `distil-whisper/distil-large-v2`,
        #   `openai/whisper-large-v3-turbo`, `telnyx/basira`). It can be the same model as
        #   `transcription.model` on a different `language`.
        #
        #   @return [Symbol, Telnyx::Models::AI::TranscriptionChallenger::Model]
        required :model, enum: -> { Telnyx::AI::TranscriptionChallenger::Model }

        # @!attribute language
        #   The language this model transcribes. Omit it or set it to `null` to use the
        #   language of `transcription.model`. The request is rejected when this model
        #   doesn't support the language it would run. It is also rejected when it would run
        #   the same model on the same language as `transcription.model`.
        #
        #   @return [String, nil]
        optional :language, String, nil?: true

        # @!attribute rule
        #   How the assistant picks the transcript it uses. The models are compared on how
        #   complete and confident their transcripts are, not on language, so the rules work
        #   best when both models understand the callers' language.
        #
        #   - `best_turn` (default): both models transcribe the whole call. Each turn uses
        #     the language booster's transcript only when it scores higher than the
        #     transcript of `transcription.model` (clearly higher with non-streaming
        #     models). With streaming models, `transcription.model` also decides when each
        #     turn ends. Available for every pair.
        #   - `best_engine`: both models transcribe the first turns, then the call continues
        #     alone on the model whose transcripts scored higher. If neither clearly leads,
        #     `transcription.model` continues. Streaming models only.
        #   - `merge_words`: both models transcribe each utterance and their words are
        #     merged, keeping Arabic and English spoken in the same sentence. Available only
        #     for `telnyx/basira` with `cohere/ar-stt`, in either order. The pair runs on
        #     the language that applies to `telnyx/basira` (its own, or that of
        #     `transcription.model`), which must be Arabic (`ar` or an `ar-` locale),
        #     `multi`, or `auto`.
        #
        #   @return [Symbol, Telnyx::Models::AI::TranscriptionChallenger::Rule, nil]
        optional :rule, enum: -> { Telnyx::AI::TranscriptionChallenger::Rule }

        # @!attribute settings
        #   Settings for the language booster, with the same fields and limits as
        #   `transcription.settings`. Fields that don't apply to this model's provider are
        #   dropped, and the provider's defaults fill in the rest. Omit it or set it to
        #   `null` to use the settings of `transcription.model` where they apply to this
        #   model.
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettingsConfig, nil]
        optional :settings, -> { Telnyx::AI::TranscriptionSettingsConfig }, nil?: true

        # @!method initialize(model:, language: nil, rule: nil, settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TranscriptionChallenger} for more details.
        #
        #   A second speech-to-text model that transcribes alongside `transcription.model`,
        #   and the rule that decides which transcript the assistant uses.
        #
        #   @param model [Symbol, Telnyx::Models::AI::TranscriptionChallenger::Model] The language booster's model. It must be the same kind of model as `transcriptio
        #
        #   @param language [String, nil] The language this model transcribes. Omit it or set it to `null` to use the lang
        #
        #   @param rule [Symbol, Telnyx::Models::AI::TranscriptionChallenger::Rule] How the assistant picks the transcript it uses. The models are compared on how c
        #
        #   @param settings [Telnyx::Models::AI::TranscriptionSettingsConfig, nil] Settings for the language booster, with the same fields and limits as `transcrip

        # The language booster's model. It must be the same kind of model as
        # `transcription.model`: both streaming (`deepgram/flux`, `deepgram/nova-3`,
        # `deepgram/nova-2`, `assemblyai/universal-3-6-pro` or its legacy aliases
        # `assemblyai/universal-3-5-pro` and `assemblyai/universal-streaming`,
        # `xai/grok-stt`, `soniox/stt-rt-v4`, `soniox/stt-rt-v5`, `humain/realtime`,
        # `reson8/turns`) or both non-streaming (`azure/fast`, `nvidia/parakeet-v3`,
        # `omi-health/omi-med-stt-v1`, `cohere/ar-stt`, `distil-whisper/distil-large-v2`,
        # `openai/whisper-large-v3-turbo`, `telnyx/basira`). It can be the same model as
        # `transcription.model` on a different `language`.
        #
        # @see Telnyx::Models::AI::TranscriptionChallenger#model
        module Model
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_FLUX = :"deepgram/flux"
          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"
          DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
          AZURE_FAST = :"azure/fast"
          ASSEMBLYAI_UNIVERSAL_3_6_PRO = :"assemblyai/universal-3-6-pro"
          ASSEMBLYAI_UNIVERSAL_3_5_PRO = :"assemblyai/universal-3-5-pro"
          ASSEMBLYAI_UNIVERSAL_STREAMING = :"assemblyai/universal-streaming"
          XAI_GROK_STT = :"xai/grok-stt"
          SONIOX_STT_RT_V4 = :"soniox/stt-rt-v4"
          SONIOX_STT_RT_V5 = :"soniox/stt-rt-v5"
          NVIDIA_PARAKEET_V3 = :"nvidia/parakeet-v3"
          OMI_HEALTH_OMI_MED_STT_V1 = :"omi-health/omi-med-stt-v1"
          HUMAIN_REALTIME = :"humain/realtime"
          RESON8_TURNS = :"reson8/turns"
          COHERE_AR_STT = :"cohere/ar-stt"
          TELNYX_BASIRA = :"telnyx/basira"
          DISTIL_WHISPER_DISTIL_LARGE_V2 = :"distil-whisper/distil-large-v2"
          OPENAI_WHISPER_LARGE_V3_TURBO = :"openai/whisper-large-v3-turbo"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # How the assistant picks the transcript it uses. The models are compared on how
        # complete and confident their transcripts are, not on language, so the rules work
        # best when both models understand the callers' language.
        #
        # - `best_turn` (default): both models transcribe the whole call. Each turn uses
        #   the language booster's transcript only when it scores higher than the
        #   transcript of `transcription.model` (clearly higher with non-streaming
        #   models). With streaming models, `transcription.model` also decides when each
        #   turn ends. Available for every pair.
        # - `best_engine`: both models transcribe the first turns, then the call continues
        #   alone on the model whose transcripts scored higher. If neither clearly leads,
        #   `transcription.model` continues. Streaming models only.
        # - `merge_words`: both models transcribe each utterance and their words are
        #   merged, keeping Arabic and English spoken in the same sentence. Available only
        #   for `telnyx/basira` with `cohere/ar-stt`, in either order. The pair runs on
        #   the language that applies to `telnyx/basira` (its own, or that of
        #   `transcription.model`), which must be Arabic (`ar` or an `ar-` locale),
        #   `multi`, or `auto`.
        #
        # @see Telnyx::Models::AI::TranscriptionChallenger#rule
        module Rule
          extend Telnyx::Internal::Type::Enum

          BEST_TURN = :best_turn
          BEST_ENGINE = :best_engine
          MERGE_WORDS = :merge_words

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
