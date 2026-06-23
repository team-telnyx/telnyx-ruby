# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineSpeechmaticsConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig,
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
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # Engine identifier for Speechmatics transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            interim_results: T::Boolean,
            language:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::OrSymbol,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          interim_results: nil,
          # Language to use for speech recognition
          language: nil,
          # Engine identifier for Speechmatics transcription service
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
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::OrSymbol,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::OrSymbol
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
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN =
            T.let(
              :en,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          AR_EN =
            T.let(
              :ar_en,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CMN_EN =
            T.let(
              :cmn_en,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :en_ms,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          EN_TA =
            T.let(
              :en_ta,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          ES_BILINGUAL_EN =
            T.let(
              :"es-bilingual-en",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )
          CMN_EN_MS_TA =
            T.let(
              :cmn_en_ms_ta,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Engine identifier for Speechmatics transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SPEECHMATICS =
            T.let(
              :Speechmatics,
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SPEECHMATICS_STANDARD =
            T.let(
              :"speechmatics/standard",
              Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig::TranscriptionModel::TaggedSymbol
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
