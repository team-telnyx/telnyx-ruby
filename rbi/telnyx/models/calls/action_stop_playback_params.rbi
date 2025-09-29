# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStopPlaybackParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStopPlaybackParams,
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

        # When enabled, it stops the audio being played in the overlay queue.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overlay

        sig { params(overlay: T::Boolean).void }
        attr_writer :overlay

        # Use `current` to stop the current audio being played. Use `all` to stop the
        # current audio file being played and clear all audio files from the queue.
        sig { returns(T.nilable(String)) }
        attr_reader :stop

        sig { params(stop: String).void }
        attr_writer :stop

        sig do
          params(
            client_state: String,
            command_id: String,
            overlay: T::Boolean,
            stop: String,
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
          # When enabled, it stops the audio being played in the overlay queue.
          overlay: nil,
          # Use `current` to stop the current audio being played. Use `all` to stop the
          # current audio file being played and clear all audio files from the queue.
          stop: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              command_id: String,
              overlay: T::Boolean,
              stop: String,
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
