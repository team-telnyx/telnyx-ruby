# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineHumainConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineHumainConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # The language of the audio to be transcribed. `codeswitch` enables Arabic/English
        # code-switching. `auto` resolves server-side to code-switching.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineHumainConfig::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineHumainConfig::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # Engine identifier for Humain transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineHumainConfig::Language::OrSymbol,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The language of the audio to be transcribed. `codeswitch` enables Arabic/English
          # code-switching. `auto` resolves server-side to code-switching.
          language: nil,
          # Engine identifier for Humain transcription service
          transcription_engine: nil,
          # The model to use for transcription.
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              language:
                Telnyx::Calls::TranscriptionEngineHumainConfig::Language::OrSymbol,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The language of the audio to be transcribed. `codeswitch` enables Arabic/English
        # code-switching. `auto` resolves server-side to code-switching.
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineHumainConfig::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AR =
            T.let(
              :ar,
              Telnyx::Calls::TranscriptionEngineHumainConfig::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              Telnyx::Calls::TranscriptionEngineHumainConfig::Language::TaggedSymbol
            )
          CODESWITCH =
            T.let(
              :codeswitch,
              Telnyx::Calls::TranscriptionEngineHumainConfig::Language::TaggedSymbol
            )
          AUTO =
            T.let(
              :auto,
              Telnyx::Calls::TranscriptionEngineHumainConfig::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineHumainConfig::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Engine identifier for Humain transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUMAIN =
            T.let(
              :Humain,
              Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUMAIN_REALTIME =
            T.let(
              :"humain/realtime",
              Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineHumainConfig::TranscriptionModel::TaggedSymbol
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
