# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionSendDtmfParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionSendDtmfParams,
              Telnyx::Internal::AnyHash
            )
          end

        # DTMF digits to send. Valid digits are 0-9, A-D, \*, and #. Pauses can be added
        # using w (0.5s) and W (1s).
        sig { returns(String) }
        attr_accessor :digits

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

        # Specifies for how many milliseconds each digit will be played in the audio
        # stream. Ranges from 100 to 500ms
        sig { returns(T.nilable(Integer)) }
        attr_reader :duration_millis

        sig { params(duration_millis: Integer).void }
        attr_writer :duration_millis

        sig do
          params(
            digits: String,
            client_state: String,
            command_id: String,
            duration_millis: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # DTMF digits to send. Valid digits are 0-9, A-D, \*, and #. Pauses can be added
          # using w (0.5s) and W (1s).
          digits:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Specifies for how many milliseconds each digit will be played in the audio
          # stream. Ranges from 100 to 500ms
          duration_millis: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              digits: String,
              client_state: String,
              command_id: String,
              duration_millis: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
