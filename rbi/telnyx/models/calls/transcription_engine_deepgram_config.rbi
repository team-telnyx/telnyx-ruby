# typed: strong

module Telnyx
  module Models
    module Calls
      module TranscriptionEngineDeepgramConfig
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config
            )
          end

        class DeepgramNova2Config < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionEngine::OrSymbol
            )
          end
          attr_accessor :transcription_engine

          sig do
            returns(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionModel::OrSymbol
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
              T.nilable(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::OrSymbol
              )
            )
          end
          attr_reader :language

          sig do
            params(
              language:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::OrSymbol
            ).void
          end
          attr_writer :language

          sig do
            params(
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionModel::OrSymbol,
              keywords_boosting: T::Hash[Symbol, Float],
              language:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::OrSymbol
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
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionEngine::OrSymbol,
                transcription_model:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionModel::OrSymbol,
                keywords_boosting: T::Hash[Symbol, Float],
                language:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::OrSymbol
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
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionEngine
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM =
              T.let(
                :Deepgram,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionEngine::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionEngine::TaggedSymbol
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
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionModel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM_NOVA_2 =
              T.let(
                :"deepgram/nova-2",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionModel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::TranscriptionModel::TaggedSymbol
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
                T.all(
                  Symbol,
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BG =
              T.let(
                :bg,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            CA =
              T.let(
                :ca,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ZH =
              T.let(
                :zh,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ZH_CN =
              T.let(
                :"zh-CN",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ZH_HANS =
              T.let(
                :"zh-Hans",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ZH_TW =
              T.let(
                :"zh-TW",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ZH_HANT =
              T.let(
                :"zh-Hant",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ZH_HK =
              T.let(
                :"zh-HK",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            CS =
              T.let(
                :cs,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            DA =
              T.let(
                :da,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            DA_DK =
              T.let(
                :"da-DK",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            NL =
              T.let(
                :nl,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            EN =
              T.let(
                :en,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            EN_US =
              T.let(
                :"en-US",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            EN_AU =
              T.let(
                :"en-AU",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            EN_GB =
              T.let(
                :"en-GB",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            EN_NZ =
              T.let(
                :"en-NZ",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            EN_IN =
              T.let(
                :"en-IN",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ET =
              T.let(
                :et,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            FI =
              T.let(
                :fi,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            NL_BE =
              T.let(
                :"nl-BE",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            FR =
              T.let(
                :fr,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            FR_CA =
              T.let(
                :"fr-CA",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            DE =
              T.let(
                :de,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            DE_CH =
              T.let(
                :"de-CH",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            EL =
              T.let(
                :el,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            HI =
              T.let(
                :hi,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            HU =
              T.let(
                :hu,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ID =
              T.let(
                :id,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            IT =
              T.let(
                :it,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            JA =
              T.let(
                :ja,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            KO =
              T.let(
                :ko,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            KO_KR =
              T.let(
                :"ko-KR",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            LV =
              T.let(
                :lv,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            LT =
              T.let(
                :lt,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            MS =
              T.let(
                :ms,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            NO =
              T.let(
                :no,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            PL =
              T.let(
                :pl,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            PT =
              T.let(
                :pt,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            PT_BR =
              T.let(
                :"pt-BR",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            PT_PT =
              T.let(
                :"pt-PT",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            RO =
              T.let(
                :ro,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            RU =
              T.let(
                :ru,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            SK =
              T.let(
                :sk,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ES =
              T.let(
                :es,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            ES_419 =
              T.let(
                :"es-419",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            SV =
              T.let(
                :sv,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            SV_SE =
              T.let(
                :"sv-SE",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            TH =
              T.let(
                :th,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            TH_TH =
              T.let(
                :"th-TH",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            TR =
              T.let(
                :tr,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            UK =
              T.let(
                :uk,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            VI =
              T.let(
                :vi,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )
            AUTO_DETECT =
              T.let(
                :auto_detect,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2Config::Language::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class DeepgramNova3Config < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionEngine::OrSymbol
            )
          end
          attr_accessor :transcription_engine

          sig do
            returns(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionModel::OrSymbol
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
              T.nilable(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::OrSymbol
              )
            )
          end
          attr_reader :language

          sig do
            params(
              language:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::OrSymbol
            ).void
          end
          attr_writer :language

          sig do
            params(
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionModel::OrSymbol,
              keywords_boosting: T::Hash[Symbol, Float],
              language:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::OrSymbol
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
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionEngine::OrSymbol,
                transcription_model:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionModel::OrSymbol,
                keywords_boosting: T::Hash[Symbol, Float],
                language:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::OrSymbol
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
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionEngine
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM =
              T.let(
                :Deepgram,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionEngine::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionEngine::TaggedSymbol
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
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionModel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM_NOVA_3 =
              T.let(
                :"deepgram/nova-3",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionModel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::TranscriptionModel::TaggedSymbol
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
                T.all(
                  Symbol,
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EN =
              T.let(
                :en,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            EN_US =
              T.let(
                :"en-US",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            EN_AU =
              T.let(
                :"en-AU",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            EN_GB =
              T.let(
                :"en-GB",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            EN_IN =
              T.let(
                :"en-IN",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            EN_NZ =
              T.let(
                :"en-NZ",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            DE =
              T.let(
                :de,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            NL =
              T.let(
                :nl,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            SV =
              T.let(
                :sv,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            SV_SE =
              T.let(
                :"sv-SE",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            DA =
              T.let(
                :da,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            DA_DK =
              T.let(
                :"da-DK",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            ES =
              T.let(
                :es,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            ES_419 =
              T.let(
                :"es-419",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            FR =
              T.let(
                :fr,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            FR_CA =
              T.let(
                :"fr-CA",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            PT =
              T.let(
                :pt,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            PT_BR =
              T.let(
                :"pt-BR",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            PT_PT =
              T.let(
                :"pt-PT",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )
            AUTO_DETECT =
              T.let(
                :auto_detect,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Config::Language::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::Calls::TranscriptionEngineDeepgramConfig::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
