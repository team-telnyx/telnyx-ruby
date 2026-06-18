# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpeechToText#retrieve_transcription
    class SpeechToTextRetrieveTranscriptionParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute input_format
      #   The format of input audio stream.
      #
      #   @return [Symbol, Telnyx::Models::SpeechToTextRetrieveTranscriptionParams::InputFormat]
      required :input_format, enum: -> { Telnyx::SpeechToTextRetrieveTranscriptionParams::InputFormat }

      # @!attribute transcription_engine
      #   The transcription engine to use for processing the audio stream.
      #
      #   @return [Symbol, Telnyx::Models::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine]
      required :transcription_engine,
               enum: -> { Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine }

      # @!attribute endpointing
      #   Silence duration (in milliseconds) that triggers end-of-speech detection. When
      #   set, the engine uses this value to determine when a speaker has stopped talking.
      #   Supported by `xAI`, `Deepgram`, `Google`, `Speechmatics`, and `Soniox`. `Soniox`
      #   accepts values between 500 and 3000. Other engines may not support this
      #   parameter.
      #
      #   @return [Integer, nil]
      optional :endpointing, Integer

      # @!attribute interim_results
      #   Whether to receive interim transcription results.
      #
      #   @return [Boolean, nil]
      optional :interim_results, Telnyx::Internal::Type::Boolean

      # @!attribute keyterm
      #   A key term to boost in the transcription. The engine will be more likely to
      #   recognize this term. Can be specified multiple times for multiple terms.
      #
      #   @return [String, nil]
      optional :keyterm, String

      # @!attribute keywords
      #   Comma-separated list of keywords to boost in the transcription. The engine will
      #   prioritize recognition of these words.
      #
      #   @return [String, nil]
      optional :keywords, String

      # @!attribute language
      #   The language spoken in the audio stream.
      #
      #   @return [String, nil]
      optional :language, String

      # @!attribute model
      #   The specific model to use within the selected transcription engine.
      #
      #   @return [Symbol, Telnyx::Models::SpeechToTextRetrieveTranscriptionParams::Model, nil]
      optional :model, enum: -> { Telnyx::SpeechToTextRetrieveTranscriptionParams::Model }

      # @!attribute redact
      #   Enable redaction of sensitive information (e.g., PCI data, SSN) from
      #   transcription results. Supported values depend on the transcription engine.
      #
      #   @return [String, nil]
      optional :redact, String

      # @!method initialize(input_format:, transcription_engine:, endpointing: nil, interim_results: nil, keyterm: nil, keywords: nil, language: nil, model: nil, redact: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SpeechToTextRetrieveTranscriptionParams} for more details.
      #
      #   @param input_format [Symbol, Telnyx::Models::SpeechToTextRetrieveTranscriptionParams::InputFormat] The format of input audio stream.
      #
      #   @param transcription_engine [Symbol, Telnyx::Models::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine] The transcription engine to use for processing the audio stream.
      #
      #   @param endpointing [Integer] Silence duration (in milliseconds) that triggers end-of-speech detection. When s
      #
      #   @param interim_results [Boolean] Whether to receive interim transcription results.
      #
      #   @param keyterm [String] A key term to boost in the transcription. The engine will be more likely to reco
      #
      #   @param keywords [String] Comma-separated list of keywords to boost in the transcription. The engine will
      #
      #   @param language [String] The language spoken in the audio stream.
      #
      #   @param model [Symbol, Telnyx::Models::SpeechToTextRetrieveTranscriptionParams::Model] The specific model to use within the selected transcription engine.
      #
      #   @param redact [String] Enable redaction of sensitive information (e.g., PCI data, SSN) from transcripti
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
        X_AI = :xAI
        SPEECHMATICS = :Speechmatics
        SONIOX = :Soniox

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
        XAI_GROK_STT = :"xai/grok-stt"
        SPEECHMATICS_STANDARD = :"speechmatics/standard"
        SONIOX_STT_RT_V4 = :"soniox/stt-rt-v4"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
