# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class DeepgramNova3Config < Telnyx::Internal::Type::BaseModel
        # @!attribute transcription_engine
        #
        #   @return [Symbol, Telnyx::Models::Calls::DeepgramNova3Config::TranscriptionEngine]
        required :transcription_engine, enum: -> { Telnyx::Calls::DeepgramNova3Config::TranscriptionEngine }

        # @!attribute transcription_model
        #
        #   @return [Symbol, Telnyx::Models::Calls::DeepgramNova3Config::TranscriptionModel]
        required :transcription_model, enum: -> { Telnyx::Calls::DeepgramNova3Config::TranscriptionModel }

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
        #   Language to use for speech recognition with nova-3 model
        #
        #   @return [Symbol, Telnyx::Models::Calls::DeepgramNova3Config::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::DeepgramNova3Config::Language }

        # @!attribute utterance_end_ms
        #   Number of milliseconds of silence to consider an utterance ended. Ranges from 0
        #   to 5000 ms.
        #
        #   @return [Integer, nil]
        optional :utterance_end_ms, Integer

        # @!method initialize(transcription_engine:, transcription_model:, interim_results: nil, keywords_boosting: nil, language: nil, utterance_end_ms: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::DeepgramNova3Config} for more details.
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::DeepgramNova3Config::TranscriptionEngine]
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::DeepgramNova3Config::TranscriptionModel]
        #
        #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
        #
        #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
        #
        #   @param language [Symbol, Telnyx::Models::Calls::DeepgramNova3Config::Language] Language to use for speech recognition with nova-3 model
        #
        #   @param utterance_end_ms [Integer] Number of milliseconds of silence to consider an utterance ended. Ranges from 0

        # @see Telnyx::Models::Calls::DeepgramNova3Config#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM = :Deepgram

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Calls::DeepgramNova3Config#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Language to use for speech recognition with nova-3 model
        #
        # @see Telnyx::Models::Calls::DeepgramNova3Config#language
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
    end
  end
end
