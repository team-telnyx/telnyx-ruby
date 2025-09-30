# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionRejectParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionRejectParams, Telnyx::Internal::AnyHash)
          end

        # Cause for call rejection.
        sig { returns(Telnyx::Calls::ActionRejectParams::Cause::OrSymbol) }
        attr_accessor :cause

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

        sig do
          params(
            cause: Telnyx::Calls::ActionRejectParams::Cause::OrSymbol,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Cause for call rejection.
          cause:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              cause: Telnyx::Calls::ActionRejectParams::Cause::OrSymbol,
              client_state: String,
              command_id: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Cause for call rejection.
        module Cause
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionRejectParams::Cause)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_REJECTED =
            T.let(
              :CALL_REJECTED,
              Telnyx::Calls::ActionRejectParams::Cause::TaggedSymbol
            )
          USER_BUSY =
            T.let(
              :USER_BUSY,
              Telnyx::Calls::ActionRejectParams::Cause::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Calls::ActionRejectParams::Cause::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
