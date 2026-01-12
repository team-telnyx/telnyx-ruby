# typed: strong

module Telnyx
  module Models
    class SpeechToTextTranscribeParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SpeechToTextTranscribeParams, Telnyx::Internal::AnyHash)
        end

      # The format of input audio stream.
      sig do
        returns(Telnyx::SpeechToTextTranscribeParams::InputFormat::OrSymbol)
      end
      attr_accessor :input_format

      # The transcription engine to use for processing the audio stream.
      sig do
        returns(
          Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine::OrSymbol
        )
      end
      attr_accessor :transcription_engine

      # Whether to receive interim transcription results.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :interim_results

      sig { params(interim_results: T::Boolean).void }
      attr_writer :interim_results

      # The language spoken in the audio stream.
      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      # The specific model to use within the selected transcription engine.
      sig do
        returns(
          T.nilable(Telnyx::SpeechToTextTranscribeParams::Model::OrSymbol)
        )
      end
      attr_reader :model

      sig do
        params(
          model: Telnyx::SpeechToTextTranscribeParams::Model::OrSymbol
        ).void
      end
      attr_writer :model

      sig do
        params(
          input_format:
            Telnyx::SpeechToTextTranscribeParams::InputFormat::OrSymbol,
          transcription_engine:
            Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine::OrSymbol,
          interim_results: T::Boolean,
          language: String,
          model: Telnyx::SpeechToTextTranscribeParams::Model::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The format of input audio stream.
        input_format:,
        # The transcription engine to use for processing the audio stream.
        transcription_engine:,
        # Whether to receive interim transcription results.
        interim_results: nil,
        # The language spoken in the audio stream.
        language: nil,
        # The specific model to use within the selected transcription engine.
        model: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            input_format:
              Telnyx::SpeechToTextTranscribeParams::InputFormat::OrSymbol,
            transcription_engine:
              Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine::OrSymbol,
            interim_results: T::Boolean,
            language: String,
            model: Telnyx::SpeechToTextTranscribeParams::Model::OrSymbol,
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
            T.all(Symbol, Telnyx::SpeechToTextTranscribeParams::InputFormat)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MP3 =
          T.let(
            :mp3,
            Telnyx::SpeechToTextTranscribeParams::InputFormat::TaggedSymbol
          )
        WAV =
          T.let(
            :wav,
            Telnyx::SpeechToTextTranscribeParams::InputFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SpeechToTextTranscribeParams::InputFormat::TaggedSymbol
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
              Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AZURE =
          T.let(
            :Azure,
            Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine::TaggedSymbol
          )
        DEEPGRAM =
          T.let(
            :Deepgram,
            Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine::TaggedSymbol
          )
        GOOGLE =
          T.let(
            :Google,
            Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine::TaggedSymbol
          )
        TELNYX =
          T.let(
            :Telnyx,
            Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SpeechToTextTranscribeParams::TranscriptionEngine::TaggedSymbol
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
            T.all(Symbol, Telnyx::SpeechToTextTranscribeParams::Model)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAST =
          T.let(
            :fast,
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        DEEPGRAM_NOVA_2 =
          T.let(
            :"deepgram/nova-2",
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        DEEPGRAM_NOVA_3 =
          T.let(
            :"deepgram/nova-3",
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        LATEST_LONG =
          T.let(
            :latest_long,
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        LATEST_SHORT =
          T.let(
            :latest_short,
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        COMMAND_AND_SEARCH =
          T.let(
            :command_and_search,
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        PHONE_CALL =
          T.let(
            :phone_call,
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        VIDEO =
          T.let(
            :video,
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        DEFAULT =
          T.let(
            :default,
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        MEDICAL_CONVERSATION =
          T.let(
            :medical_conversation,
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        MEDICAL_DICTATION =
          T.let(
            :medical_dictation,
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        OPENAI_WHISPER_TINY =
          T.let(
            :"openai/whisper-tiny",
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )
        OPENAI_WHISPER_LARGE_V3_TURBO =
          T.let(
            :"openai/whisper-large-v3-turbo",
            Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::SpeechToTextTranscribeParams::Model::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
