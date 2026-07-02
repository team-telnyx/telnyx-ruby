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

        # @!attribute hints
        #   Nova-2 keyword biasing without intensifiers. Up to 100 terms to bias recognition
        #   toward. For weighted biasing, use `keywords_boosting` instead. Nova-2-only; use
        #   `keyterms` on Nova-3.
        #
        #   @return [Array<String>, nil]
        optional :hints, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute interim_results
        #   Whether to send also interim results. If set to false, only final results will
        #   be sent.
        #
        #   @return [Boolean, nil]
        optional :interim_results, Telnyx::Internal::Type::Boolean

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

        # @!attribute smart_format
        #   Enable Deepgram's smart formatting (capitalization, punctuation, and digit
        #   normalization). Note: Telnyx defaults this to `true`, overriding Deepgram's
        #   underlying default of `false` — omit the field to get a smart-formatted
        #   transcript, or set it to `false` to receive the raw lowercase transcript without
        #   punctuation.
        #
        #   @return [Boolean, nil]
        optional :smart_format, Telnyx::Internal::Type::Boolean

        # @!attribute utterance_end_ms
        #   Number of milliseconds of silence to consider an utterance ended. Ranges from 0
        #   to 5000 ms.
        #
        #   @return [Integer, nil]
        optional :utterance_end_ms, Integer

        # @!method initialize(transcription_engine:, transcription_model:, hints: nil, interim_results: nil, keywords_boosting: nil, language: nil, smart_format: nil, utterance_end_ms: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::DeepgramNova2Config} for more details.
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::DeepgramNova2Config::TranscriptionEngine]
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::DeepgramNova2Config::TranscriptionModel]
        #
        #   @param hints [Array<String>] Nova-2 keyword biasing without intensifiers. Up to 100 terms to bias recognition
        #
        #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
        #
        #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
        #
        #   @param language [Symbol, Telnyx::Models::Calls::DeepgramNova2Config::Language] Language to use for speech recognition with nova-2 model
        #
        #   @param smart_format [Boolean] Enable Deepgram's smart formatting (capitalization, punctuation, and digit norma
        #
        #   @param utterance_end_ms [Integer] Number of milliseconds of silence to consider an utterance ended. Ranges from 0

        # @see Telnyx::Models::Calls::DeepgramNova2Config#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_NOVA_2 = :"deepgram/nova-2"

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
