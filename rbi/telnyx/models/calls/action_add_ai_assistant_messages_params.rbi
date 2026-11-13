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

        # When `true`, the injected messages immediately trigger an assistant
        # response/turn instead of waiting for the next natural turn or idle timeout. This
        # may interrupt a user who is still speaking. How the turn starts depends on the
        # last message in `messages`: if it is a `user` message, the assistant responds to
        # that message as if the caller had said it, whether or not `trigger_response` is
        # set. Any other last role (`system`, `developer`, `assistant`, `tool`) starts a
        # turn with no new user input, as after a long silence. When `trigger_response` is
        # not set, a payload that does not end in a `user` message is context only and
        # does not start a turn. GPT Live models (`openai/gpt-live-*`) do not support a
        # forced mid-session turn: injected `system`, `developer`, and `assistant` content
        # is appended to the Live session's instructions and the model brings it into its
        # next turn on its own; an injected `tool` record is not forwarded to the Live
        # session, so it stays context only and never reaches the Live model. Any of
        # `user`, `system`, `developer`, or `assistant` is the supported way to get
        # content into the Live session.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :trigger_response

        sig { params(trigger_response: T::Boolean).void }
        attr_writer :trigger_response

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
            trigger_response: T::Boolean,
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
          # When `true`, the injected messages immediately trigger an assistant
          # response/turn instead of waiting for the next natural turn or idle timeout. This
          # may interrupt a user who is still speaking. How the turn starts depends on the
          # last message in `messages`: if it is a `user` message, the assistant responds to
          # that message as if the caller had said it, whether or not `trigger_response` is
          # set. Any other last role (`system`, `developer`, `assistant`, `tool`) starts a
          # turn with no new user input, as after a long silence. When `trigger_response` is
          # not set, a payload that does not end in a `user` message is context only and
          # does not start a turn. GPT Live models (`openai/gpt-live-*`) do not support a
          # forced mid-session turn: injected `system`, `developer`, and `assistant` content
          # is appended to the Live session's instructions and the model brings it into its
          # next turn on its own; an injected `tool` record is not forwarded to the Live
          # session, so it stays context only and never reaches the Live model. Any of
          # `user`, `system`, `developer`, or `assistant` is the supported way to get
          # content into the Live session.
          trigger_response: nil,
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
              trigger_response: T::Boolean,
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
