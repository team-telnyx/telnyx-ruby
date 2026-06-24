# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineParakeetConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineParakeetConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether to send also interim results. If set to false, only final results will
        # be sent.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :interim_results

        sig { params(interim_results: T::Boolean).void }
        attr_writer :interim_results

        # Engine identifier for Parakeet transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            interim_results: T::Boolean,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          interim_results: nil,
          # Engine identifier for Parakeet transcription service
          transcription_engine: nil,
          # The model to use for transcription.
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              interim_results: T::Boolean,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Engine identifier for Parakeet transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PARAKEET =
            T.let(
              :Parakeet,
              Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PARAKEET_TDT_0_6B_V3 =
            T.let(
              :"parakeet/tdt-0.6b-v3",
              Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineParakeetConfig::TranscriptionModel::TaggedSymbol
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
