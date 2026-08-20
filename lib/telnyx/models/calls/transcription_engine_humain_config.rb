# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineHumainConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute language
        #   The language of the audio to be transcribed. `codeswitch` enables Arabic/English
        #   code-switching. `auto` resolves server-side to code-switching.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineHumainConfig::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineHumainConfig::Language }

        # @!attribute transcription_engine
        #   Engine identifier for Humain transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineHumainConfig::TranscriptionModel, nil]
        optional :transcription_model,
                 enum: -> { Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionModel }

        # @!method initialize(language: nil, transcription_engine: nil, transcription_model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineHumainConfig} for more details.
        #
        #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineHumainConfig::Language] The language of the audio to be transcribed. `codeswitch` enables Arabic/English
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine] Engine identifier for Humain transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineHumainConfig::TranscriptionModel] The model to use for transcription.

        # The language of the audio to be transcribed. `codeswitch` enables Arabic/English
        # code-switching. `auto` resolves server-side to code-switching.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineHumainConfig#language
        module Language
          extend Telnyx::Internal::Type::Enum

          AR = :ar
          EN = :en
          CODESWITCH = :codeswitch
          AUTO = :auto

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Engine identifier for Humain transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineHumainConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          HUMAIN = :Humain

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineHumainConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          HUMAIN_REALTIME = :"humain/realtime"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
