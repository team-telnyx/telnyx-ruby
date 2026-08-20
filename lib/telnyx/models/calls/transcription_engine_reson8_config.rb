# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineReson8Config < Telnyx::Internal::Type::BaseModel
        # @!attribute language
        #   The language of the audio to be transcribed. `auto` (the default, also applied
        #   when `language` is omitted) enables automatic language detection.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineReson8Config::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineReson8Config::Language }

        # @!attribute transcription_engine
        #   Engine identifier for Reson8 transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineReson8Config::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineReson8Config::TranscriptionModel, nil]
        optional :transcription_model,
                 enum: -> { Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionModel }

        # @!method initialize(language: nil, transcription_engine: nil, transcription_model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineReson8Config} for more details.
        #
        #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineReson8Config::Language] The language of the audio to be transcribed. `auto` (the default, also applied w
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineReson8Config::TranscriptionEngine] Engine identifier for Reson8 transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineReson8Config::TranscriptionModel] The model to use for transcription.

        # The language of the audio to be transcribed. `auto` (the default, also applied
        # when `language` is omitted) enables automatic language detection.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineReson8Config#language
        module Language
          extend Telnyx::Internal::Type::Enum

          AUTO = :auto
          NL = :nl
          EN = :en
          FR = :fr
          FY = :fy
          DE = :de
          IT = :it
          PL = :pl
          PT = :pt
          ES = :es
          SV = :sv

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Engine identifier for Reson8 transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineReson8Config#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          RESON8 = :Reson8

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineReson8Config#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          RESON8_TURNS = :"reson8/turns"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
