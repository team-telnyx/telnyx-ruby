# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionStartRequest < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionStartRequest,
              Telnyx::Internal::AnyHash
            )
          end

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        # `Telnyx` are supported for backward compatibility.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::Calls::TranscriptionEngineGoogleConfig,
                Telnyx::Calls::TranscriptionEngineTelnyxConfig,
                Telnyx::Calls::TranscriptionEngineAzureConfig,
                Telnyx::Calls::TranscriptionEngineAConfig,
                Telnyx::Calls::TranscriptionEngineBConfig,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config
              )
            )
          )
        end
        attr_reader :transcription_engine_config

        sig do
          params(
            transcription_engine_config:
              T.any(
                Telnyx::Calls::TranscriptionEngineGoogleConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineTelnyxConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineAzureConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineAConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineBConfig::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::OrHash
              )
          ).void
        end
        attr_writer :transcription_engine_config

        # Indicates which leg of the call will be transcribed. Use `inbound` for the leg
        # that requested the transcription, `outbound` for the other leg, and `both` for
        # both legs of the call. Will default to `inbound`.
        sig { returns(T.nilable(String)) }
        attr_reader :transcription_tracks

        sig { params(transcription_tracks: String).void }
        attr_writer :transcription_tracks

        sig do
          params(
            client_state: String,
            command_id: String,
            transcription_engine:
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::OrSymbol,
            transcription_engine_config:
              T.any(
                Telnyx::Calls::TranscriptionEngineGoogleConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineTelnyxConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineAzureConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineAConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineBConfig::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::OrHash
              ),
            transcription_tracks: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
          # `Telnyx` are supported for backward compatibility.
          transcription_engine: nil,
          transcription_engine_config: nil,
          # Indicates which leg of the call will be transcribed. Use `inbound` for the leg
          # that requested the transcription, `outbound` for the other leg, and `both` for
          # both legs of the call. Will default to `inbound`.
          transcription_tracks: nil
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              command_id: String,
              transcription_engine:
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::OrSymbol,
              transcription_engine_config:
                T.any(
                  Telnyx::Calls::TranscriptionEngineGoogleConfig,
                  Telnyx::Calls::TranscriptionEngineTelnyxConfig,
                  Telnyx::Calls::TranscriptionEngineAzureConfig,
                  Telnyx::Calls::TranscriptionEngineAConfig,
                  Telnyx::Calls::TranscriptionEngineBConfig,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config
                ),
              transcription_tracks: String
            }
          )
        end
        def to_hash
        end

        # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        # `Telnyx` are supported for backward compatibility.
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GOOGLE =
            T.let(
              :Google,
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::TaggedSymbol
            )
          TELNYX =
            T.let(
              :Telnyx,
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::TaggedSymbol
            )
          DEEPGRAM =
            T.let(
              :Deepgram,
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::TaggedSymbol
            )
          AZURE =
            T.let(
              :Azure,
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::TaggedSymbol
            )
          A =
            T.let(
              :A,
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::TaggedSymbol
            )
          B =
            T.let(
              :B,
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TranscriptionEngineConfig
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Calls::TranscriptionEngineGoogleConfig,
                Telnyx::Calls::TranscriptionEngineTelnyxConfig,
                Telnyx::Calls::TranscriptionEngineAzureConfig,
                Telnyx::Calls::TranscriptionEngineAConfig,
                Telnyx::Calls::TranscriptionEngineBConfig,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config
              )
            end

          class DeepgramNova2Config < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :transcription_engine

            sig do
              returns(
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel::OrSymbol
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
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::OrSymbol
                )
              )
            end
            attr_reader :language

            sig do
              params(
                language:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::OrSymbol
              ).void
            end
            attr_writer :language

            sig do
              params(
                transcription_model:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel::OrSymbol,
                keywords_boosting: T::Hash[Symbol, Float],
                language:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::OrSymbol,
                transcription_engine: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              transcription_model:,
              # Keywords and their respective intensifiers (boosting values) to improve
              # transcription accuracy for specific words or phrases. The intensifier should be
              # a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
              keywords_boosting: nil,
              # Language to use for speech recognition with nova-2 model
              language: nil,
              transcription_engine: :Deepgram
            )
            end

            sig do
              override.returns(
                {
                  transcription_engine: Symbol,
                  transcription_model:
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel::OrSymbol,
                  keywords_boosting: T::Hash[Symbol, Float],
                  language:
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::OrSymbol
                }
              )
            end
            def to_hash
            end

            module TranscriptionModel
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DEEPGRAM_NOVA_2 =
                T.let(
                  :"deepgram/nova-2",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel::TaggedSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BG =
                T.let(
                  :bg,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              CA =
                T.let(
                  :ca,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ZH =
                T.let(
                  :zh,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ZH_CN =
                T.let(
                  :"zh-CN",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ZH_HANS =
                T.let(
                  :"zh-Hans",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ZH_TW =
                T.let(
                  :"zh-TW",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ZH_HANT =
                T.let(
                  :"zh-Hant",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ZH_HK =
                T.let(
                  :"zh-HK",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              CS =
                T.let(
                  :cs,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              DA =
                T.let(
                  :da,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              DA_DK =
                T.let(
                  :"da-DK",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              NL =
                T.let(
                  :nl,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              EN =
                T.let(
                  :en,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              EN_US =
                T.let(
                  :"en-US",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              EN_AU =
                T.let(
                  :"en-AU",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              EN_GB =
                T.let(
                  :"en-GB",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              EN_NZ =
                T.let(
                  :"en-NZ",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              EN_IN =
                T.let(
                  :"en-IN",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ET =
                T.let(
                  :et,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              FI =
                T.let(
                  :fi,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              NL_BE =
                T.let(
                  :"nl-BE",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              FR =
                T.let(
                  :fr,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              FR_CA =
                T.let(
                  :"fr-CA",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              DE =
                T.let(
                  :de,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              DE_CH =
                T.let(
                  :"de-CH",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              EL =
                T.let(
                  :el,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              HI =
                T.let(
                  :hi,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              HU =
                T.let(
                  :hu,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ID =
                T.let(
                  :id,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              IT =
                T.let(
                  :it,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              JA =
                T.let(
                  :ja,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              KO =
                T.let(
                  :ko,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              KO_KR =
                T.let(
                  :"ko-KR",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              LV =
                T.let(
                  :lv,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              LT =
                T.let(
                  :lt,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              MS =
                T.let(
                  :ms,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              NO =
                T.let(
                  :no,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              PL =
                T.let(
                  :pl,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              PT =
                T.let(
                  :pt,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              PT_BR =
                T.let(
                  :"pt-BR",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              PT_PT =
                T.let(
                  :"pt-PT",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              RO =
                T.let(
                  :ro,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              RU =
                T.let(
                  :ru,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              SK =
                T.let(
                  :sk,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ES =
                T.let(
                  :es,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              ES_419 =
                T.let(
                  :"es-419",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              SV =
                T.let(
                  :sv,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              SV_SE =
                T.let(
                  :"sv-SE",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              TH =
                T.let(
                  :th,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              TH_TH =
                T.let(
                  :"th-TH",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              TR =
                T.let(
                  :tr,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              UK =
                T.let(
                  :uk,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              VI =
                T.let(
                  :vi,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )
              AUTO_DETECT =
                T.let(
                  :auto_detect,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language::TaggedSymbol
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
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :transcription_engine

            sig do
              returns(
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel::OrSymbol
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
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::OrSymbol
                )
              )
            end
            attr_reader :language

            sig do
              params(
                language:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::OrSymbol
              ).void
            end
            attr_writer :language

            sig do
              params(
                transcription_model:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel::OrSymbol,
                keywords_boosting: T::Hash[Symbol, Float],
                language:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::OrSymbol,
                transcription_engine: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              transcription_model:,
              # Keywords and their respective intensifiers (boosting values) to improve
              # transcription accuracy for specific words or phrases. The intensifier should be
              # a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
              keywords_boosting: nil,
              # Language to use for speech recognition with nova-3 model
              language: nil,
              transcription_engine: :Deepgram
            )
            end

            sig do
              override.returns(
                {
                  transcription_engine: Symbol,
                  transcription_model:
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel::OrSymbol,
                  keywords_boosting: T::Hash[Symbol, Float],
                  language:
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::OrSymbol
                }
              )
            end
            def to_hash
            end

            module TranscriptionModel
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DEEPGRAM_NOVA_3 =
                T.let(
                  :"deepgram/nova-3",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel::TaggedSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EN_US =
                T.let(
                  :"en-US",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              EN_AU =
                T.let(
                  :"en-AU",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              EN_GB =
                T.let(
                  :"en-GB",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              EN_IN =
                T.let(
                  :"en-IN",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              EN_NZ =
                T.let(
                  :"en-NZ",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              DE =
                T.let(
                  :de,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              NL =
                T.let(
                  :nl,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              SV_SE =
                T.let(
                  :"sv-SE",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              DA_DK =
                T.let(
                  :"da-DK",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              ES =
                T.let(
                  :es,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              ES_419 =
                T.let(
                  :"es-419",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              FR =
                T.let(
                  :fr,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              FR_CA =
                T.let(
                  :"fr-CA",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              PT_BR =
                T.let(
                  :"pt-BR",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              PT_PT =
                T.let(
                  :"pt-PT",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )
              AUTO_DETECT =
                T.let(
                  :auto_detect,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
