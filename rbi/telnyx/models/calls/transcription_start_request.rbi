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
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI,
                Telnyx::Calls::TranscriptionEngineAConfig,
                Telnyx::Calls::TranscriptionEngineBConfig,
                Telnyx::Calls::DeepgramNova2Config,
                Telnyx::Calls::DeepgramNova3Config
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
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::OrHash,
                Telnyx::Calls::TranscriptionEngineAConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineBConfig::OrHash,
                Telnyx::Calls::DeepgramNova2Config::OrHash,
                Telnyx::Calls::DeepgramNova3Config::OrHash
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
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::OrHash,
                Telnyx::Calls::TranscriptionEngineAConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineBConfig::OrHash,
                Telnyx::Calls::DeepgramNova2Config::OrHash,
                Telnyx::Calls::DeepgramNova3Config::OrHash
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
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI,
                  Telnyx::Calls::TranscriptionEngineAConfig,
                  Telnyx::Calls::TranscriptionEngineBConfig,
                  Telnyx::Calls::DeepgramNova2Config,
                  Telnyx::Calls::DeepgramNova3Config
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
          X_AI =
            T.let(
              :xAI,
              Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine::TaggedSymbol
            )
          ASSEMBLY_AI =
            T.let(
              :AssemblyAI,
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
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI,
                Telnyx::Calls::TranscriptionEngineAConfig,
                Telnyx::Calls::TranscriptionEngineBConfig,
                Telnyx::Calls::DeepgramNova2Config,
                Telnyx::Calls::DeepgramNova3Config
              )
            end

          class XAI < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI,
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
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::OrSymbol
                )
              )
            end
            attr_reader :language

            sig do
              params(
                language:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::OrSymbol
              ).void
            end
            attr_writer :language

            # Engine identifier for xAI transcription service
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionEngine::OrSymbol
                )
              )
            end
            attr_reader :transcription_engine

            sig do
              params(
                transcription_engine:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionEngine::OrSymbol
              ).void
            end
            attr_writer :transcription_engine

            # The model to use for transcription.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionModel::OrSymbol
                )
              )
            end
            attr_reader :transcription_model

            sig do
              params(
                transcription_model:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionModel::OrSymbol
              ).void
            end
            attr_writer :transcription_model

            sig do
              params(
                interim_results: T::Boolean,
                language:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::OrSymbol,
                transcription_engine:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionEngine::OrSymbol,
                transcription_model:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionModel::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Whether to send also interim results. If set to false, only final results will
              # be sent.
              interim_results: nil,
              # Language to use for speech recognition
              language: nil,
              # Engine identifier for xAI transcription service
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::OrSymbol,
                  transcription_engine:
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionEngine::OrSymbol,
                  transcription_model:
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionModel::OrSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AR =
                T.let(
                  :ar,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              CS =
                T.let(
                  :cs,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              DA =
                T.let(
                  :da,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              DE =
                T.let(
                  :de,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              EN =
                T.let(
                  :en,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              ES =
                T.let(
                  :es,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              FA =
                T.let(
                  :fa,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              FIL =
                T.let(
                  :fil,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              FR =
                T.let(
                  :fr,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              HI =
                T.let(
                  :hi,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              ID =
                T.let(
                  :id,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              IT =
                T.let(
                  :it,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              JA =
                T.let(
                  :ja,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              KO =
                T.let(
                  :ko,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              MK =
                T.let(
                  :mk,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              MS =
                T.let(
                  :ms,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              NL =
                T.let(
                  :nl,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              PL =
                T.let(
                  :pl,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              PT =
                T.let(
                  :pt,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              RO =
                T.let(
                  :ro,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              RU =
                T.let(
                  :ru,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              SV =
                T.let(
                  :sv,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              TH =
                T.let(
                  :th,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              TR =
                T.let(
                  :tr,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )
              VI =
                T.let(
                  :vi,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::Language::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Engine identifier for xAI transcription service
            module TranscriptionEngine
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionEngine
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              X_AI =
                T.let(
                  :xAI,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionEngine::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionEngine::TaggedSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionModel
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              XAI_GROK_STT =
                T.let(
                  :"xai/grok-stt",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionModel::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::XAI::TranscriptionModel::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class AssemblyAI < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI,
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
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionEngine::OrSymbol
                )
              )
            end
            attr_reader :transcription_engine

            sig do
              params(
                transcription_engine:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionEngine::OrSymbol
              ).void
            end
            attr_writer :transcription_engine

            # The model to use for transcription.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionModel::OrSymbol
                )
              )
            end
            attr_reader :transcription_model

            sig do
              params(
                transcription_model:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionModel::OrSymbol
              ).void
            end
            attr_writer :transcription_model

            sig do
              params(
                interim_results: T::Boolean,
                transcription_engine:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionEngine::OrSymbol,
                transcription_model:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionModel::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Whether to send also interim results. If set to false, only final results will
              # be sent.
              interim_results: nil,
              # Engine identifier for AssemblyAI transcription service
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionEngine::OrSymbol,
                  transcription_model:
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionModel::OrSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionEngine
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ASSEMBLY_AI =
                T.let(
                  :AssemblyAI,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionEngine::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionEngine::TaggedSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionModel
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ASSEMBLYAI_UNIVERSAL_STREAMING =
                T.let(
                  :"assemblyai/universal-streaming",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionModel::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::AssemblyAI::TranscriptionModel::TaggedSymbol
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
