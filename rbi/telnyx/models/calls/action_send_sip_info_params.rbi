# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionSendSipInfoParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionSendSipInfoParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Content of the SIP INFO
        sig { returns(String) }
        attr_accessor :body

        # Content type of the INFO body. Must be MIME type compliant. There is a 1,400
        # bytes limit
        sig { returns(String) }
        attr_accessor :content_type

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
            body: String,
            content_type: String,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Content of the SIP INFO
          body:,
          # Content type of the INFO body. Must be MIME type compliant. There is a 1,400
          # bytes limit
          content_type:,
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
              body: String,
              content_type: String,
              client_state: String,
              command_id: String,
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
