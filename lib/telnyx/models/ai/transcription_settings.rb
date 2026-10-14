# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TranscriptionSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute api_key_ref
        #   Integration secret identifier for the transcription provider API key. Currently
        #   used for Azure transcription regions that require a customer-provided API key.
        #
        #   @return [String, nil]
        optional :api_key_ref, String

        # @!attribute challenger
        #   A second speech-to-text model that transcribes alongside `transcription.model`,
        #   and the rule that decides which transcript the assistant uses.
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettings::Challenger, nil]
        optional :challenger, -> { Telnyx::AI::TranscriptionSettings::Challenger }, nil?: true

        # @!attribute fallback_models
        #   Up to 3 streaming models that take over transcription, in this order, when the
        #   model in use fails, at the start of a call or mid-call. `model` must be a
        #   streaming model too, and must support `language` alongside other models. On
        #   update, a list replaces the stored one: omit the field to keep the stored list,
        #   or send `null` or `[]` to remove it. When an update changes `model` or
        #   `language`, stored fallbacks that no longer fit are removed without an error.
        #   Can't be combined with `challenger`, the language booster; to replace a stored
        #   language booster, send `challenger: null` in the same request.
        #
        #   @return [Array<Telnyx::Models::AI::TranscriptionSettings::FallbackModel>, nil]
        optional :fallback_models,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::TranscriptionSettings::FallbackModel] },
                 nil?: true

        # @!attribute language
        #   The language of the audio to be transcribed. If not set, or if set to `auto`,
        #   supported models will automatically detect the language. For `deepgram/flux`,
        #   supported values are: `auto` (Telnyx language detection controls the language
        #   hint), `multi` (no language hint), and language-specific hints `en`, `es`, `fr`,
        #   `de`, `hi`, `ru`, `pt`, `ja`, `it`, and `nl`. For `soniox/stt-rt-v4` and
        #   `soniox/stt-rt-v5`, `auto` omits the language hint and lets Soniox auto-detect;
        #   ISO 639-1 codes (e.g. `en`, `es`) bias detection toward that language;
        #   `settings.language_hints` can pin multiple languages at once instead. For
        #   `humain/realtime`, supported values are `ar`, `en`, `codeswitch` (Arabic/English
        #   code-switching), and `auto` (resolves server-side to code-switching). Unlike
        #   other models, `humain/realtime` does not fall back to `auto` when `language` is
        #   omitted — omitting it applies `en` instead. For `reson8/turns`, supported values
        #   are `auto` (or unset) for automatic language detection, and the language codes
        #   `nl`, `en`, `fr`, `fy`, `de`, `it`, `pl`, `pt`, `es`, and `sv` to fix the
        #   transcription language. For `cohere/ar-stt`, supported values are `ar` and `en`;
        #   unlike other models, this model does not auto-detect and defaults to `ar` when
        #   `language` is omitted.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute model
        #   The speech to text model to be used by the voice assistant. All Deepgram models
        #   are run on-premise.
        #
        #   - `deepgram/flux` is optimized for turn-taking with multilingual language hints.
        #   - `deepgram/nova-3` is multilingual with automatic language detection.
        #   - `deepgram/nova-2` is Deepgram's previous-generation multilingual model.
        #   - `azure/fast` is a multilingual Azure transcription model.
        #   - `assemblyai/universal-3-5-pro` is a multilingual streaming model with
        #     configurable turn detection. The legacy alias `assemblyai/universal-streaming`
        #     is still accepted and resolves to the same model.
        #   - `xai/grok-stt` is a multilingual Grok STT model.
        #   - `soniox/stt-rt-v4` and `soniox/stt-rt-v5` are multilingual streaming models
        #     with automatic language detection, configurable endpointing, term biasing
        #     (`context`), and `language_hints`.
        #   - `nvidia/parakeet-v3` is a multilingual transcription model with automatic
        #     language detection.
        #   - `omi-health/omi-med-stt-v1` is an English-only medical transcription model
        #     (Parakeet-based).
        #   - `humain/realtime` is a streaming model with native Arabic and Arabic/English
        #     code-switching support.
        #   - `reson8/turns` is a turn-based streaming model covering 10 European languages
        #     with automatic language detection.
        #   - `cohere/ar-stt` is a non-streaming Arabic and English transcription model.
        #   - `telnyx/basira` is a non-streaming Arabic transcription model.
        #
        #   @return [Symbol, Telnyx::Models::AI::TranscriptionSettings::Model, nil]
        optional :model, enum: -> { Telnyx::AI::TranscriptionSettings::Model }

        # @!attribute region
        #   Region on third party cloud providers (currently Azure) if using one of their
        #   models. Some regions require `api_key_ref`.
        #
        #   @return [String, nil]
        optional :region, String

        # @!attribute settings
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettingsConfig, nil]
        optional :settings, -> { Telnyx::AI::TranscriptionSettingsConfig }

        # @!method initialize(api_key_ref: nil, challenger: nil, fallback_models: nil, language: nil, model: nil, region: nil, settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TranscriptionSettings} for more details.
        #
        #   @param api_key_ref [String] Integration secret identifier for the transcription provider API key. Currently
        #
        #   @param challenger [Telnyx::Models::AI::TranscriptionSettings::Challenger, nil] A second speech-to-text model that transcribes alongside `transcription.model`,
        #
        #   @param fallback_models [Array<Telnyx::Models::AI::TranscriptionSettings::FallbackModel>, nil] Up to 3 streaming models that take over transcription, in this order, when the m
        #
        #   @param language [String] The language of the audio to be transcribed. If not set, or if set to `auto`, su
        #
        #   @param model [Symbol, Telnyx::Models::AI::TranscriptionSettings::Model] The speech to text model to be used by the voice assistant. All Deepgram models
        #
        #   @param region [String] Region on third party cloud providers (currently Azure) if using one of their mo
        #
        #   @param settings [Telnyx::Models::AI::TranscriptionSettingsConfig]

        # @see Telnyx::Models::AI::TranscriptionSettings#challenger
        class Challenger < Telnyx::Internal::Type::BaseModel
          # @!attribute model
          #   The language booster's model. It must be the same kind of model as
          #   `transcription.model`: both streaming (`deepgram/flux`, `deepgram/nova-3`,
          #   `deepgram/nova-2`, `assemblyai/universal-3-5-pro` or its legacy alias
          #   `assemblyai/universal-streaming`, `xai/grok-stt`, `soniox/stt-rt-v4`,
          #   `soniox/stt-rt-v5`, `humain/realtime`, `reson8/turns`) or both non-streaming
          #   (`azure/fast`, `nvidia/parakeet-v3`, `omi-health/omi-med-stt-v1`,
          #   `cohere/ar-stt`, `distil-whisper/distil-large-v2`,
          #   `openai/whisper-large-v3-turbo`, `telnyx/basira`). It can be the same model as
          #   `transcription.model` on a different `language`.
          #
          #   @return [Symbol, Telnyx::Models::AI::TranscriptionSettings::Challenger::Model]
          required :model, enum: -> { Telnyx::AI::TranscriptionSettings::Challenger::Model }

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
          #   @return [Symbol, Telnyx::Models::AI::TranscriptionSettings::Challenger::Rule, nil]
          optional :rule, enum: -> { Telnyx::AI::TranscriptionSettings::Challenger::Rule }

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
          #   {Telnyx::Models::AI::TranscriptionSettings::Challenger} for more details.
          #
          #   A second speech-to-text model that transcribes alongside `transcription.model`,
          #   and the rule that decides which transcript the assistant uses.
          #
          #   @param model [Symbol, Telnyx::Models::AI::TranscriptionSettings::Challenger::Model] The language booster's model. It must be the same kind of model as `transcriptio
          #
          #   @param language [String, nil] The language this model transcribes. Omit it or set it to `null` to use the lang
          #
          #   @param rule [Symbol, Telnyx::Models::AI::TranscriptionSettings::Challenger::Rule] How the assistant picks the transcript it uses. The models are compared on how c
          #
          #   @param settings [Telnyx::Models::AI::TranscriptionSettingsConfig, nil] Settings for the language booster, with the same fields and limits as `transcrip

          # The language booster's model. It must be the same kind of model as
          # `transcription.model`: both streaming (`deepgram/flux`, `deepgram/nova-3`,
          # `deepgram/nova-2`, `assemblyai/universal-3-5-pro` or its legacy alias
          # `assemblyai/universal-streaming`, `xai/grok-stt`, `soniox/stt-rt-v4`,
          # `soniox/stt-rt-v5`, `humain/realtime`, `reson8/turns`) or both non-streaming
          # (`azure/fast`, `nvidia/parakeet-v3`, `omi-health/omi-med-stt-v1`,
          # `cohere/ar-stt`, `distil-whisper/distil-large-v2`,
          # `openai/whisper-large-v3-turbo`, `telnyx/basira`). It can be the same model as
          # `transcription.model` on a different `language`.
          #
          # @see Telnyx::Models::AI::TranscriptionSettings::Challenger#model
          module Model
            extend Telnyx::Internal::Type::Enum

            DEEPGRAM_FLUX = :"deepgram/flux"
            DEEPGRAM_NOVA_3 = :"deepgram/nova-3"
            DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
            AZURE_FAST = :"azure/fast"
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
          # @see Telnyx::Models::AI::TranscriptionSettings::Challenger#rule
          module Rule
            extend Telnyx::Internal::Type::Enum

            BEST_TURN = :best_turn
            BEST_ENGINE = :best_engine
            MERGE_WORDS = :merge_words

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class FallbackModel < Telnyx::Internal::Type::BaseModel
          # @!attribute model
          #   The fallback model. It must be a streaming model other than
          #   `transcription.model` and the other fallbacks: `deepgram/flux`,
          #   `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-5-pro` (or its
          #   legacy alias `assemblyai/universal-streaming`), `xai/grok-stt`,
          #   `soniox/stt-rt-v4`, `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
          #
          #   @return [Symbol, Telnyx::Models::AI::TranscriptionSettings::FallbackModel::Model]
          required :model, enum: -> { Telnyx::AI::TranscriptionSettings::FallbackModel::Model }

          # @!attribute language
          #   The language the fallback transcribes. Omit it or set it to `null` to use the
          #   language of `transcription.model`. The request is rejected when the fallback
          #   model doesn't support the language it would run.
          #
          #   @return [String, nil]
          optional :language, String, nil?: true

          # @!attribute settings
          #   Settings for the fallback, with the same fields and limits as
          #   `transcription.settings`. Fields that don't apply to this model's provider are
          #   dropped, and the provider's defaults fill in the rest. Omit it or set it to
          #   `null` to use the settings of `transcription.model` where they apply to this
          #   model.
          #
          #   @return [Telnyx::Models::AI::TranscriptionSettingsConfig, nil]
          optional :settings, -> { Telnyx::AI::TranscriptionSettingsConfig }, nil?: true

          # @!method initialize(model:, language: nil, settings: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::TranscriptionSettings::FallbackModel} for more details.
          #
          #   A streaming speech-to-text model that takes over transcription when the model in
          #   use fails.
          #
          #   @param model [Symbol, Telnyx::Models::AI::TranscriptionSettings::FallbackModel::Model] The fallback model. It must be a streaming model other than `transcription.model
          #
          #   @param language [String, nil] The language the fallback transcribes. Omit it or set it to `null` to use the la
          #
          #   @param settings [Telnyx::Models::AI::TranscriptionSettingsConfig, nil] Settings for the fallback, with the same fields and limits as `transcription.set

          # The fallback model. It must be a streaming model other than
          # `transcription.model` and the other fallbacks: `deepgram/flux`,
          # `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-5-pro` (or its
          # legacy alias `assemblyai/universal-streaming`), `xai/grok-stt`,
          # `soniox/stt-rt-v4`, `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
          #
          # @see Telnyx::Models::AI::TranscriptionSettings::FallbackModel#model
          module Model
            extend Telnyx::Internal::Type::Enum

            DEEPGRAM_FLUX = :"deepgram/flux"
            DEEPGRAM_NOVA_3 = :"deepgram/nova-3"
            DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
            ASSEMBLYAI_UNIVERSAL_3_5_PRO = :"assemblyai/universal-3-5-pro"
            ASSEMBLYAI_UNIVERSAL_STREAMING = :"assemblyai/universal-streaming"
            XAI_GROK_STT = :"xai/grok-stt"
            SONIOX_STT_RT_V4 = :"soniox/stt-rt-v4"
            SONIOX_STT_RT_V5 = :"soniox/stt-rt-v5"
            HUMAIN_REALTIME = :"humain/realtime"
            RESON8_TURNS = :"reson8/turns"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The speech to text model to be used by the voice assistant. All Deepgram models
        # are run on-premise.
        #
        # - `deepgram/flux` is optimized for turn-taking with multilingual language hints.
        # - `deepgram/nova-3` is multilingual with automatic language detection.
        # - `deepgram/nova-2` is Deepgram's previous-generation multilingual model.
        # - `azure/fast` is a multilingual Azure transcription model.
        # - `assemblyai/universal-3-5-pro` is a multilingual streaming model with
        #   configurable turn detection. The legacy alias `assemblyai/universal-streaming`
        #   is still accepted and resolves to the same model.
        # - `xai/grok-stt` is a multilingual Grok STT model.
        # - `soniox/stt-rt-v4` and `soniox/stt-rt-v5` are multilingual streaming models
        #   with automatic language detection, configurable endpointing, term biasing
        #   (`context`), and `language_hints`.
        # - `nvidia/parakeet-v3` is a multilingual transcription model with automatic
        #   language detection.
        # - `omi-health/omi-med-stt-v1` is an English-only medical transcription model
        #   (Parakeet-based).
        # - `humain/realtime` is a streaming model with native Arabic and Arabic/English
        #   code-switching support.
        # - `reson8/turns` is a turn-based streaming model covering 10 European languages
        #   with automatic language detection.
        # - `cohere/ar-stt` is a non-streaming Arabic and English transcription model.
        # - `telnyx/basira` is a non-streaming Arabic transcription model.
        #
        # @see Telnyx::Models::AI::TranscriptionSettings#model
        module Model
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_FLUX = :"deepgram/flux"
          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"
          DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
          AZURE_FAST = :"azure/fast"
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
      end
    end
  end
end
