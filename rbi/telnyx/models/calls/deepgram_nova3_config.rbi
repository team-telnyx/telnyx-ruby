# typed: strong

module Telnyx
  module Models
    module Calls
      class DeepgramNova3Config < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::DeepgramNova3Config, Telnyx::Internal::AnyHash)
          end

        sig do
          returns(
            Telnyx::Calls::DeepgramNova3Config::TranscriptionEngine::OrSymbol
          )
        end
        attr_accessor :transcription_engine

        sig do
          returns(
            Telnyx::Calls::DeepgramNova3Config::TranscriptionModel::OrSymbol
          )
        end
        attr_accessor :transcription_model

        # Keywords and their respective intensifiers (boosting values) to improve
        # transcription accuracy for specific words or phrases. The intensifier should be
        # a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
        sig { returns(T.nilable(T::Hash[Symbol, Float])) }
        attr_reader :keywords_boosting

        sig { params(keywords_boosting: T::Hash[Symbol, Float]).void }
        attr_writer :keywords_boosting

        # Language to use for speech recognition with nova-3 model
        sig do
          returns(
            T.nilable(Telnyx::Calls::DeepgramNova3Config::Language::OrSymbol)
          )
        end
        attr_reader :language

        sig do
          params(
            language: Telnyx::Calls::DeepgramNova3Config::Language::OrSymbol
          ).void
        end
        attr_writer :language

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::DeepgramNova3Config::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::DeepgramNova3Config::TranscriptionModel::OrSymbol,
            keywords_boosting: T::Hash[Symbol, Float],
            language: Telnyx::Calls::DeepgramNova3Config::Language::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          transcription_engine:,
          transcription_model:,
          # Keywords and their respective intensifiers (boosting values) to improve
          # transcription accuracy for specific words or phrases. The intensifier should be
          # a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
          keywords_boosting: nil,
          # Language to use for speech recognition with nova-3 model
          language: nil
        )
        end

        sig do
          override.returns(
            {
              transcription_engine:
                Telnyx::Calls::DeepgramNova3Config::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::DeepgramNova3Config::TranscriptionModel::OrSymbol,
              keywords_boosting: T::Hash[Symbol, Float],
              language: Telnyx::Calls::DeepgramNova3Config::Language::OrSymbol
            }
          )
        end
        def to_hash
        end

        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::DeepgramNova3Config::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM =
            T.let(
              :Deepgram,
              Telnyx::Calls::DeepgramNova3Config::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::DeepgramNova3Config::TranscriptionEngine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::DeepgramNova3Config::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM_NOVA_3 =
            T.let(
              :"deepgram/nova-3",
              Telnyx::Calls::DeepgramNova3Config::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::DeepgramNova3Config::TranscriptionModel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Language to use for speech recognition with nova-3 model
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::DeepgramNova3Config::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN_US =
            T.let(
              :"en-US",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-AU",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-GB",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-IN",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-NZ",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-SE",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-DK",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-CA",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-BR",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-PT",
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )
          AUTO_DETECT =
            T.let(
              :auto_detect,
              Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::DeepgramNova3Config::Language::TaggedSymbol
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
