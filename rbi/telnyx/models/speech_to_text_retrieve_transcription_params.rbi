# typed: strong

module Telnyx
  module Models
    class SpeechToTextRetrieveTranscriptionParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SpeechToTextRetrieveTranscriptionParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The format of input audio stream.
      sig do
        returns(
          Telnyx::SpeechToTextRetrieveTranscriptionParams::InputFormat::OrSymbol
        )
      end
      attr_accessor :input_format

      # The transcription engine to use for processing the audio stream.
      sig do
        returns(
          Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::OrSymbol
        )
      end
      attr_accessor :transcription_engine

      # Silence duration (in milliseconds) that triggers end-of-speech detection. When
      # set, the engine uses this value to determine when a speaker has stopped talking.
      # Supported by `xAI`, `Deepgram`, `Google`, `Speechmatics`, and `Soniox`. `Soniox`
      # accepts values between 500 and 3000. Other engines may not support this
      # parameter.
      sig { returns(T.nilable(Integer)) }
      attr_reader :endpointing

      sig { params(endpointing: Integer).void }
      attr_writer :endpointing

      # Whether to receive interim transcription results.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :interim_results

      sig { params(interim_results: T::Boolean).void }
      attr_writer :interim_results

      # A key term to boost in the transcription. The engine will be more likely to
      # recognize this term. Can be specified multiple times for multiple terms.
      sig { returns(T.nilable(String)) }
      attr_reader :keyterm

      sig { params(keyterm: String).void }
      attr_writer :keyterm

      # Comma-separated list of keywords to boost in the transcription. The engine will
      # prioritize recognition of these words.
      sig { returns(T.nilable(String)) }
      attr_reader :keywords

      sig { params(keywords: String).void }
      attr_writer :keywords

      # The language spoken in the audio stream.
      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      # The specific model to use within the selected transcription engine.
      sig do
        returns(
          T.nilable(
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::OrSymbol
          )
        )
      end
      attr_reader :model

      sig do
        params(
          model:
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::OrSymbol
        ).void
      end
      attr_writer :model

      # Enable redaction of sensitive information (e.g., PCI data, SSN) from
      # transcription results. Supported values depend on the transcription engine.
      sig { returns(T.nilable(String)) }
      attr_reader :redact

      sig { params(redact: String).void }
      attr_writer :redact

      sig do
        params(
          input_format:
            Telnyx::SpeechToTextRetrieveTranscriptionParams::InputFormat::OrSymbol,
          transcription_engine:
            Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::OrSymbol,
          endpointing: Integer,
          interim_results: T::Boolean,
          keyterm: String,
          keywords: String,
          language: String,
          model:
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::OrSymbol,
          redact: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The format of input audio stream.
        input_format:,
        # The transcription engine to use for processing the audio stream.
        transcription_engine:,
        # Silence duration (in milliseconds) that triggers end-of-speech detection. When
        # set, the engine uses this value to determine when a speaker has stopped talking.
        # Supported by `xAI`, `Deepgram`, `Google`, `Speechmatics`, and `Soniox`. `Soniox`
        # accepts values between 500 and 3000. Other engines may not support this
        # parameter.
        endpointing: nil,
        # Whether to receive interim transcription results.
        interim_results: nil,
        # A key term to boost in the transcription. The engine will be more likely to
        # recognize this term. Can be specified multiple times for multiple terms.
        keyterm: nil,
        # Comma-separated list of keywords to boost in the transcription. The engine will
        # prioritize recognition of these words.
        keywords: nil,
        # The language spoken in the audio stream.
        language: nil,
        # The specific model to use within the selected transcription engine.
        model: nil,
        # Enable redaction of sensitive information (e.g., PCI data, SSN) from
        # transcription results. Supported values depend on the transcription engine.
        redact: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            input_format:
              Telnyx::SpeechToTextRetrieveTranscriptionParams::InputFormat::OrSymbol,
            transcription_engine:
              Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::OrSymbol,
            endpointing: Integer,
            interim_results: T::Boolean,
            keyterm: String,
            keywords: String,
            language: String,
            model:
              Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::OrSymbol,
            redact: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The format of input audio stream.
      module InputFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::SpeechToTextRetrieveTranscriptionParams::InputFormat
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MP3 =
          T.let(
            :mp3,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::InputFormat::TaggedSymbol
          )
        WAV =
          T.let(
            :wav,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::InputFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SpeechToTextRetrieveTranscriptionParams::InputFormat::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The transcription engine to use for processing the audio stream.
      module TranscriptionEngine
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AZURE =
          T.let(
            :Azure,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::TaggedSymbol
          )
        DEEPGRAM =
          T.let(
            :Deepgram,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::TaggedSymbol
          )
        GOOGLE =
          T.let(
            :Google,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::TaggedSymbol
          )
        TELNYX =
          T.let(
            :Telnyx,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::TaggedSymbol
          )
        X_AI =
          T.let(
            :xAI,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::TaggedSymbol
          )
        SPEECHMATICS =
          T.let(
            :Speechmatics,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::TaggedSymbol
          )
        SONIOX =
          T.let(
            :Soniox,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SpeechToTextRetrieveTranscriptionParams::TranscriptionEngine::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The specific model to use within the selected transcription engine.
      module Model
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::SpeechToTextRetrieveTranscriptionParams::Model
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAST =
          T.let(
            :fast,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        DEEPGRAM_NOVA_2 =
          T.let(
            :"deepgram/nova-2",
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        DEEPGRAM_NOVA_3 =
          T.let(
            :"deepgram/nova-3",
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        LATEST_LONG =
          T.let(
            :latest_long,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        LATEST_SHORT =
          T.let(
            :latest_short,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        COMMAND_AND_SEARCH =
          T.let(
            :command_and_search,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        PHONE_CALL =
          T.let(
            :phone_call,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        VIDEO =
          T.let(
            :video,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        DEFAULT =
          T.let(
            :default,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        MEDICAL_CONVERSATION =
          T.let(
            :medical_conversation,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        MEDICAL_DICTATION =
          T.let(
            :medical_dictation,
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        OPENAI_WHISPER_TINY =
          T.let(
            :"openai/whisper-tiny",
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        OPENAI_WHISPER_LARGE_V3_TURBO =
          T.let(
            :"openai/whisper-large-v3-turbo",
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        XAI_GROK_STT =
          T.let(
            :"xai/grok-stt",
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        SPEECHMATICS_STANDARD =
          T.let(
            :"speechmatics/standard",
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )
        SONIOX_STT_RT_V4 =
          T.let(
            :"soniox/stt-rt-v4",
            Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SpeechToTextRetrieveTranscriptionParams::Model::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
