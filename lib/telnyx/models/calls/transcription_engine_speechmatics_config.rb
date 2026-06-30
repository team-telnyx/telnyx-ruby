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
        #   Language to use for speech recognition
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
        #   The model to use for transcription.
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
        #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig::Language] Language to use for speech recognition
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine] Engine identifier for Speechmatics transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel] The model to use for transcription.

        # Language to use for speech recognition
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

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          SPEECHMATICS_STANDARD = :"speechmatics/standard"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
