# typed: strong

module Telnyx
  module Models
    module AI
      class TranscriptionSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::TranscriptionSettings, Telnyx::Internal::AnyHash)
          end

        # Integration secret identifier for the transcription provider API key. Currently
        # used for Azure transcription regions that require a customer-provided API key.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key_ref

        sig { params(api_key_ref: String).void }
        attr_writer :api_key_ref

        # A second speech-to-text model that transcribes alongside `transcription.model`,
        # and the rule that decides which transcript the assistant uses.
        sig do
          returns(T.nilable(Telnyx::AI::TranscriptionSettings::Challenger))
        end
        attr_reader :challenger

        sig do
          params(
            challenger:
              T.nilable(Telnyx::AI::TranscriptionSettings::Challenger::OrHash)
          ).void
        end
        attr_writer :challenger

        # Up to 3 streaming models that take over transcription, in this order, when the
        # model in use fails, at the start of a call or mid-call. `model` must be a
        # streaming model too, and must support `language` alongside other models. On
        # update, a list replaces the stored one: omit the field to keep the stored list,
        # or send `null` or `[]` to remove it. When an update changes `model` or
        # `language`, stored fallbacks that no longer fit are removed without an error.
        # Can't be combined with `challenger`, the language booster; to replace a stored
        # language booster, send `challenger: null` in the same request.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::AI::TranscriptionSettings::FallbackModel]
            )
          )
        end
        attr_accessor :fallback_models

        # The language of the audio to be transcribed. If not set, or if set to `auto`,
        # supported models will automatically detect the language. For `deepgram/flux`,
        # supported values are: `auto` (Telnyx language detection controls the language
        # hint), `multi` (no language hint), and language-specific hints `en`, `es`, `fr`,
        # `de`, `hi`, `ru`, `pt`, `ja`, `it`, and `nl`. For `soniox/stt-rt-v4` and
        # `soniox/stt-rt-v5`, `auto` omits the language hint and lets Soniox auto-detect;
        # ISO 639-1 codes (e.g. `en`, `es`) bias detection toward that language;
        # `settings.language_hints` can pin multiple languages at once instead. For
        # `humain/realtime`, supported values are `ar`, `en`, `codeswitch` (Arabic/English
        # code-switching), and `auto` (resolves server-side to code-switching). Unlike
        # other models, `humain/realtime` does not fall back to `auto` when `language` is
        # omitted — omitting it applies `en` instead. For `reson8/turns`, supported values
        # are `auto` (or unset) for automatic language detection, and the language codes
        # `nl`, `en`, `fr`, `fy`, `de`, `it`, `pl`, `pt`, `es`, and `sv` to fix the
        # transcription language. For `cohere/ar-stt`, supported values are `ar` and `en`;
        # unlike other models, this model does not auto-detect and defaults to `ar` when
        # `language` is omitted.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

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
        sig do
          returns(T.nilable(Telnyx::AI::TranscriptionSettings::Model::OrSymbol))
        end
        attr_reader :model

        sig do
          params(model: Telnyx::AI::TranscriptionSettings::Model::OrSymbol).void
        end
        attr_writer :model

        # Region on third party cloud providers (currently Azure) if using one of their
        # models. Some regions require `api_key_ref`.
        sig { returns(T.nilable(String)) }
        attr_reader :region

        sig { params(region: String).void }
        attr_writer :region

        sig { returns(T.nilable(Telnyx::AI::TranscriptionSettingsConfig)) }
        attr_reader :settings

        sig do
          params(settings: Telnyx::AI::TranscriptionSettingsConfig::OrHash).void
        end
        attr_writer :settings

        sig do
          params(
            api_key_ref: String,
            challenger:
              T.nilable(Telnyx::AI::TranscriptionSettings::Challenger::OrHash),
            fallback_models:
              T.nilable(
                T::Array[
                  Telnyx::AI::TranscriptionSettings::FallbackModel::OrHash
                ]
              ),
            language: String,
            model: Telnyx::AI::TranscriptionSettings::Model::OrSymbol,
            region: String,
            settings: Telnyx::AI::TranscriptionSettingsConfig::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Integration secret identifier for the transcription provider API key. Currently
          # used for Azure transcription regions that require a customer-provided API key.
          api_key_ref: nil,
          # A second speech-to-text model that transcribes alongside `transcription.model`,
          # and the rule that decides which transcript the assistant uses.
          challenger: nil,
          # Up to 3 streaming models that take over transcription, in this order, when the
          # model in use fails, at the start of a call or mid-call. `model` must be a
          # streaming model too, and must support `language` alongside other models. On
          # update, a list replaces the stored one: omit the field to keep the stored list,
          # or send `null` or `[]` to remove it. When an update changes `model` or
          # `language`, stored fallbacks that no longer fit are removed without an error.
          # Can't be combined with `challenger`, the language booster; to replace a stored
          # language booster, send `challenger: null` in the same request.
          fallback_models: nil,
          # The language of the audio to be transcribed. If not set, or if set to `auto`,
          # supported models will automatically detect the language. For `deepgram/flux`,
          # supported values are: `auto` (Telnyx language detection controls the language
          # hint), `multi` (no language hint), and language-specific hints `en`, `es`, `fr`,
          # `de`, `hi`, `ru`, `pt`, `ja`, `it`, and `nl`. For `soniox/stt-rt-v4` and
          # `soniox/stt-rt-v5`, `auto` omits the language hint and lets Soniox auto-detect;
          # ISO 639-1 codes (e.g. `en`, `es`) bias detection toward that language;
          # `settings.language_hints` can pin multiple languages at once instead. For
          # `humain/realtime`, supported values are `ar`, `en`, `codeswitch` (Arabic/English
          # code-switching), and `auto` (resolves server-side to code-switching). Unlike
          # other models, `humain/realtime` does not fall back to `auto` when `language` is
          # omitted — omitting it applies `en` instead. For `reson8/turns`, supported values
          # are `auto` (or unset) for automatic language detection, and the language codes
          # `nl`, `en`, `fr`, `fy`, `de`, `it`, `pl`, `pt`, `es`, and `sv` to fix the
          # transcription language. For `cohere/ar-stt`, supported values are `ar` and `en`;
          # unlike other models, this model does not auto-detect and defaults to `ar` when
          # `language` is omitted.
          language: nil,
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
          model: nil,
          # Region on third party cloud providers (currently Azure) if using one of their
          # models. Some regions require `api_key_ref`.
          region: nil,
          settings: nil
        )
        end

        sig do
          override.returns(
            {
              api_key_ref: String,
              challenger:
                T.nilable(Telnyx::AI::TranscriptionSettings::Challenger),
              fallback_models:
                T.nilable(
                  T::Array[Telnyx::AI::TranscriptionSettings::FallbackModel]
                ),
              language: String,
              model: Telnyx::AI::TranscriptionSettings::Model::OrSymbol,
              region: String,
              settings: Telnyx::AI::TranscriptionSettingsConfig
            }
          )
        end
        def to_hash
        end

        class Challenger < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::TranscriptionSettings::Challenger,
                Telnyx::Internal::AnyHash
              )
            end

          # The language booster's model. It must be the same kind of model as
          # `transcription.model`: both streaming (`deepgram/flux`, `deepgram/nova-3`,
          # `deepgram/nova-2`, `assemblyai/universal-3-5-pro` or its legacy alias
          # `assemblyai/universal-streaming`, `xai/grok-stt`, `soniox/stt-rt-v4`,
          # `soniox/stt-rt-v5`, `humain/realtime`, `reson8/turns`) or both non-streaming
          # (`azure/fast`, `nvidia/parakeet-v3`, `omi-health/omi-med-stt-v1`,
          # `cohere/ar-stt`, `distil-whisper/distil-large-v2`,
          # `openai/whisper-large-v3-turbo`, `telnyx/basira`). It can be the same model as
          # `transcription.model` on a different `language`.
          sig do
            returns(
              Telnyx::AI::TranscriptionSettings::Challenger::Model::OrSymbol
            )
          end
          attr_accessor :model

          # The language this model transcribes. Omit it or set it to `null` to use the
          # language of `transcription.model`. The request is rejected when this model
          # doesn't support the language it would run. It is also rejected when it would run
          # the same model on the same language as `transcription.model`.
          sig { returns(T.nilable(String)) }
          attr_accessor :language

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
          sig do
            returns(
              T.nilable(
                Telnyx::AI::TranscriptionSettings::Challenger::Rule::OrSymbol
              )
            )
          end
          attr_reader :rule

          sig do
            params(
              rule:
                Telnyx::AI::TranscriptionSettings::Challenger::Rule::OrSymbol
            ).void
          end
          attr_writer :rule

          # Settings for the language booster, with the same fields and limits as
          # `transcription.settings`. Fields that don't apply to this model's provider are
          # dropped, and the provider's defaults fill in the rest. Omit it or set it to
          # `null` to use the settings of `transcription.model` where they apply to this
          # model.
          sig { returns(T.nilable(Telnyx::AI::TranscriptionSettingsConfig)) }
          attr_reader :settings

          sig do
            params(
              settings:
                T.nilable(Telnyx::AI::TranscriptionSettingsConfig::OrHash)
            ).void
          end
          attr_writer :settings

          # A second speech-to-text model that transcribes alongside `transcription.model`,
          # and the rule that decides which transcript the assistant uses.
          sig do
            params(
              model:
                Telnyx::AI::TranscriptionSettings::Challenger::Model::OrSymbol,
              language: T.nilable(String),
              rule:
                Telnyx::AI::TranscriptionSettings::Challenger::Rule::OrSymbol,
              settings:
                T.nilable(Telnyx::AI::TranscriptionSettingsConfig::OrHash)
            ).returns(T.attached_class)
          end
          def self.new(
            # The language booster's model. It must be the same kind of model as
            # `transcription.model`: both streaming (`deepgram/flux`, `deepgram/nova-3`,
            # `deepgram/nova-2`, `assemblyai/universal-3-5-pro` or its legacy alias
            # `assemblyai/universal-streaming`, `xai/grok-stt`, `soniox/stt-rt-v4`,
            # `soniox/stt-rt-v5`, `humain/realtime`, `reson8/turns`) or both non-streaming
            # (`azure/fast`, `nvidia/parakeet-v3`, `omi-health/omi-med-stt-v1`,
            # `cohere/ar-stt`, `distil-whisper/distil-large-v2`,
            # `openai/whisper-large-v3-turbo`, `telnyx/basira`). It can be the same model as
            # `transcription.model` on a different `language`.
            model:,
            # The language this model transcribes. Omit it or set it to `null` to use the
            # language of `transcription.model`. The request is rejected when this model
            # doesn't support the language it would run. It is also rejected when it would run
            # the same model on the same language as `transcription.model`.
            language: nil,
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
            rule: nil,
            # Settings for the language booster, with the same fields and limits as
            # `transcription.settings`. Fields that don't apply to this model's provider are
            # dropped, and the provider's defaults fill in the rest. Omit it or set it to
            # `null` to use the settings of `transcription.model` where they apply to this
            # model.
            settings: nil
          )
          end

          sig do
            override.returns(
              {
                model:
                  Telnyx::AI::TranscriptionSettings::Challenger::Model::OrSymbol,
                language: T.nilable(String),
                rule:
                  Telnyx::AI::TranscriptionSettings::Challenger::Rule::OrSymbol,
                settings: T.nilable(Telnyx::AI::TranscriptionSettingsConfig)
              }
            )
          end
          def to_hash
          end

          # The language booster's model. It must be the same kind of model as
          # `transcription.model`: both streaming (`deepgram/flux`, `deepgram/nova-3`,
          # `deepgram/nova-2`, `assemblyai/universal-3-5-pro` or its legacy alias
          # `assemblyai/universal-streaming`, `xai/grok-stt`, `soniox/stt-rt-v4`,
          # `soniox/stt-rt-v5`, `humain/realtime`, `reson8/turns`) or both non-streaming
          # (`azure/fast`, `nvidia/parakeet-v3`, `omi-health/omi-med-stt-v1`,
          # `cohere/ar-stt`, `distil-whisper/distil-large-v2`,
          # `openai/whisper-large-v3-turbo`, `telnyx/basira`). It can be the same model as
          # `transcription.model` on a different `language`.
          module Model
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::TranscriptionSettings::Challenger::Model
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM_FLUX =
              T.let(
                :"deepgram/flux",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            DEEPGRAM_NOVA_3 =
              T.let(
                :"deepgram/nova-3",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            DEEPGRAM_NOVA_2 =
              T.let(
                :"deepgram/nova-2",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            AZURE_FAST =
              T.let(
                :"azure/fast",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            ASSEMBLYAI_UNIVERSAL_3_5_PRO =
              T.let(
                :"assemblyai/universal-3-5-pro",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            ASSEMBLYAI_UNIVERSAL_STREAMING =
              T.let(
                :"assemblyai/universal-streaming",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            XAI_GROK_STT =
              T.let(
                :"xai/grok-stt",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            SONIOX_STT_RT_V4 =
              T.let(
                :"soniox/stt-rt-v4",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            SONIOX_STT_RT_V5 =
              T.let(
                :"soniox/stt-rt-v5",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            NVIDIA_PARAKEET_V3 =
              T.let(
                :"nvidia/parakeet-v3",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            OMI_HEALTH_OMI_MED_STT_V1 =
              T.let(
                :"omi-health/omi-med-stt-v1",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            HUMAIN_REALTIME =
              T.let(
                :"humain/realtime",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            RESON8_TURNS =
              T.let(
                :"reson8/turns",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            COHERE_AR_STT =
              T.let(
                :"cohere/ar-stt",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            TELNYX_BASIRA =
              T.let(
                :"telnyx/basira",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            DISTIL_WHISPER_DISTIL_LARGE_V2 =
              T.let(
                :"distil-whisper/distil-large-v2",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )
            OPENAI_WHISPER_LARGE_V3_TURBO =
              T.let(
                :"openai/whisper-large-v3-turbo",
                Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::TranscriptionSettings::Challenger::Model::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          module Rule
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::TranscriptionSettings::Challenger::Rule
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BEST_TURN =
              T.let(
                :best_turn,
                Telnyx::AI::TranscriptionSettings::Challenger::Rule::TaggedSymbol
              )
            BEST_ENGINE =
              T.let(
                :best_engine,
                Telnyx::AI::TranscriptionSettings::Challenger::Rule::TaggedSymbol
              )
            MERGE_WORDS =
              T.let(
                :merge_words,
                Telnyx::AI::TranscriptionSettings::Challenger::Rule::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::TranscriptionSettings::Challenger::Rule::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class FallbackModel < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::TranscriptionSettings::FallbackModel,
                Telnyx::Internal::AnyHash
              )
            end

          # The fallback model. It must be a streaming model other than
          # `transcription.model` and the other fallbacks: `deepgram/flux`,
          # `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-5-pro` (or its
          # legacy alias `assemblyai/universal-streaming`), `xai/grok-stt`,
          # `soniox/stt-rt-v4`, `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
          sig do
            returns(
              Telnyx::AI::TranscriptionSettings::FallbackModel::Model::OrSymbol
            )
          end
          attr_accessor :model

          # The language the fallback transcribes. Omit it or set it to `null` to use the
          # language of `transcription.model`. The request is rejected when the fallback
          # model doesn't support the language it would run.
          sig { returns(T.nilable(String)) }
          attr_accessor :language

          # Settings for the fallback, with the same fields and limits as
          # `transcription.settings`. Fields that don't apply to this model's provider are
          # dropped, and the provider's defaults fill in the rest. Omit it or set it to
          # `null` to use the settings of `transcription.model` where they apply to this
          # model.
          sig { returns(T.nilable(Telnyx::AI::TranscriptionSettingsConfig)) }
          attr_reader :settings

          sig do
            params(
              settings:
                T.nilable(Telnyx::AI::TranscriptionSettingsConfig::OrHash)
            ).void
          end
          attr_writer :settings

          # A streaming speech-to-text model that takes over transcription when the model in
          # use fails.
          sig do
            params(
              model:
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::OrSymbol,
              language: T.nilable(String),
              settings:
                T.nilable(Telnyx::AI::TranscriptionSettingsConfig::OrHash)
            ).returns(T.attached_class)
          end
          def self.new(
            # The fallback model. It must be a streaming model other than
            # `transcription.model` and the other fallbacks: `deepgram/flux`,
            # `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-5-pro` (or its
            # legacy alias `assemblyai/universal-streaming`), `xai/grok-stt`,
            # `soniox/stt-rt-v4`, `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
            model:,
            # The language the fallback transcribes. Omit it or set it to `null` to use the
            # language of `transcription.model`. The request is rejected when the fallback
            # model doesn't support the language it would run.
            language: nil,
            # Settings for the fallback, with the same fields and limits as
            # `transcription.settings`. Fields that don't apply to this model's provider are
            # dropped, and the provider's defaults fill in the rest. Omit it or set it to
            # `null` to use the settings of `transcription.model` where they apply to this
            # model.
            settings: nil
          )
          end

          sig do
            override.returns(
              {
                model:
                  Telnyx::AI::TranscriptionSettings::FallbackModel::Model::OrSymbol,
                language: T.nilable(String),
                settings: T.nilable(Telnyx::AI::TranscriptionSettingsConfig)
              }
            )
          end
          def to_hash
          end

          # The fallback model. It must be a streaming model other than
          # `transcription.model` and the other fallbacks: `deepgram/flux`,
          # `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-5-pro` (or its
          # legacy alias `assemblyai/universal-streaming`), `xai/grok-stt`,
          # `soniox/stt-rt-v4`, `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
          module Model
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::TranscriptionSettings::FallbackModel::Model
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM_FLUX =
              T.let(
                :"deepgram/flux",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )
            DEEPGRAM_NOVA_3 =
              T.let(
                :"deepgram/nova-3",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )
            DEEPGRAM_NOVA_2 =
              T.let(
                :"deepgram/nova-2",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )
            ASSEMBLYAI_UNIVERSAL_3_5_PRO =
              T.let(
                :"assemblyai/universal-3-5-pro",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )
            ASSEMBLYAI_UNIVERSAL_STREAMING =
              T.let(
                :"assemblyai/universal-streaming",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )
            XAI_GROK_STT =
              T.let(
                :"xai/grok-stt",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )
            SONIOX_STT_RT_V4 =
              T.let(
                :"soniox/stt-rt-v4",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )
            SONIOX_STT_RT_V5 =
              T.let(
                :"soniox/stt-rt-v5",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )
            HUMAIN_REALTIME =
              T.let(
                :"humain/realtime",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )
            RESON8_TURNS =
              T.let(
                :"reson8/turns",
                Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::TranscriptionSettings::FallbackModel::Model::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
        module Model
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::TranscriptionSettings::Model)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM_FLUX =
            T.let(
              :"deepgram/flux",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          DEEPGRAM_NOVA_3 =
            T.let(
              :"deepgram/nova-3",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          DEEPGRAM_NOVA_2 =
            T.let(
              :"deepgram/nova-2",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          AZURE_FAST =
            T.let(
              :"azure/fast",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          ASSEMBLYAI_UNIVERSAL_3_5_PRO =
            T.let(
              :"assemblyai/universal-3-5-pro",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          ASSEMBLYAI_UNIVERSAL_STREAMING =
            T.let(
              :"assemblyai/universal-streaming",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          XAI_GROK_STT =
            T.let(
              :"xai/grok-stt",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          SONIOX_STT_RT_V4 =
            T.let(
              :"soniox/stt-rt-v4",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          SONIOX_STT_RT_V5 =
            T.let(
              :"soniox/stt-rt-v5",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          NVIDIA_PARAKEET_V3 =
            T.let(
              :"nvidia/parakeet-v3",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          OMI_HEALTH_OMI_MED_STT_V1 =
            T.let(
              :"omi-health/omi-med-stt-v1",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          HUMAIN_REALTIME =
            T.let(
              :"humain/realtime",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          RESON8_TURNS =
            T.let(
              :"reson8/turns",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          COHERE_AR_STT =
            T.let(
              :"cohere/ar-stt",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          TELNYX_BASIRA =
            T.let(
              :"telnyx/basira",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          DISTIL_WHISPER_DISTIL_LARGE_V2 =
            T.let(
              :"distil-whisper/distil-large-v2",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )
          OPENAI_WHISPER_LARGE_V3_TURBO =
            T.let(
              :"openai/whisper-large-v3-turbo",
              Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::TranscriptionSettings::Model::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
