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
        #   @return [Telnyx::Models::AI::TranscriptionChallenger, nil]
        optional :challenger, -> { Telnyx::AI::TranscriptionChallenger }, nil?: true

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
        #   @return [Array<Telnyx::Models::AI::TranscriptionFallbackModel>, nil]
        optional :fallback_models,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::TranscriptionFallbackModel] },
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
        #   `language` is omitted. For `speechmatics/linden-1`, there is no auto-detect; set
        #   a code from Speechmatics' Realtime language list (67 language codes, including
        #   `es-bilingual-en` for Spanish and English bilingual, and the spelling and script
        #   variants `en-US`, `en-GB`, `en-AU`, `cmn-Hans`, and `cmn-Hant`; `en` alone uses
        #   the default spelling); unset defaults to `en`, while an explicit `auto`,
        #   `auto_beta`, or `multi` is rejected with a 400.
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
        #   - `speechmatics/standard` is a Speechmatics model self-hosted by Telnyx; it
        #     supports a fixed set of language packs (including bilingual packs such as
        #     `ar_en`) and defaults to `en`.
        #   - `speechmatics/linden-1` (preview) is a vendor-hosted streaming model with no
        #     auto-detect; set `language` from Speechmatics' Realtime language list
        #     (defaults to `en`).
        #   - `azure/fast` is a multilingual Azure transcription model.
        #   - `assemblyai/universal-3-6-pro` (AssemblyAI Universal-3.6 Pro) is a
        #     multilingual streaming model with configurable turn detection. The legacy
        #     aliases `assemblyai/universal-3-5-pro` and `assemblyai/universal-streaming`
        #     are still accepted and run the same model.
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
        #   @param challenger [Telnyx::Models::AI::TranscriptionChallenger, nil] A second speech-to-text model that transcribes alongside `transcription.model`,
        #
        #   @param fallback_models [Array<Telnyx::Models::AI::TranscriptionFallbackModel>, nil] Up to 3 streaming models that take over transcription, in this order, when the m
        #
        #   @param language [String] The language of the audio to be transcribed. If not set, or if set to `auto`, su
        #
        #   @param model [Symbol, Telnyx::Models::AI::TranscriptionSettings::Model] The speech to text model to be used by the voice assistant. All Deepgram models
        #
        #   @param region [String] Region on third party cloud providers (currently Azure) if using one of their mo
        #
        #   @param settings [Telnyx::Models::AI::TranscriptionSettingsConfig]

        # The speech to text model to be used by the voice assistant. All Deepgram models
        # are run on-premise.
        #
        # - `deepgram/flux` is optimized for turn-taking with multilingual language hints.
        # - `deepgram/nova-3` is multilingual with automatic language detection.
        # - `deepgram/nova-2` is Deepgram's previous-generation multilingual model.
        # - `speechmatics/standard` is a Speechmatics model self-hosted by Telnyx; it
        #   supports a fixed set of language packs (including bilingual packs such as
        #   `ar_en`) and defaults to `en`.
        # - `speechmatics/linden-1` (preview) is a vendor-hosted streaming model with no
        #   auto-detect; set `language` from Speechmatics' Realtime language list
        #   (defaults to `en`).
        # - `azure/fast` is a multilingual Azure transcription model.
        # - `assemblyai/universal-3-6-pro` (AssemblyAI Universal-3.6 Pro) is a
        #   multilingual streaming model with configurable turn detection. The legacy
        #   aliases `assemblyai/universal-3-5-pro` and `assemblyai/universal-streaming`
        #   are still accepted and run the same model.
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
          SPEECHMATICS_STANDARD = :"speechmatics/standard"
          SPEECHMATICS_LINDEN_1 = :"speechmatics/linden-1"
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
      end
    end
  end
end
