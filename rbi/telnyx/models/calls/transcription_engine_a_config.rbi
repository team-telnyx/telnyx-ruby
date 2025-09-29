# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineAConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineAConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Enables speaker diarization.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enable_speaker_diarization

        sig { params(enable_speaker_diarization: T::Boolean).void }
        attr_writer :enable_speaker_diarization

        # Hints to improve transcription accuracy.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :hints

        sig { params(hints: T::Array[String]).void }
        attr_writer :hints

        # Whether to send also interim results. If set to false, only final results will
        # be sent.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :interim_results

        sig { params(interim_results: T::Boolean).void }
        attr_writer :interim_results

        # Language to use for speech recognition
        sig do
          returns(
            T.nilable(Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol)
          )
        end
        attr_reader :language

        sig do
          params(
            language: Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol
          ).void
        end
        attr_writer :language

        # Defines maximum number of speakers in the conversation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_speaker_count

        sig { params(max_speaker_count: Integer).void }
        attr_writer :max_speaker_count

        # Defines minimum number of speakers in the conversation.
        sig { returns(T.nilable(Integer)) }
        attr_reader :min_speaker_count

        sig { params(min_speaker_count: Integer).void }
        attr_writer :min_speaker_count

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineAConfig::Model::OrSymbol
            )
          )
        end
        attr_reader :model

        sig do
          params(
            model: Telnyx::Calls::TranscriptionEngineAConfig::Model::OrSymbol
          ).void
        end
        attr_writer :model

        # Enables profanity_filter.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :profanity_filter

        sig { params(profanity_filter: T::Boolean).void }
        attr_writer :profanity_filter

        # Speech context to improve transcription accuracy.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Calls::TranscriptionEngineAConfig::SpeechContext]
            )
          )
        end
        attr_reader :speech_context

        sig do
          params(
            speech_context:
              T::Array[
                Telnyx::Calls::TranscriptionEngineAConfig::SpeechContext::OrHash
              ]
          ).void
        end
        attr_writer :speech_context

        # Engine identifier for Google transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineAConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineAConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # Enables enhanced transcription, this works for models `phone_call` and `video`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_enhanced

        sig { params(use_enhanced: T::Boolean).void }
        attr_writer :use_enhanced

        sig do
          params(
            enable_speaker_diarization: T::Boolean,
            hints: T::Array[String],
            interim_results: T::Boolean,
            language: Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol,
            max_speaker_count: Integer,
            min_speaker_count: Integer,
            model: Telnyx::Calls::TranscriptionEngineAConfig::Model::OrSymbol,
            profanity_filter: T::Boolean,
            speech_context:
              T::Array[
                Telnyx::Calls::TranscriptionEngineAConfig::SpeechContext::OrHash
              ],
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineAConfig::TranscriptionEngine::OrSymbol,
            use_enhanced: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Enables speaker diarization.
          enable_speaker_diarization: nil,
          # Hints to improve transcription accuracy.
          hints: nil,
          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          interim_results: nil,
          # Language to use for speech recognition
          language: nil,
          # Defines maximum number of speakers in the conversation.
          max_speaker_count: nil,
          # Defines minimum number of speakers in the conversation.
          min_speaker_count: nil,
          # The model to use for transcription.
          model: nil,
          # Enables profanity_filter.
          profanity_filter: nil,
          # Speech context to improve transcription accuracy.
          speech_context: nil,
          # Engine identifier for Google transcription service
          transcription_engine: nil,
          # Enables enhanced transcription, this works for models `phone_call` and `video`.
          use_enhanced: nil
        )
        end

        sig do
          override.returns(
            {
              enable_speaker_diarization: T::Boolean,
              hints: T::Array[String],
              interim_results: T::Boolean,
              language: Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol,
              max_speaker_count: Integer,
              min_speaker_count: Integer,
              model: Telnyx::Calls::TranscriptionEngineAConfig::Model::OrSymbol,
              profanity_filter: T::Boolean,
              speech_context:
                T::Array[
                  Telnyx::Calls::TranscriptionEngineAConfig::SpeechContext
                ],
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineAConfig::TranscriptionEngine::OrSymbol,
              use_enhanced: T::Boolean
            }
          )
        end
        def to_hash
        end

        # The model to use for transcription.
        module Model
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::TranscriptionEngineAConfig::Model)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LATEST_LONG =
            T.let(
              :latest_long,
              Telnyx::Calls::TranscriptionEngineAConfig::Model::TaggedSymbol
            )
          LATEST_SHORT =
            T.let(
              :latest_short,
              Telnyx::Calls::TranscriptionEngineAConfig::Model::TaggedSymbol
            )
          COMMAND_AND_SEARCH =
            T.let(
              :command_and_search,
              Telnyx::Calls::TranscriptionEngineAConfig::Model::TaggedSymbol
            )
          PHONE_CALL =
            T.let(
              :phone_call,
              Telnyx::Calls::TranscriptionEngineAConfig::Model::TaggedSymbol
            )
          VIDEO =
            T.let(
              :video,
              Telnyx::Calls::TranscriptionEngineAConfig::Model::TaggedSymbol
            )
          DEFAULT =
            T.let(
              :default,
              Telnyx::Calls::TranscriptionEngineAConfig::Model::TaggedSymbol
            )
          MEDICAL_CONVERSATION =
            T.let(
              :medical_conversation,
              Telnyx::Calls::TranscriptionEngineAConfig::Model::TaggedSymbol
            )
          MEDICAL_DICTATION =
            T.let(
              :medical_dictation,
              Telnyx::Calls::TranscriptionEngineAConfig::Model::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineAConfig::Model::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class SpeechContext < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::TranscriptionEngineAConfig::SpeechContext,
                Telnyx::Internal::AnyHash
              )
            end

          # Boost factor for the speech context.
          sig { returns(T.nilable(Float)) }
          attr_reader :boost

          sig { params(boost: Float).void }
          attr_writer :boost

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :phrases

          sig { params(phrases: T::Array[String]).void }
          attr_writer :phrases

          sig do
            params(boost: Float, phrases: T::Array[String]).returns(
              T.attached_class
            )
          end
          def self.new(
            # Boost factor for the speech context.
            boost: nil,
            phrases: nil
          )
          end

          sig { override.returns({ boost: Float, phrases: T::Array[String] }) }
          def to_hash
          end
        end

        # Engine identifier for Google transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineAConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          A =
            T.let(
              :A,
              Telnyx::Calls::TranscriptionEngineAConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineAConfig::TranscriptionEngine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
