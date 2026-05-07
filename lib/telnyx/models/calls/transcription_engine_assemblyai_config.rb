# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineAssemblyaiConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute interim_results
        #   Whether to send also interim results. If set to false, only final results will
        #   be sent.
        #
        #   @return [Boolean, nil]
        optional :interim_results, Telnyx::Internal::Type::Boolean

        # @!attribute transcription_engine
        #   Engine identifier for AssemblyAI transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel, nil]
        optional :transcription_model,
                 enum: -> { Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel }

        # @!method initialize(interim_results: nil, transcription_engine: nil, transcription_model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig} for more details.
        #
        #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine] Engine identifier for AssemblyAI transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel] The model to use for transcription.

        # Engine identifier for AssemblyAI transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          ASSEMBLY_AI = :AssemblyAI

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          ASSEMBLYAI_UNIVERSAL_STREAMING = :"assemblyai/universal-streaming"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
