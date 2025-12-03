# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineDeepgramConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Engine identifier for Deepgram transcription service
        sig do
          returns(
            Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionEngine::OrSymbol
          )
        end
        attr_accessor :transcription_engine

        # The model to use for transcription.
        sig do
          returns(
            Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel::OrSymbol
          )
        end
        attr_accessor :transcription_model

        # Language to use for speech recognition. Available languages depend on the
        # selected model.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::OrSymbol
          ).void
        end
        attr_writer :language

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel::OrSymbol,
            language:
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Engine identifier for Deepgram transcription service
          transcription_engine:,
          # The model to use for transcription.
          transcription_model:,
          # Language to use for speech recognition. Available languages depend on the
          # selected model.
          language: nil
        )
        end

        sig do
          override.returns(
            {
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel::OrSymbol,
              language:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Engine identifier for Deepgram transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM =
            T.let(
              :Deepgram,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionEngine::TaggedSymbol
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
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM_NOVA_2 =
            T.let(
              :"deepgram/nova-2",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel::TaggedSymbol
            )
          DEEPGRAM_NOVA_3 =
            T.let(
              :"deepgram/nova-3",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::TranscriptionModel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Language to use for speech recognition. Available languages depend on the
        # selected model.
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BG =
            T.let(
              :bg,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-CN",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-Hans",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-TW",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-Hant",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-HK",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-DK",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-US",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-AU",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-GB",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-NZ",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-IN",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-BE",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-CA",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-CH",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-KR",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-BR",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-PT",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-SE",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-TH",
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )
          AUTO_DETECT =
            T.let(
              :auto_detect,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::Language::TaggedSymbol
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
