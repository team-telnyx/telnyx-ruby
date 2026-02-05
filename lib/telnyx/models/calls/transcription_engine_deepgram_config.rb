# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      module TranscriptionEngineDeepgramConfig
        extend Telnyx::Internal::Type::Union

        discriminator :transcription_model

        variant :"deepgram/nova-2", -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2 }

        variant :"deepgram/nova-3", -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3 }

        class DeepgramNova2 < Telnyx::Internal::Type::BaseModel
          # @!attribute transcription_engine
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2::TranscriptionEngine]
          required :transcription_engine,
                   enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2::TranscriptionEngine }

          # @!attribute transcription_model
          #
          #   @return [Symbol, :"deepgram/nova-2"]
          required :transcription_model, const: :"deepgram/nova-2"

          # @!attribute keywords_boosting
          #   Keywords and their respective intensifiers (boosting values) to improve
          #   transcription accuracy for specific words or phrases. The intensifier should be
          #   a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
          #
          #   @return [Hash{Symbol=>Float}, nil]
          optional :keywords_boosting, Telnyx::Internal::Type::HashOf[Float]

          # @!attribute language
          #   Language to use for speech recognition with nova-2 model
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2::Language, nil]
          optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2::Language }

          # @!method initialize(transcription_engine:, keywords_boosting: nil, language: nil, transcription_model: :"deepgram/nova-2")
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2} for
          #   more details.
          #
          #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2::TranscriptionEngine]
          #
          #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
          #
          #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2::Language] Language to use for speech recognition with nova-2 model
          #
          #   @param transcription_model [Symbol, :"deepgram/nova-2"]

          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2#transcription_engine
          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            DEEPGRAM = :Deepgram

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Language to use for speech recognition with nova-2 model
          #
          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2#language
          module Language
            extend Telnyx::Internal::Type::Enum

            BG = :bg
            CA = :ca
            ZH = :zh
            ZH_CN = :"zh-CN"
            ZH_HANS = :"zh-Hans"
            ZH_TW = :"zh-TW"
            ZH_HANT = :"zh-Hant"
            ZH_HK = :"zh-HK"
            CS = :cs
            DA = :da
            DA_DK = :"da-DK"
            NL = :nl
            EN = :en
            EN_US = :"en-US"
            EN_AU = :"en-AU"
            EN_GB = :"en-GB"
            EN_NZ = :"en-NZ"
            EN_IN = :"en-IN"
            ET = :et
            FI = :fi
            NL_BE = :"nl-BE"
            FR = :fr
            FR_CA = :"fr-CA"
            DE = :de
            DE_CH = :"de-CH"
            EL = :el
            HI = :hi
            HU = :hu
            ID = :id
            IT = :it
            JA = :ja
            KO = :ko
            KO_KR = :"ko-KR"
            LV = :lv
            LT = :lt
            MS = :ms
            NO = :no
            PL = :pl
            PT = :pt
            PT_BR = :"pt-BR"
            PT_PT = :"pt-PT"
            RO = :ro
            RU = :ru
            SK = :sk
            ES = :es
            ES_419 = :"es-419"
            SV = :sv
            SV_SE = :"sv-SE"
            TH = :th
            TH_TH = :"th-TH"
            TR = :tr
            UK = :uk
            VI = :vi
            AUTO_DETECT = :auto_detect

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class DeepgramNova3 < Telnyx::Internal::Type::BaseModel
          # @!attribute transcription_engine
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3::TranscriptionEngine]
          required :transcription_engine,
                   enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3::TranscriptionEngine }

          # @!attribute transcription_model
          #
          #   @return [Symbol, :"deepgram/nova-3"]
          required :transcription_model, const: :"deepgram/nova-3"

          # @!attribute keywords_boosting
          #   Keywords and their respective intensifiers (boosting values) to improve
          #   transcription accuracy for specific words or phrases. The intensifier should be
          #   a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
          #
          #   @return [Hash{Symbol=>Float}, nil]
          optional :keywords_boosting, Telnyx::Internal::Type::HashOf[Float]

          # @!attribute language
          #   Language to use for speech recognition with nova-3 model
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3::Language, nil]
          optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3::Language }

          # @!method initialize(transcription_engine:, keywords_boosting: nil, language: nil, transcription_model: :"deepgram/nova-3")
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3} for
          #   more details.
          #
          #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3::TranscriptionEngine]
          #
          #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
          #
          #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3::Language] Language to use for speech recognition with nova-3 model
          #
          #   @param transcription_model [Symbol, :"deepgram/nova-3"]

          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3#transcription_engine
          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            DEEPGRAM = :Deepgram

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Language to use for speech recognition with nova-3 model
          #
          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3#language
          module Language
            extend Telnyx::Internal::Type::Enum

            EN_US = :"en-US"
            EN_AU = :"en-AU"
            EN_GB = :"en-GB"
            EN_IN = :"en-IN"
            EN_NZ = :"en-NZ"
            DE = :de
            NL = :nl
            SV_SE = :"sv-SE"
            DA_DK = :"da-DK"
            ES = :es
            ES_419 = :"es-419"
            FR = :fr
            FR_CA = :"fr-CA"
            PT_BR = :"pt-BR"
            PT_PT = :"pt-PT"
            AUTO_DETECT = :auto_detect

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3)]
      end
    end
  end
end
