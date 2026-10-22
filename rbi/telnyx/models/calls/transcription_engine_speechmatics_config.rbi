# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineSpeechmaticsConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether to send also interim results. If set to false, only final results will
        # be sent.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :interim_results

        sig { params(interim_results: T::Boolean).void }
        attr_writer :interim_results

        # Language to use for speech recognition. Accepted values depend on the selected
        # `transcription_model`. `speechmatics/standard` supports: `en`, `ba`, `eu`, `gl`,
        # `ga`, `mt`, `mn`, `sw`, `ug`, `cy`, `ar_en`, `cmn_en`, `en_ms`, `en_ta`, `tl`,
        # `es-bilingual-en`, `cmn_en_ms_ta`. `speechmatics/linden-1` (preview) supports
        # the same languages as Speechmatics Realtime: `ar`, `ar_en`, `ba`, `be`, `bg`,
        # `bn`, `ca`, `cmn`, `cmn_en`, `cmn_en_ms_ta`, `cs`, `cy`, `da`, `de`, `el`, `en`,
        # `en_ms`, `en_ta`, `eo`, `es`, `es-bilingual-en`, `et`, `eu`, `fa`, `fi`, `fr`,
        # `ga`, `gl`, `he`, `hi`, `hr`, `hu`, `ia`, `id`, `it`, `ja`, `ko`, `lt`, `lv`,
        # `mn`, `mr`, `ms`, `mt`, `nl`, `no`, `pl`, `pt`, `ro`, `ru`, `sk`, `sl`, `sv`,
        # `sw`, `ta`, `th`, `tl`, `tr`, `ug`, `uk`, `ur`, `vi`, `yue`, plus the spelling
        # and script variants `en-US`, `en-GB`, `en-AU`, `cmn-Hans`, and `cmn-Hant` (`en`
        # alone uses the default spelling). A value outside the selected model's list is
        # rejected. For `speechmatics/standard`, unset, blank, `auto`, `auto_beta`, or
        # `multi` defaults to `en`; for `speechmatics/linden-1`, only an unset language
        # defaults to `en`, and `auto`, `auto_beta`, or `multi` is rejected.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # Engine identifier for Speechmatics transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription. `speechmatics/linden-1` is a preview,
        # vendor-hosted model with its own language support (see `language`).
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            interim_results: T::Boolean,
            language:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::OrSymbol,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          interim_results: nil,
          # Language to use for speech recognition. Accepted values depend on the selected
          # `transcription_model`. `speechmatics/standard` supports: `en`, `ba`, `eu`, `gl`,
          # `ga`, `mt`, `mn`, `sw`, `ug`, `cy`, `ar_en`, `cmn_en`, `en_ms`, `en_ta`, `tl`,
          # `es-bilingual-en`, `cmn_en_ms_ta`. `speechmatics/linden-1` (preview) supports
          # the same languages as Speechmatics Realtime: `ar`, `ar_en`, `ba`, `be`, `bg`,
          # `bn`, `ca`, `cmn`, `cmn_en`, `cmn_en_ms_ta`, `cs`, `cy`, `da`, `de`, `el`, `en`,
          # `en_ms`, `en_ta`, `eo`, `es`, `es-bilingual-en`, `et`, `eu`, `fa`, `fi`, `fr`,
          # `ga`, `gl`, `he`, `hi`, `hr`, `hu`, `ia`, `id`, `it`, `ja`, `ko`, `lt`, `lv`,
          # `mn`, `mr`, `ms`, `mt`, `nl`, `no`, `pl`, `pt`, `ro`, `ru`, `sk`, `sl`, `sv`,
          # `sw`, `ta`, `th`, `tl`, `tr`, `ug`, `uk`, `ur`, `vi`, `yue`, plus the spelling
          # and script variants `en-US`, `en-GB`, `en-AU`, `cmn-Hans`, and `cmn-Hant` (`en`
          # alone uses the default spelling). A value outside the selected model's list is
          # rejected. For `speechmatics/standard`, unset, blank, `auto`, `auto_beta`, or
          # `multi` defaults to `en`; for `speechmatics/linden-1`, only an unset language
          # defaults to `en`, and `auto`, `auto_beta`, or `multi` is rejected.
          language: nil,
          # Engine identifier for Speechmatics transcription service
          transcription_engine: nil,
          # The model to use for transcription. `speechmatics/linden-1` is a preview,
          # vendor-hosted model with its own language support (see `language`).
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              interim_results: T::Boolean,
              language:
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::OrSymbol,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Language to use for speech recognition. Accepted values depend on the selected
        # `transcription_model`. `speechmatics/standard` supports: `en`, `ba`, `eu`, `gl`,
        # `ga`, `mt`, `mn`, `sw`, `ug`, `cy`, `ar_en`, `cmn_en`, `en_ms`, `en_ta`, `tl`,
        # `es-bilingual-en`, `cmn_en_ms_ta`. `speechmatics/linden-1` (preview) supports
        # the same languages as Speechmatics Realtime: `ar`, `ar_en`, `ba`, `be`, `bg`,
        # `bn`, `ca`, `cmn`, `cmn_en`, `cmn_en_ms_ta`, `cs`, `cy`, `da`, `de`, `el`, `en`,
        # `en_ms`, `en_ta`, `eo`, `es`, `es-bilingual-en`, `et`, `eu`, `fa`, `fi`, `fr`,
        # `ga`, `gl`, `he`, `hi`, `hr`, `hu`, `ia`, `id`, `it`, `ja`, `ko`, `lt`, `lv`,
        # `mn`, `mr`, `ms`, `mt`, `nl`, `no`, `pl`, `pt`, `ro`, `ru`, `sk`, `sl`, `sv`,
        # `sw`, `ta`, `th`, `tl`, `tr`, `ug`, `uk`, `ur`, `vi`, `yue`, plus the spelling
        # and script variants `en-US`, `en-GB`, `en-AU`, `cmn-Hans`, and `cmn-Hant` (`en`
        # alone uses the default spelling). A value outside the selected model's list is
        # rejected. For `speechmatics/standard`, unset, blank, `auto`, `auto_beta`, or
        # `multi` defaults to `en`; for `speechmatics/linden-1`, only an unset language
        # defaults to `en`, and `auto`, `auto_beta`, or `multi` is rejected.
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN =
            T.let(
              :en,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          AR_EN =
            T.let(
              :ar_en,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CMN_EN =
            T.let(
              :cmn_en,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :en_ms,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EN_TA =
            T.let(
              :en_ta,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          ES_BILINGUAL_EN =
            T.let(
              :"es-bilingual-en",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CMN_EN_MS_TA =
            T.let(
              :cmn_en_ms_ta,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CMN =
            T.let(
              :cmn,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-US",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-GB",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-AU",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CMN_HANS =
            T.let(
              :"cmn-Hans",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CMN_HANT =
            T.let(
              :"cmn-Hant",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Engine identifier for Speechmatics transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SPEECHMATICS =
            T.let(
              :Speechmatics,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The model to use for transcription. `speechmatics/linden-1` is a preview,
        # vendor-hosted model with its own language support (see `language`).
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SPEECHMATICS_STANDARD =
            T.let(
              :"speechmatics/standard",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::TaggedSymbol
            )
          SPEECHMATICS_LINDEN_1 =
            T.let(
              :"speechmatics/linden-1",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
