# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class DeepgramNova2Config < Telnyx::Internal::Type::BaseModel
        # @!attribute transcription_engine
        #
        #   @return [Symbol, Telnyx::Models::Calls::DeepgramNova2Config::TranscriptionEngine]
        required :transcription_engine, enum: -> { Telnyx::Calls::DeepgramNova2Config::TranscriptionEngine }

        # @!attribute transcription_model
        #
        #   @return [Symbol, Telnyx::Models::Calls::DeepgramNova2Config::TranscriptionModel]
        required :transcription_model, enum: -> { Telnyx::Calls::DeepgramNova2Config::TranscriptionModel }

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
        #   @return [Symbol, Telnyx::Models::Calls::DeepgramNova2Config::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::DeepgramNova2Config::Language }

        # @!method initialize(transcription_engine:, transcription_model:, keywords_boosting: nil, language: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::DeepgramNova2Config} for more details.
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::DeepgramNova2Config::TranscriptionEngine]
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::DeepgramNova2Config::TranscriptionModel]
        #
        #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
        #
        #   @param language [Symbol, Telnyx::Models::Calls::DeepgramNova2Config::Language] Language to use for speech recognition with nova-2 model

        # @see Telnyx::Models::Calls::DeepgramNova2Config#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM = :Deepgram

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Calls::DeepgramNova2Config#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_NOVA_2 = :"deepgram/nova-2"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Language to use for speech recognition with nova-2 model
        #
        # @see Telnyx::Models::Calls::DeepgramNova2Config#language
        module Language
          extend Telnyx::Internal::Type::Enum

          BG = :bg
          CA = :ca
          ZH_CN = :"zh-CN"
          ZH_HANS = :"zh-Hans"
          ZH_TW = :"zh-TW"
          ZH_HANT = :"zh-Hant"
          ZH_HK = :"zh-HK"
          CS = :cs
          DA_DK = :"da-DK"
          NL_BE = :"nl-BE"
          EN_US = :"en-US"
          EN_AU = :"en-AU"
          EN_GB = :"en-GB"
          EN_NZ = :"en-NZ"
          EN_IN = :"en-IN"
          ET = :et
          FI = :fi
          FR = :fr
          FR_CA = :"fr-CA"
          DE_CH = :"de-CH"
          EL = :el
          HI = :hi
          HU = :hu
          ID = :id
          IT = :it
          JA = :ja
          KO_KR = :"ko-KR"
          LV = :lv
          LT = :lt
          MS = :ms
          NO = :no
          PL = :pl
          PT_BR = :"pt-BR"
          PT_PT = :"pt-PT"
          RO = :ro
          RU = :ru
          SK = :sk
          ES_419 = :"es-419"
          SV_SE = :"sv-SE"
          TH_TH = :"th-TH"
          TR = :tr
          UK = :uk
          VI = :vi
          AUTO_DETECT = :auto_detect

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
