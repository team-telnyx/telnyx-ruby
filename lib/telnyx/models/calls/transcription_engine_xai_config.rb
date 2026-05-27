# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineXaiConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute interim_results
        #   Whether to send also interim results. If set to false, only final results will
        #   be sent.
        #
        #   @return [Boolean, nil]
        optional :interim_results, Telnyx::Internal::Type::Boolean

        # @!attribute language
        #   Language to use for speech recognition
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineXaiConfig::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineXaiConfig::Language }

        # @!attribute transcription_engine
        #   Engine identifier for xAI transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineXaiConfig::TranscriptionModel, nil]
        optional :transcription_model,
                 enum: -> { Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionModel }

        # @!method initialize(interim_results: nil, language: nil, transcription_engine: nil, transcription_model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineXaiConfig} for more details.
        #
        #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
        #
        #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineXaiConfig::Language] Language to use for speech recognition
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine] Engine identifier for xAI transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineXaiConfig::TranscriptionModel] The model to use for transcription.

        # Language to use for speech recognition
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineXaiConfig#language
        module Language
          extend Telnyx::Internal::Type::Enum

          AR = :ar
          CS = :cs
          DA = :da
          DE = :de
          EN = :en
          ES = :es
          FA = :fa
          FIL = :fil
          FR = :fr
          HI = :hi
          ID = :id
          IT = :it
          JA = :ja
          KO = :ko
          MK = :mk
          MS = :ms
          NL = :nl
          PL = :pl
          PT = :pt
          RO = :ro
          RU = :ru
          SV = :sv
          TH = :th
          TR = :tr
          VI = :vi

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Engine identifier for xAI transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineXaiConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          X_AI = :xAI

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineXaiConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          XAI_GROK_STT = :"xai/grok-stt"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
