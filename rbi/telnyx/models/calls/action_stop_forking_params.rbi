# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStopForkingParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStopForkingParams,
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

        # Optionally specify a `stream_type`. This should match the `stream_type` that was
        # used in `fork_start` command to properly stop the fork.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStopForkingParams::StreamType::OrSymbol
            )
          )
        end
        attr_reader :stream_type

        sig do
          params(
            stream_type:
              Telnyx::Calls::ActionStopForkingParams::StreamType::OrSymbol
          ).void
        end
        attr_writer :stream_type

        sig do
          params(
            client_state: String,
            command_id: String,
            stream_type:
              Telnyx::Calls::ActionStopForkingParams::StreamType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Optionally specify a `stream_type`. This should match the `stream_type` that was
          # used in `fork_start` command to properly stop the fork.
          stream_type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              command_id: String,
              stream_type:
                Telnyx::Calls::ActionStopForkingParams::StreamType::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Optionally specify a `stream_type`. This should match the `stream_type` that was
        # used in `fork_start` command to properly stop the fork.
        module StreamType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionStopForkingParams::StreamType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RAW =
            T.let(
              :raw,
              Telnyx::Calls::ActionStopForkingParams::StreamType::TaggedSymbol
            )
          DECRYPTED =
            T.let(
              :decrypted,
              Telnyx::Calls::ActionStopForkingParams::StreamType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStopForkingParams::StreamType::TaggedSymbol
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
