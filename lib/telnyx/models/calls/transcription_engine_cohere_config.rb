# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineCohereConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute language
        #   The language of the audio to be transcribed. Unlike other self-hosted models,
        #   Cohere does not auto-detect the language; `auto` is not supported.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineCohereConfig::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineCohereConfig::Language }

        # @!attribute transcription_engine
        #   Engine identifier for Cohere transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineCohereConfig::TranscriptionModel, nil]
        optional :transcription_model,
                 enum: -> { Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionModel }

        # @!method initialize(language: nil, transcription_engine: nil, transcription_model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineCohereConfig} for more details.
        #
        #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineCohereConfig::Language] The language of the audio to be transcribed. Unlike other self-hosted models, Co
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine] Engine identifier for Cohere transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineCohereConfig::TranscriptionModel] The model to use for transcription.

        # The language of the audio to be transcribed. Unlike other self-hosted models,
        # Cohere does not auto-detect the language; `auto` is not supported.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineCohereConfig#language
        module Language
          extend Telnyx::Internal::Type::Enum

          AR = :ar
          EN = :en

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Engine identifier for Cohere transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineCohereConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          COHERE = :Cohere

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineCohereConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          COHERE_AR_STT = :"cohere/ar-stt"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
