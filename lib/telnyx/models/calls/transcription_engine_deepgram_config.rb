# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineDeepgramConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute transcription_engine
        #   Engine identifier for Deepgram transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::TranscriptionEngine]
        required :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel]
        required :transcription_model,
                 enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel }

        # @!attribute language
        #   Language to use for speech recognition. Available languages depend on the
        #   selected model.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language }

        # @!method initialize(transcription_engine:, transcription_model:, language: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig} for more details.
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::TranscriptionEngine] Engine identifier for Deepgram transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel] The model to use for transcription.
        #
        #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::Language] Language to use for speech recognition. Available languages depend on the select

        # Engine identifier for Deepgram transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM = :Deepgram

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Language to use for speech recognition. Available languages depend on the
        # selected model.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig#language
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
    end
  end
end
