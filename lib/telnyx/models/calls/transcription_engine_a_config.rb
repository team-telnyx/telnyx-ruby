# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineAConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute enable_speaker_diarization
        #   Enables speaker diarization.
        #
        #   @return [Boolean, nil]
        optional :enable_speaker_diarization, Telnyx::Internal::Type::Boolean

        # @!attribute hints
        #   Hints to improve transcription accuracy.
        #
        #   @return [Array<String>, nil]
        optional :hints, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute interim_results
        #   Whether to send also interim results. If set to false, only final results will
        #   be sent.
        #
        #   @return [Boolean, nil]
        optional :interim_results, Telnyx::Internal::Type::Boolean

        # @!attribute language
        #   Language to use for speech recognition
        #
        #   @return [Symbol, Telnyx::Models::Calls::GoogleTranscriptionLanguage, nil]
        optional :language, enum: -> { Telnyx::Calls::GoogleTranscriptionLanguage }

        # @!attribute max_speaker_count
        #   Defines maximum number of speakers in the conversation.
        #
        #   @return [Integer, nil]
        optional :max_speaker_count, Integer

        # @!attribute min_speaker_count
        #   Defines minimum number of speakers in the conversation.
        #
        #   @return [Integer, nil]
        optional :min_speaker_count, Integer

        # @!attribute model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineAConfig::Model, nil]
        optional :model, enum: -> { Telnyx::Calls::TranscriptionEngineAConfig::Model }

        # @!attribute profanity_filter
        #   Enables profanity_filter.
        #
        #   @return [Boolean, nil]
        optional :profanity_filter, Telnyx::Internal::Type::Boolean

        # @!attribute speech_context
        #   Speech context to improve transcription accuracy.
        #
        #   @return [Array<Telnyx::Models::Calls::TranscriptionEngineAConfig::SpeechContext>, nil]
        optional :speech_context,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::TranscriptionEngineAConfig::SpeechContext] }

        # @!attribute transcription_engine
        #   Engine identifier for Google transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineAConfig::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineAConfig::TranscriptionEngine }

        # @!attribute use_enhanced
        #   Enables enhanced transcription, this works for models `phone_call` and `video`.
        #
        #   @return [Boolean, nil]
        optional :use_enhanced, Telnyx::Internal::Type::Boolean

        # @!method initialize(enable_speaker_diarization: nil, hints: nil, interim_results: nil, language: nil, max_speaker_count: nil, min_speaker_count: nil, model: nil, profanity_filter: nil, speech_context: nil, transcription_engine: nil, use_enhanced: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineAConfig} for more details.
        #
        #   @param enable_speaker_diarization [Boolean] Enables speaker diarization.
        #
        #   @param hints [Array<String>] Hints to improve transcription accuracy.
        #
        #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
        #
        #   @param language [Symbol, Telnyx::Models::Calls::GoogleTranscriptionLanguage] Language to use for speech recognition
        #
        #   @param max_speaker_count [Integer] Defines maximum number of speakers in the conversation.
        #
        #   @param min_speaker_count [Integer] Defines minimum number of speakers in the conversation.
        #
        #   @param model [Symbol, Telnyx::Models::Calls::TranscriptionEngineAConfig::Model] The model to use for transcription.
        #
        #   @param profanity_filter [Boolean] Enables profanity_filter.
        #
        #   @param speech_context [Array<Telnyx::Models::Calls::TranscriptionEngineAConfig::SpeechContext>] Speech context to improve transcription accuracy.
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineAConfig::TranscriptionEngine] Engine identifier for Google transcription service
        #
        #   @param use_enhanced [Boolean] Enables enhanced transcription, this works for models `phone_call` and `video`.

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineAConfig#model
        module Model
          extend Telnyx::Internal::Type::Enum

          LATEST_LONG = :latest_long
          LATEST_SHORT = :latest_short
          COMMAND_AND_SEARCH = :command_and_search
          PHONE_CALL = :phone_call
          VIDEO = :video
          DEFAULT = :default
          MEDICAL_CONVERSATION = :medical_conversation
          MEDICAL_DICTATION = :medical_dictation

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class SpeechContext < Telnyx::Internal::Type::BaseModel
          # @!attribute boost
          #   Boost factor for the speech context.
          #
          #   @return [Float, nil]
          optional :boost, Float

          # @!attribute phrases
          #
          #   @return [Array<String>, nil]
          optional :phrases, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(boost: nil, phrases: nil)
          #   @param boost [Float] Boost factor for the speech context.
          #
          #   @param phrases [Array<String>]
        end

        # Engine identifier for Google transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineAConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          A = :A

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
