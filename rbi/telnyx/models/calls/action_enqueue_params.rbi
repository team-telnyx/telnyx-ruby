# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionEnqueueParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionEnqueueParams, Telnyx::Internal::AnyHash)
          end

        # The name of the queue the call should be put in. If a queue with a given name
        # doesn't exist yet it will be created.
        sig { returns(String) }
        attr_accessor :queue_name

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

        # The maximum number of calls allowed in the queue at a given time. Can't be
        # modified for an existing queue.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_size

        sig { params(max_size: Integer).void }
        attr_writer :max_size

        # The number of seconds after which the call will be removed from the queue.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_wait_time_secs

        sig { params(max_wait_time_secs: Integer).void }
        attr_writer :max_wait_time_secs

        sig do
          params(
            queue_name: String,
            client_state: String,
            command_id: String,
            max_size: Integer,
            max_wait_time_secs: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the queue the call should be put in. If a queue with a given name
          # doesn't exist yet it will be created.
          queue_name:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The maximum number of calls allowed in the queue at a given time. Can't be
          # modified for an existing queue.
          max_size: nil,
          # The number of seconds after which the call will be removed from the queue.
          max_wait_time_secs: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              queue_name: String,
              client_state: String,
              command_id: String,
              max_size: Integer,
              max_wait_time_secs: Integer,
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
