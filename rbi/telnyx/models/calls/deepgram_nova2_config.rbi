# typed: strong

module Telnyx
  module Models
    module Calls
      class DeepgramNova2Config < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::DeepgramNova2Config, Telnyx::Internal::AnyHash)
          end

        sig do
          returns(
            Telnyx::Calls::DeepgramNova2Config::TranscriptionEngine::OrSymbol
          )
        end
        attr_accessor :transcription_engine

        sig do
          returns(
            Telnyx::Calls::DeepgramNova2Config::TranscriptionModel::OrSymbol
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

        # Language to use for speech recognition with nova-2 model
        sig do
          returns(
            T.nilable(Telnyx::Calls::DeepgramNova2Config::Language::OrSymbol)
          )
        end
        attr_reader :language

        sig do
          params(
            language: Telnyx::Calls::DeepgramNova2Config::Language::OrSymbol
          ).void
        end
        attr_writer :language

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::DeepgramNova2Config::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::DeepgramNova2Config::TranscriptionModel::OrSymbol,
            keywords_boosting: T::Hash[Symbol, Float],
            language: Telnyx::Calls::DeepgramNova2Config::Language::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          transcription_engine:,
          transcription_model:,
          # Keywords and their respective intensifiers (boosting values) to improve
          # transcription accuracy for specific words or phrases. The intensifier should be
          # a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
          keywords_boosting: nil,
          # Language to use for speech recognition with nova-2 model
          language: nil
        )
        end

        sig do
          override.returns(
            {
              transcription_engine:
                Telnyx::Calls::DeepgramNova2Config::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::DeepgramNova2Config::TranscriptionModel::OrSymbol,
              keywords_boosting: T::Hash[Symbol, Float],
              language: Telnyx::Calls::DeepgramNova2Config::Language::OrSymbol
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
                Telnyx::Calls::DeepgramNova2Config::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM =
            T.let(
              :Deepgram,
              Telnyx::Calls::DeepgramNova2Config::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::DeepgramNova2Config::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::DeepgramNova2Config::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM_NOVA_2 =
            T.let(
              :"deepgram/nova-2",
              Telnyx::Calls::DeepgramNova2Config::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::DeepgramNova2Config::TranscriptionModel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Language to use for speech recognition with nova-2 model
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::DeepgramNova2Config::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BG =
            T.let(
              :bg,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-CN",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-Hans",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-TW",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-Hant",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-HK",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-DK",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-BE",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-US",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-AU",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-GB",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-NZ",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-IN",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-CA",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-CH",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-KR",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-BR",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-PT",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-SE",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-TH",
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )
          AUTO_DETECT =
            T.let(
              :auto_detect,
              Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::DeepgramNova2Config::Language::TaggedSymbol
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
