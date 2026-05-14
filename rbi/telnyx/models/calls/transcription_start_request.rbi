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
                Telnyx::Calls::TranscriptionEngineXaiConfig,
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics,
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
                Telnyx::Calls::TranscriptionEngineXaiConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::OrHash,
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
                Telnyx::Calls::TranscriptionEngineXaiConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig::OrHash,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::OrHash,
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
                  Telnyx::Calls::TranscriptionEngineXaiConfig,
                  Telnyx::Calls::TranscriptionEngineAssemblyaiConfig,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics,
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
          SPEECHMATICS =
            T.let(
              :Speechmatics,
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
                Telnyx::Calls::TranscriptionEngineXaiConfig,
                Telnyx::Calls::TranscriptionEngineAssemblyaiConfig,
                Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics,
                Telnyx::Calls::TranscriptionEngineAConfig,
                Telnyx::Calls::TranscriptionEngineBConfig,
                Telnyx::Calls::DeepgramNova2Config,
                Telnyx::Calls::DeepgramNova3Config
              )
            end

          class Speechmatics < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics,
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
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::OrSymbol
                )
              )
            end
            attr_reader :language

            sig do
              params(
                language:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::OrSymbol
              ).void
            end
            attr_writer :language

            # Engine identifier for Speechmatics transcription service
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine::OrSymbol
                )
              )
            end
            attr_reader :transcription_engine

            sig do
              params(
                transcription_engine:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine::OrSymbol
              ).void
            end
            attr_writer :transcription_engine

            # The model to use for transcription.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel::OrSymbol
                )
              )
            end
            attr_reader :transcription_model

            sig do
              params(
                transcription_model:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel::OrSymbol
              ).void
            end
            attr_writer :transcription_model

            sig do
              params(
                interim_results: T::Boolean,
                language:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::OrSymbol,
                transcription_engine:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine::OrSymbol,
                transcription_model:
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel::OrSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::OrSymbol,
                  transcription_engine:
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine::OrSymbol,
                  transcription_model:
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel::OrSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EN =
                T.let(
                  :en,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              BA =
                T.let(
                  :ba,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              EU =
                T.let(
                  :eu,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              GL =
                T.let(
                  :gl,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              GA =
                T.let(
                  :ga,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              MT =
                T.let(
                  :mt,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              MN =
                T.let(
                  :mn,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              SW =
                T.let(
                  :sw,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              UG =
                T.let(
                  :ug,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              CY =
                T.let(
                  :cy,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              AR_EN =
                T.let(
                  :ar_en,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              CMN_EN =
                T.let(
                  :cmn_en,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              EN_MS =
                T.let(
                  :en_ms,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              EN_TA =
                T.let(
                  :en_ta,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              TL =
                T.let(
                  :tl,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              ES_BILINGUAL_EN =
                T.let(
                  :"es-bilingual-en",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )
              CMN_EN_MS_TA =
                T.let(
                  :cmn_en_ms_ta,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language::TaggedSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SPEECHMATICS =
                T.let(
                  :Speechmatics,
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine::TaggedSymbol
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
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SPEECHMATICS_STANDARD =
                T.let(
                  :"speechmatics/standard",
                  Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel::TaggedSymbol
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
