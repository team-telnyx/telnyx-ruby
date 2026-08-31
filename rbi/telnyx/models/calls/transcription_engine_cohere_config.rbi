# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineCohereConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineCohereConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # The language of the audio to be transcribed. Unlike other self-hosted models,
        # Cohere does not auto-detect the language; `auto` is not supported.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineCohereConfig::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineCohereConfig::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # Engine identifier for Cohere transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineCohereConfig::Language::OrSymbol,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The language of the audio to be transcribed. Unlike other self-hosted models,
          # Cohere does not auto-detect the language; `auto` is not supported.
          language: nil,
          # Engine identifier for Cohere transcription service
          transcription_engine: nil,
          # The model to use for transcription.
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              language:
                Telnyx::Calls::TranscriptionEngineCohereConfig::Language::OrSymbol,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The language of the audio to be transcribed. Unlike other self-hosted models,
        # Cohere does not auto-detect the language; `auto` is not supported.
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineCohereConfig::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AR =
            T.let(
              :ar,
              Telnyx::Calls::TranscriptionEngineCohereConfig::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              Telnyx::Calls::TranscriptionEngineCohereConfig::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineCohereConfig::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Engine identifier for Cohere transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COHERE =
            T.let(
              :Cohere,
              Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COHERE_AR_STT =
            T.let(
              :"cohere/ar-stt",
              Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineCohereConfig::TranscriptionModel::TaggedSymbol
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
