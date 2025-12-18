# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpeechToText#transcribe
    class SpeechToTextTranscribeParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute input_format
      #   The format of input audio stream.
      #
      #   @return [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::InputFormat]
      required :input_format, enum: -> { Telnyx::SpeechToTextTranscribeParams::InputFormat }

      # @!attribute transcription_engine
      #   The transcription engine to use for processing the audio stream.
      #
      #   @return [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::TranscriptionEngine]
      required :transcription_engine, enum: -> { Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine }

      # @!attribute interim_results
      #   Whether to receive interim transcription results.
      #
      #   @return [Boolean, nil]
      optional :interim_results, Telnyx::Internal::Type::Boolean

      # @!attribute language
      #   The language spoken in the audio stream.
      #
      #   @return [String, nil]
      optional :language, String

      # @!attribute model
      #   The specific model to use within the selected transcription engine.
      #
      #   @return [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::Model, nil]
      optional :model, enum: -> { Telnyx::SpeechToTextTranscribeParams::Model }

      # @!method initialize(input_format:, transcription_engine:, interim_results: nil, language: nil, model: nil, request_options: {})
      #   @param input_format [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::InputFormat] The format of input audio stream.
      #
      #   @param transcription_engine [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::TranscriptionEngine] The transcription engine to use for processing the audio stream.
      #
      #   @param interim_results [Boolean] Whether to receive interim transcription results.
      #
      #   @param language [String] The language spoken in the audio stream.
      #
      #   @param model [Symbol, Telnyx::Models::SpeechToTextTranscribeParams::Model] The specific model to use within the selected transcription engine.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The format of input audio stream.
      module InputFormat
        extend Telnyx::Internal::Type::Enum

        MP3 = :mp3
        WAV = :wav

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The transcription engine to use for processing the audio stream.
      module TranscriptionEngine
        extend Telnyx::Internal::Type::Enum

        AZURE = :Azure
        DEEPGRAM = :Deepgram
        GOOGLE = :Google
        TELNYX = :Telnyx

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The specific model to use within the selected transcription engine.
      module Model
        extend Telnyx::Internal::Type::Enum

        FAST = :fast
        DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
        DEEPGRAM_NOVA_3 = :"deepgram/nova-3"
        LATEST_LONG = :latest_long
        LATEST_SHORT = :latest_short
        COMMAND_AND_SEARCH = :command_and_search
        PHONE_CALL = :phone_call
        VIDEO = :video
        DEFAULT = :default
        MEDICAL_CONVERSATION = :medical_conversation
        MEDICAL_DICTATION = :medical_dictation
        OPENAI_WHISPER_TINY = :"openai/whisper-tiny"
        OPENAI_WHISPER_LARGE_V3_TURBO = :"openai/whisper-large-v3-turbo"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
