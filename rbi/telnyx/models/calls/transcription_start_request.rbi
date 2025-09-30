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

        # Engine to use for speech recognition. `A` - `Google`, `B` - `Telnyx`.
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
                Telnyx::Calls::TranscriptionEngineAConfig,
                Telnyx::Calls::TranscriptionEngineBConfig
              )
            )
          )
        end
        attr_reader :transcription_engine_config

        sig do
          params(
            transcription_engine_config:
              T.any(
                Telnyx::Calls::TranscriptionEngineAConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineBConfig::OrHash
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
                Telnyx::Calls::TranscriptionEngineAConfig::OrHash,
                Telnyx::Calls::TranscriptionEngineBConfig::OrHash
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
          # Engine to use for speech recognition. `A` - `Google`, `B` - `Telnyx`.
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
                  Telnyx::Calls::TranscriptionEngineAConfig,
                  Telnyx::Calls::TranscriptionEngineBConfig
                ),
              transcription_tracks: String
            }
          )
        end
        def to_hash
        end

        # Engine to use for speech recognition. `A` - `Google`, `B` - `Telnyx`.
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
                Telnyx::Calls::TranscriptionEngineAConfig,
                Telnyx::Calls::TranscriptionEngineBConfig
              )
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
