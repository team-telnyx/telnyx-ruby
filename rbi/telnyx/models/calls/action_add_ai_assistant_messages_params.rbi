# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionAddAIAssistantMessagesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionAddAIAssistantMessagesParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :call_control_id

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

        # The messages to add to the conversation.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::Calls::UserMessage,
                  Telnyx::Calls::AssistantMessage,
                  Telnyx::Calls::ToolMessage,
                  Telnyx::Calls::SystemMessage,
                  Telnyx::Calls::DeveloperMessage
                )
              ]
            )
          )
        end
        attr_reader :messages

        sig do
          params(
            messages:
              T::Array[
                T.any(
                  Telnyx::Calls::UserMessage::OrHash,
                  Telnyx::Calls::AssistantMessage::OrHash,
                  Telnyx::Calls::ToolMessage::OrHash,
                  Telnyx::Calls::SystemMessage::OrHash,
                  Telnyx::Calls::DeveloperMessage::OrHash
                )
              ]
          ).void
        end
        attr_writer :messages

        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            messages:
              T::Array[
                T.any(
                  Telnyx::Calls::UserMessage::OrHash,
                  Telnyx::Calls::AssistantMessage::OrHash,
                  Telnyx::Calls::ToolMessage::OrHash,
                  Telnyx::Calls::SystemMessage::OrHash,
                  Telnyx::Calls::DeveloperMessage::OrHash
                )
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          call_control_id:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The messages to add to the conversation.
          messages: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              client_state: String,
              command_id: String,
              messages:
                T::Array[
                  T.any(
                    Telnyx::Calls::UserMessage,
                    Telnyx::Calls::AssistantMessage,
                    Telnyx::Calls::ToolMessage,
                    Telnyx::Calls::SystemMessage,
                    Telnyx::Calls::DeveloperMessage
                  )
                ],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Messages sent by an end user
        module Message
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Calls::UserMessage,
                Telnyx::Calls::AssistantMessage,
                Telnyx::Calls::ToolMessage,
                Telnyx::Calls::SystemMessage,
                Telnyx::Calls::DeveloperMessage
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Variants
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
