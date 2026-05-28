# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineSonioxConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineSonioxConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Engine identifier for Soniox transcription service
        sig do
          returns(
            Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionEngine::OrSymbol
          )
        end
        attr_accessor :transcription_engine

        # When true, Soniox emits end-of-utterance events at the cadence configured by
        # `max_endpoint_delay_ms`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enable_endpoint_detection

        sig { params(enable_endpoint_detection: T::Boolean).void }
        attr_writer :enable_endpoint_detection

        # Whether to send also interim results. If set to false, only final results will
        # be sent.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :interim_results

        sig { params(interim_results: T::Boolean).void }
        attr_writer :interim_results

        # ISO 639-1 language hint (e.g. `en`, `es`), or `auto` to omit the hint and let
        # Soniox auto-detect supported languages multilingually.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Maximum silence (in milliseconds) before Soniox emits an end-of-utterance event.
        # Only honored when `enable_endpoint_detection` is true. Range: 500-3000 ms.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_endpoint_delay_ms

        sig { params(max_endpoint_delay_ms: Integer).void }
        attr_writer :max_endpoint_delay_ms

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionEngine::OrSymbol,
            enable_endpoint_detection: T::Boolean,
            interim_results: T::Boolean,
            language: String,
            max_endpoint_delay_ms: Integer,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Engine identifier for Soniox transcription service
          transcription_engine:,
          # When true, Soniox emits end-of-utterance events at the cadence configured by
          # `max_endpoint_delay_ms`.
          enable_endpoint_detection: nil,
          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          interim_results: nil,
          # ISO 639-1 language hint (e.g. `en`, `es`), or `auto` to omit the hint and let
          # Soniox auto-detect supported languages multilingually.
          language: nil,
          # Maximum silence (in milliseconds) before Soniox emits an end-of-utterance event.
          # Only honored when `enable_endpoint_detection` is true. Range: 500-3000 ms.
          max_endpoint_delay_ms: nil,
          # The model to use for transcription.
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionEngine::OrSymbol,
              enable_endpoint_detection: T::Boolean,
              interim_results: T::Boolean,
              language: String,
              max_endpoint_delay_ms: Integer,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Engine identifier for Soniox transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SONIOX =
            T.let(
              :Soniox,
              Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SONIOX_STT_RT_V4 =
            T.let(
              :"soniox/stt-rt-v4",
              Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel::TaggedSymbol
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
