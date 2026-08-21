# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineReson8Config < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineReson8Config,
              Telnyx::Internal::AnyHash
            )
          end

        # The language of the audio to be transcribed. `auto` (the default, also applied
        # when `language` is omitted) enables automatic language detection.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # Engine identifier for Reson8 transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::OrSymbol,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The language of the audio to be transcribed. `auto` (the default, also applied
          # when `language` is omitted) enables automatic language detection.
          language: nil,
          # Engine identifier for Reson8 transcription service
          transcription_engine: nil,
          # The model to use for transcription.
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              language:
                Telnyx::Calls::TranscriptionEngineReson8Config::Language::OrSymbol,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The language of the audio to be transcribed. `auto` (the default, also applied
        # when `language` is omitted) enables automatic language detection.
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineReson8Config::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTO =
            T.let(
              :auto,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineReson8Config::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Engine identifier for Reson8 transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RESON8 =
            T.let(
              :Reson8,
              Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RESON8_TURNS =
            T.let(
              :"reson8/turns",
              Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineReson8Config::TranscriptionModel::TaggedSymbol
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
