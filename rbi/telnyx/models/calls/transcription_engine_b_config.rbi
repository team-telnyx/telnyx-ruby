# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineBConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineBConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Language to use for speech recognition
        sig do
          returns(
            T.nilable(Telnyx::Calls::TelnyxTranscriptionLanguage::OrSymbol)
          )
        end
        attr_reader :language

        sig do
          params(
            language: Telnyx::Calls::TelnyxTranscriptionLanguage::OrSymbol
          ).void
        end
        attr_writer :language

        # Engine identifier for Telnyx transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            language: Telnyx::Calls::TelnyxTranscriptionLanguage::OrSymbol,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Language to use for speech recognition
          language: nil,
          # Engine identifier for Telnyx transcription service
          transcription_engine: nil,
          # The model to use for transcription.
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              language: Telnyx::Calls::TelnyxTranscriptionLanguage::OrSymbol,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Engine identifier for Telnyx transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          B =
            T.let(
              :B,
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The model to use for transcription.
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPENAI_WHISPER_TINY =
            T.let(
              :"openai/whisper-tiny",
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::TaggedSymbol
            )
          OPENAI_WHISPER_LARGE_V3_TURBO =
            T.let(
              :"openai/whisper-large-v3-turbo",
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::TaggedSymbol
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
