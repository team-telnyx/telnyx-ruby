# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineBConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute language
        #   Language to use for speech recognition
        #
        #   @return [Symbol, Telnyx::Models::Calls::TelnyxTranscriptionLanguage, nil]
        optional :language, enum: -> { Telnyx::Calls::TelnyxTranscriptionLanguage }

        # @!attribute transcription_engine
        #   Engine identifier for Telnyx transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::TranscriptionModel, nil]
        optional :transcription_model, enum: -> { Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel }

        # @!method initialize(language: nil, transcription_engine: nil, transcription_model: nil)
        #   @param language [Symbol, Telnyx::Models::Calls::TelnyxTranscriptionLanguage] Language to use for speech recognition
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::TranscriptionEngine] Engine identifier for Telnyx transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::TranscriptionModel] The model to use for transcription.

        # Engine identifier for Telnyx transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineBConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          B = :B

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineBConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          OPENAI_WHISPER_TINY = :"openai/whisper-tiny"
          OPENAI_WHISPER_LARGE_V3_TURBO = :"openai/whisper-large-v3-turbo"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
