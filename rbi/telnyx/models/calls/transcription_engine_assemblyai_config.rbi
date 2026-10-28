# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineAssemblyaiConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether to send also interim results. If set to false, only final results will
        # be sent.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :interim_results

        sig { params(interim_results: T::Boolean).void }
        attr_writer :interim_results

        # Engine identifier for AssemblyAI transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription. `assemblyai/universal-3-6-pro` is the
        # AssemblyAI Universal-3.6 Pro model. `assemblyai/universal-3-5-pro` (the default)
        # and `assemblyai/universal-streaming` are legacy aliases that run the same
        # Universal-3.6 Pro model.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            interim_results: T::Boolean,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          interim_results: nil,
          # Engine identifier for AssemblyAI transcription service
          transcription_engine: nil,
          # The model to use for transcription. `assemblyai/universal-3-6-pro` is the
          # AssemblyAI Universal-3.6 Pro model. `assemblyai/universal-3-5-pro` (the default)
          # and `assemblyai/universal-streaming` are legacy aliases that run the same
          # Universal-3.6 Pro model.
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              interim_results: T::Boolean,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Engine identifier for AssemblyAI transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSEMBLY_AI =
            T.let(
              :AssemblyAI,
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionEngine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The model to use for transcription. `assemblyai/universal-3-6-pro` is the
        # AssemblyAI Universal-3.6 Pro model. `assemblyai/universal-3-5-pro` (the default)
        # and `assemblyai/universal-streaming` are legacy aliases that run the same
        # Universal-3.6 Pro model.
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSEMBLYAI_UNIVERSAL_3_6_PRO =
            T.let(
              :"assemblyai/universal-3-6-pro",
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel::TaggedSymbol
            )
          ASSEMBLYAI_UNIVERSAL_3_5_PRO =
            T.let(
              :"assemblyai/universal-3-5-pro",
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel::TaggedSymbol
            )
          ASSEMBLYAI_UNIVERSAL_STREAMING =
            T.let(
              :"assemblyai/universal-streaming",
              Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::TranscriptionModel::TaggedSymbol
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
