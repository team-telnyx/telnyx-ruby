# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineXaiConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineXaiConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether to send also interim results. If set to false, only final results will
        # be sent.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :interim_results

        sig { params(interim_results: T::Boolean).void }
        attr_writer :interim_results

        # Language to use for speech recognition
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # Engine identifier for xAI transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            interim_results: T::Boolean,
            language:
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::OrSymbol,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          interim_results: nil,
          # Language to use for speech recognition
          language: nil,
          # Engine identifier for xAI transcription service
          transcription_engine: nil,
          # The model to use for transcription.
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              interim_results: T::Boolean,
              language:
                Telnyx::Calls::TranscriptionEngineXaiConfig::Language::OrSymbol,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Language to use for speech recognition
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineXaiConfig::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AR =
            T.let(
              :ar,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineXaiConfig::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Engine identifier for xAI transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          X_AI =
            T.let(
              :xAI,
              Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          XAI_GROK_STT =
            T.let(
              :"xai/grok-stt",
              Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineXaiConfig::TranscriptionModel::TaggedSymbol
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
