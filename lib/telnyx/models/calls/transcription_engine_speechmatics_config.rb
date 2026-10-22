# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineSpeechmaticsConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute interim_results
        #   Whether to send also interim results. If set to false, only final results will
        #   be sent.
        #
        #   @return [Boolean, nil]
        optional :interim_results, Telnyx::Internal::Type::Boolean

        # @!attribute language
        #   Language to use for speech recognition. Accepted values depend on the selected
        #   `transcription_model`. `speechmatics/standard` supports: `en`, `ba`, `eu`, `gl`,
        #   `ga`, `mt`, `mn`, `sw`, `ug`, `cy`, `ar_en`, `cmn_en`, `en_ms`, `en_ta`, `tl`,
        #   `es-bilingual-en`, `cmn_en_ms_ta`. `speechmatics/linden-1` (preview) supports
        #   the same languages as Speechmatics Realtime: `ar`, `ar_en`, `ba`, `be`, `bg`,
        #   `bn`, `ca`, `cmn`, `cmn_en`, `cmn_en_ms_ta`, `cs`, `cy`, `da`, `de`, `el`, `en`,
        #   `en_ms`, `en_ta`, `eo`, `es`, `es-bilingual-en`, `et`, `eu`, `fa`, `fi`, `fr`,
        #   `ga`, `gl`, `he`, `hi`, `hr`, `hu`, `ia`, `id`, `it`, `ja`, `ko`, `lt`, `lv`,
        #   `mn`, `mr`, `ms`, `mt`, `nl`, `no`, `pl`, `pt`, `ro`, `ru`, `sk`, `sl`, `sv`,
        #   `sw`, `ta`, `th`, `tl`, `tr`, `ug`, `uk`, `ur`, `vi`, `yue`, plus the spelling
        #   and script variants `en-US`, `en-GB`, `en-AU`, `cmn-Hans`, and `cmn-Hant` (`en`
        #   alone uses the default spelling). A value outside the selected model's list is
        #   rejected. For `speechmatics/standard`, unset, blank, `auto`, `auto_beta`, or
        #   `multi` defaults to `en`; for `speechmatics/linden-1`, only an unset language
        #   defaults to `en`, and `auto`, `auto_beta`, or `multi` is rejected.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language }

        # @!attribute transcription_engine
        #   Engine identifier for Speechmatics transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription. `speechmatics/linden-1` is a preview,
        #   vendor-hosted model with its own language support (see `language`).
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel, nil]
        optional :transcription_model,
                 enum: -> { Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel }

        # @!method initialize(interim_results: nil, language: nil, transcription_engine: nil, transcription_model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig} for more details.
        #
        #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
        #
        #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig::Language] Language to use for speech recognition. Accepted values depend on the selected `
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine] Engine identifier for Speechmatics transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel] The model to use for transcription. `speechmatics/linden-1` is a preview, vendor

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
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig#language
        module Language
          extend Telnyx::Internal::Type::Enum

          EN = :en
          BA = :ba
          EU = :eu
          GL = :gl
          GA = :ga
          MT = :mt
          MN = :mn
          SW = :sw
          UG = :ug
          CY = :cy
          AR_EN = :ar_en
          CMN_EN = :cmn_en
          EN_MS = :en_ms
          EN_TA = :en_ta
          TL = :tl
          ES_BILINGUAL_EN = :"es-bilingual-en"
          CMN_EN_MS_TA = :cmn_en_ms_ta
          AR = :ar
          BE = :be
          BG = :bg
          BN = :bn
          CA = :ca
          CMN = :cmn
          CS = :cs
          DA = :da
          DE = :de
          EL = :el
          EO = :eo
          ES = :es
          ET = :et
          FA = :fa
          FI = :fi
          FR = :fr
          HE = :he
          HI = :hi
          HR = :hr
          HU = :hu
          IA = :ia
          ID = :id
          IT = :it
          JA = :ja
          KO = :ko
          LT = :lt
          LV = :lv
          MR = :mr
          MS = :ms
          NL = :nl
          NO = :no
          PL = :pl
          PT = :pt
          RO = :ro
          RU = :ru
          SK = :sk
          SL = :sl
          SV = :sv
          TA = :ta
          TH = :th
          TR = :tr
          UK = :uk
          UR = :ur
          VI = :vi
          YUE = :yue
          EN_US = :"en-US"
          EN_GB = :"en-GB"
          EN_AU = :"en-AU"
          CMN_HANS = :"cmn-Hans"
          CMN_HANT = :"cmn-Hant"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Engine identifier for Speechmatics transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          SPEECHMATICS = :Speechmatics

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription. `speechmatics/linden-1` is a preview,
        # vendor-hosted model with its own language support (see `language`).
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          SPEECHMATICS_STANDARD = :"speechmatics/standard"
          SPEECHMATICS_LINDEN_1 = :"speechmatics/linden-1"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
