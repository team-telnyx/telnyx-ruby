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
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure,
                ::Telnyx::Calls::TranscriptionEngineAConfig,
                ::Telnyx::Calls::TranscriptionEngineBConfig
              )
            )
          )
        end
        attr_reader :transcription_engine_config

        sig do
          params(
            transcription_engine_config:
              T.any(
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::OrHash,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::OrHash,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::OrHash,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::OrHash,
                ::Telnyx::Calls::TranscriptionEngineAConfig::OrHash,
                ::Telnyx::Calls::TranscriptionEngineBConfig::OrHash
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
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::OrHash,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::OrHash,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::OrHash,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::OrHash,
                ::Telnyx::Calls::TranscriptionEngineAConfig::OrHash,
                ::Telnyx::Calls::TranscriptionEngineBConfig::OrHash
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
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure,
                  ::Telnyx::Calls::TranscriptionEngineAConfig,
                  ::Telnyx::Calls::TranscriptionEngineBConfig
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
          extend ::Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram,
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure,
                ::Telnyx::Calls::TranscriptionEngineAConfig,
                ::Telnyx::Calls::TranscriptionEngineBConfig
              )
            end

          class Google < ::Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google,
                  ::Telnyx::Internal::AnyHash
                )
              end

            # Enables speaker diarization.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :enable_speaker_diarization

            sig { params(enable_speaker_diarization: T::Boolean).void }
            attr_writer :enable_speaker_diarization

            # Hints to improve transcription accuracy.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :hints

            sig { params(hints: T::Array[String]).void }
            attr_writer :hints

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
                  ::Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol
                )
              )
            end
            attr_reader :language

            sig do
              params(
                language: ::Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol
              ).void
            end
            attr_writer :language

            # Defines maximum number of speakers in the conversation.
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_speaker_count

            sig { params(max_speaker_count: Integer).void }
            attr_writer :max_speaker_count

            # Defines minimum number of speakers in the conversation.
            sig { returns(T.nilable(Integer)) }
            attr_reader :min_speaker_count

            sig { params(min_speaker_count: Integer).void }
            attr_writer :min_speaker_count

            # The model to use for transcription.
            sig do
              returns(
                T.nilable(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::OrSymbol
                )
              )
            end
            attr_reader :model

            sig do
              params(
                model:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::OrSymbol
              ).void
            end
            attr_writer :model

            # Enables profanity_filter.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :profanity_filter

            sig { params(profanity_filter: T::Boolean).void }
            attr_writer :profanity_filter

            # Speech context to improve transcription accuracy.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::SpeechContext
                  ]
                )
              )
            end
            attr_reader :speech_context

            sig do
              params(
                speech_context:
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::SpeechContext::OrHash
                  ]
              ).void
            end
            attr_writer :speech_context

            # Engine identifier for Google transcription service
            sig do
              returns(
                T.nilable(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine::OrSymbol
                )
              )
            end
            attr_reader :transcription_engine

            sig do
              params(
                transcription_engine:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine::OrSymbol
              ).void
            end
            attr_writer :transcription_engine

            # Enables enhanced transcription, this works for models `phone_call` and `video`.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :use_enhanced

            sig { params(use_enhanced: T::Boolean).void }
            attr_writer :use_enhanced

            sig do
              params(
                enable_speaker_diarization: T::Boolean,
                hints: T::Array[String],
                interim_results: T::Boolean,
                language:
                  ::Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol,
                max_speaker_count: Integer,
                min_speaker_count: Integer,
                model:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::OrSymbol,
                profanity_filter: T::Boolean,
                speech_context:
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::SpeechContext::OrHash
                  ],
                transcription_engine:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine::OrSymbol,
                use_enhanced: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # Enables speaker diarization.
              enable_speaker_diarization: nil,
              # Hints to improve transcription accuracy.
              hints: nil,
              # Whether to send also interim results. If set to false, only final results will
              # be sent.
              interim_results: nil,
              # Language to use for speech recognition
              language: nil,
              # Defines maximum number of speakers in the conversation.
              max_speaker_count: nil,
              # Defines minimum number of speakers in the conversation.
              min_speaker_count: nil,
              # The model to use for transcription.
              model: nil,
              # Enables profanity_filter.
              profanity_filter: nil,
              # Speech context to improve transcription accuracy.
              speech_context: nil,
              # Engine identifier for Google transcription service
              transcription_engine: nil,
              # Enables enhanced transcription, this works for models `phone_call` and `video`.
              use_enhanced: nil
            )
            end

            sig do
              override.returns(
                {
                  enable_speaker_diarization: T::Boolean,
                  hints: T::Array[String],
                  interim_results: T::Boolean,
                  language:
                    ::Telnyx::Calls::GoogleTranscriptionLanguage::OrSymbol,
                  max_speaker_count: Integer,
                  min_speaker_count: Integer,
                  model:
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::OrSymbol,
                  profanity_filter: T::Boolean,
                  speech_context:
                    T::Array[
                      ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::SpeechContext
                    ],
                  transcription_engine:
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine::OrSymbol,
                  use_enhanced: T::Boolean
                }
              )
            end
            def to_hash
            end

            # The model to use for transcription.
            module Model
              extend ::Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LATEST_LONG =
                T.let(
                  :latest_long,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::TaggedSymbol
                )
              LATEST_SHORT =
                T.let(
                  :latest_short,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::TaggedSymbol
                )
              COMMAND_AND_SEARCH =
                T.let(
                  :command_and_search,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::TaggedSymbol
                )
              PHONE_CALL =
                T.let(
                  :phone_call,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::TaggedSymbol
                )
              VIDEO =
                T.let(
                  :video,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::TaggedSymbol
                )
              DEFAULT =
                T.let(
                  :default,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::TaggedSymbol
                )
              MEDICAL_CONVERSATION =
                T.let(
                  :medical_conversation,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::TaggedSymbol
                )
              MEDICAL_DICTATION =
                T.let(
                  :medical_dictation,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class SpeechContext < ::Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::SpeechContext,
                    ::Telnyx::Internal::AnyHash
                  )
                end

              # Boost factor for the speech context.
              sig { returns(T.nilable(Float)) }
              attr_reader :boost

              sig { params(boost: Float).void }
              attr_writer :boost

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :phrases

              sig { params(phrases: T::Array[String]).void }
              attr_writer :phrases

              sig do
                params(boost: Float, phrases: T::Array[String]).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Boost factor for the speech context.
                boost: nil,
                phrases: nil
              )
              end

              sig do
                override.returns({ boost: Float, phrases: T::Array[String] })
              end
              def to_hash
              end
            end

            # Engine identifier for Google transcription service
            module TranscriptionEngine
              extend ::Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GOOGLE =
                T.let(
                  :Google,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Telnyx < ::Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx,
                  ::Telnyx::Internal::AnyHash
                )
              end

            # Language to use for speech recognition
            sig do
              returns(
                T.nilable(
                  ::Telnyx::Calls::TelnyxTranscriptionLanguage::OrSymbol
                )
              )
            end
            attr_reader :language

            sig do
              params(
                language: ::Telnyx::Calls::TelnyxTranscriptionLanguage::OrSymbol
              ).void
            end
            attr_writer :language

            # Engine identifier for Telnyx transcription service
            sig do
              returns(
                T.nilable(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine::OrSymbol
                )
              )
            end
            attr_reader :transcription_engine

            sig do
              params(
                transcription_engine:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine::OrSymbol
              ).void
            end
            attr_writer :transcription_engine

            # The model to use for transcription.
            sig do
              returns(
                T.nilable(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel::OrSymbol
                )
              )
            end
            attr_reader :transcription_model

            sig do
              params(
                transcription_model:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel::OrSymbol
              ).void
            end
            attr_writer :transcription_model

            sig do
              params(
                language:
                  ::Telnyx::Calls::TelnyxTranscriptionLanguage::OrSymbol,
                transcription_engine:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine::OrSymbol,
                transcription_model:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Language to use for speech recognition
              language: nil,
              # Engine identifier for Telnyx transcription service
              transcription_engine: nil,
              # The model to use for transcription.
              transcription_model: nil
            )
            end

            sig do
              override.returns(
                {
                  language:
                    ::Telnyx::Calls::TelnyxTranscriptionLanguage::OrSymbol,
                  transcription_engine:
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine::OrSymbol,
                  transcription_model:
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Engine identifier for Telnyx transcription service
            module TranscriptionEngine
              extend ::Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TELNYX =
                T.let(
                  :Telnyx,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The model to use for transcription.
            module TranscriptionModel
              extend ::Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              OPENAI_WHISPER_TINY =
                T.let(
                  :"openai/whisper-tiny",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel::TaggedSymbol
                )
              OPENAI_WHISPER_LARGE_V3_TURBO =
                T.let(
                  :"openai/whisper-large-v3-turbo",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Deepgram < ::Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram,
                  ::Telnyx::Internal::AnyHash
                )
              end

            # Engine identifier for Deepgram transcription service
            sig { returns(Symbol) }
            attr_accessor :transcription_engine

            # The model to use for transcription.
            sig do
              returns(
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel::OrSymbol
              )
            end
            attr_accessor :transcription_model

            # Language to use for speech recognition. Available languages depend on the
            # selected model.
            sig do
              returns(
                T.nilable(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::OrSymbol
                )
              )
            end
            attr_reader :language

            sig do
              params(
                language:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::OrSymbol
              ).void
            end
            attr_writer :language

            sig do
              params(
                transcription_model:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel::OrSymbol,
                language:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::OrSymbol,
                transcription_engine: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The model to use for transcription.
              transcription_model:,
              # Language to use for speech recognition. Available languages depend on the
              # selected model.
              language: nil,
              # Engine identifier for Deepgram transcription service
              transcription_engine: :Deepgram
            )
            end

            sig do
              override.returns(
                {
                  transcription_engine: Symbol,
                  transcription_model:
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel::OrSymbol,
                  language:
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::OrSymbol
                }
              )
            end
            def to_hash
            end

            # The model to use for transcription.
            module TranscriptionModel
              extend ::Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DEEPGRAM_NOVA_2 =
                T.let(
                  :"deepgram/nova-2",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel::TaggedSymbol
                )
              DEEPGRAM_NOVA_3 =
                T.let(
                  :"deepgram/nova-3",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Language to use for speech recognition. Available languages depend on the
            # selected model.
            module Language
              extend ::Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              BG =
                T.let(
                  :bg,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              CA =
                T.let(
                  :ca,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ZH =
                T.let(
                  :zh,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ZH_CN =
                T.let(
                  :"zh-CN",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ZH_HANS =
                T.let(
                  :"zh-Hans",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ZH_TW =
                T.let(
                  :"zh-TW",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ZH_HANT =
                T.let(
                  :"zh-Hant",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ZH_HK =
                T.let(
                  :"zh-HK",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              CS =
                T.let(
                  :cs,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              DA =
                T.let(
                  :da,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              DA_DK =
                T.let(
                  :"da-DK",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              NL =
                T.let(
                  :nl,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              EN =
                T.let(
                  :en,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              EN_US =
                T.let(
                  :"en-US",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              EN_AU =
                T.let(
                  :"en-AU",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              EN_GB =
                T.let(
                  :"en-GB",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              EN_NZ =
                T.let(
                  :"en-NZ",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              EN_IN =
                T.let(
                  :"en-IN",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ET =
                T.let(
                  :et,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              FI =
                T.let(
                  :fi,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              NL_BE =
                T.let(
                  :"nl-BE",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              FR =
                T.let(
                  :fr,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              FR_CA =
                T.let(
                  :"fr-CA",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              DE =
                T.let(
                  :de,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              DE_CH =
                T.let(
                  :"de-CH",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              EL =
                T.let(
                  :el,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              HI =
                T.let(
                  :hi,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              HU =
                T.let(
                  :hu,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ID =
                T.let(
                  :id,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              IT =
                T.let(
                  :it,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              JA =
                T.let(
                  :ja,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              KO =
                T.let(
                  :ko,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              KO_KR =
                T.let(
                  :"ko-KR",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              LV =
                T.let(
                  :lv,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              LT =
                T.let(
                  :lt,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              MS =
                T.let(
                  :ms,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              NO =
                T.let(
                  :no,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              PL =
                T.let(
                  :pl,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              PT =
                T.let(
                  :pt,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              PT_BR =
                T.let(
                  :"pt-BR",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              PT_PT =
                T.let(
                  :"pt-PT",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              RO =
                T.let(
                  :ro,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              RU =
                T.let(
                  :ru,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              SK =
                T.let(
                  :sk,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ES =
                T.let(
                  :es,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              ES_419 =
                T.let(
                  :"es-419",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              SV =
                T.let(
                  :sv,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              SV_SE =
                T.let(
                  :"sv-SE",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              TH =
                T.let(
                  :th,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              TH_TH =
                T.let(
                  :"th-TH",
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              TR =
                T.let(
                  :tr,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              UK =
                T.let(
                  :uk,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              VI =
                T.let(
                  :vi,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )
              AUTO_DETECT =
                T.let(
                  :auto_detect,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Azure < ::Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure,
                  ::Telnyx::Internal::AnyHash
                )
              end

            # Azure region to use for speech recognition
            sig do
              returns(
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::OrSymbol
              )
            end
            attr_accessor :region

            # Engine identifier for Azure transcription service
            sig { returns(Symbol) }
            attr_accessor :transcription_engine

            # Reference to the API key for authentication. See
            # [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
            # for details. The parameter is optional as defaults are available for some
            # regions.
            sig { returns(T.nilable(String)) }
            attr_reader :api_key_ref

            sig { params(api_key_ref: String).void }
            attr_writer :api_key_ref

            # Language to use for speech recognition
            sig do
              returns(
                T.nilable(
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::OrSymbol
                )
              )
            end
            attr_reader :language

            sig do
              params(
                language:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::OrSymbol
              ).void
            end
            attr_writer :language

            sig do
              params(
                region:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::OrSymbol,
                api_key_ref: String,
                language:
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::OrSymbol,
                transcription_engine: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Azure region to use for speech recognition
              region:,
              # Reference to the API key for authentication. See
              # [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
              # for details. The parameter is optional as defaults are available for some
              # regions.
              api_key_ref: nil,
              # Language to use for speech recognition
              language: nil,
              # Engine identifier for Azure transcription service
              transcription_engine: :Azure
            )
            end

            sig do
              override.returns(
                {
                  region:
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::OrSymbol,
                  transcription_engine: Symbol,
                  api_key_ref: String,
                  language:
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Azure region to use for speech recognition
            module Region
              extend ::Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AUSTRALIAEAST =
                T.let(
                  :australiaeast,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::TaggedSymbol
                )
              CENTRALINDIA =
                T.let(
                  :centralindia,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::TaggedSymbol
                )
              EASTUS =
                T.let(
                  :eastus,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::TaggedSymbol
                )
              NORTHCENTRALUS =
                T.let(
                  :northcentralus,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::TaggedSymbol
                )
              WESTEUROPE =
                T.let(
                  :westeurope,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::TaggedSymbol
                )
              WESTUS2 =
                T.let(
                  :westus2,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Language to use for speech recognition
            module Language
              extend ::Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AF =
                T.let(
                  :af,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              AM =
                T.let(
                  :am,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              AR =
                T.let(
                  :ar,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              BG =
                T.let(
                  :bg,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              BN =
                T.let(
                  :bn,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              BS =
                T.let(
                  :bs,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              CA =
                T.let(
                  :ca,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              CS =
                T.let(
                  :cs,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              CY =
                T.let(
                  :cy,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              DA =
                T.let(
                  :da,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              DE =
                T.let(
                  :de,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              EL =
                T.let(
                  :el,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              EN =
                T.let(
                  :en,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              ES =
                T.let(
                  :es,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              ET =
                T.let(
                  :et,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              EU =
                T.let(
                  :eu,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              FA =
                T.let(
                  :fa,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              FI =
                T.let(
                  :fi,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              FR =
                T.let(
                  :fr,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              GA =
                T.let(
                  :ga,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              GL =
                T.let(
                  :gl,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              GU =
                T.let(
                  :gu,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              HE =
                T.let(
                  :he,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              HI =
                T.let(
                  :hi,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              HR =
                T.let(
                  :hr,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              HU =
                T.let(
                  :hu,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              HY =
                T.let(
                  :hy,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              ID =
                T.let(
                  :id,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              IS =
                T.let(
                  :is,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              IT =
                T.let(
                  :it,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              JA =
                T.let(
                  :ja,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              KA =
                T.let(
                  :ka,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              KK =
                T.let(
                  :kk,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              KM =
                T.let(
                  :km,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              KN =
                T.let(
                  :kn,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              KO =
                T.let(
                  :ko,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              LO =
                T.let(
                  :lo,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              LT =
                T.let(
                  :lt,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              LV =
                T.let(
                  :lv,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              MK =
                T.let(
                  :mk,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              ML =
                T.let(
                  :ml,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              MN =
                T.let(
                  :mn,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              MR =
                T.let(
                  :mr,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              MS =
                T.let(
                  :ms,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              MT =
                T.let(
                  :mt,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              MY =
                T.let(
                  :my,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              NB =
                T.let(
                  :nb,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              NE =
                T.let(
                  :ne,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              NL =
                T.let(
                  :nl,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              PL =
                T.let(
                  :pl,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              PS =
                T.let(
                  :ps,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              PT =
                T.let(
                  :pt,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              RO =
                T.let(
                  :ro,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              RU =
                T.let(
                  :ru,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              SI =
                T.let(
                  :si,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              SK =
                T.let(
                  :sk,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              SL =
                T.let(
                  :sl,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              SO =
                T.let(
                  :so,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              SQ =
                T.let(
                  :sq,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              SR =
                T.let(
                  :sr,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              SV =
                T.let(
                  :sv,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              SW =
                T.let(
                  :sw,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              TA =
                T.let(
                  :ta,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              TE =
                T.let(
                  :te,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              TH =
                T.let(
                  :th,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              TR =
                T.let(
                  :tr,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              UK =
                T.let(
                  :uk,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              UR =
                T.let(
                  :ur,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              UZ =
                T.let(
                  :uz,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              VI =
                T.let(
                  :vi,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              WUU =
                T.let(
                  :wuu,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              YUE =
                T.let(
                  :yue,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              ZH =
                T.let(
                  :zh,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              ZU =
                T.let(
                  :zu,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )
              AUTO =
                T.let(
                  :auto,
                  ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language::TaggedSymbol
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
                ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Variants
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
