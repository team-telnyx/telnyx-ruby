# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineParakeetConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute interim_results
        #   Whether to send also interim results. If set to false, only final results will
        #   be sent.
        #
        #   @return [Boolean, nil]
        optional :interim_results, Telnyx::Internal::Type::Boolean

        # @!attribute transcription_engine
        #   Engine identifier for Parakeet transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel, nil]
        optional :transcription_model,
                 enum: -> { Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel }

        # @!method initialize(interim_results: nil, transcription_engine: nil, transcription_model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineParakeetConfig} for more details.
        #
        #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine] Engine identifier for Parakeet transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel] The model to use for transcription.

        # Engine identifier for Parakeet transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineParakeetConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          PARAKEET = :Parakeet

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineParakeetConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          PARAKEET_TDT_0_6B_V3 = :"parakeet/tdt-0.6b-v3"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
