# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#add_ai_assistant_messages
      class ActionAddAIAssistantMessagesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute messages
        #   The messages to add to the conversation.
        #
        #   @return [Array<Telnyx::Models::Calls::UserMessage, Telnyx::Models::Calls::AssistantMessage, Telnyx::Models::Calls::ToolMessage, Telnyx::Models::Calls::SystemMessage, Telnyx::Models::Calls::DeveloperMessage>, nil]
        optional :messages,
                 -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message] }

        # @!attribute trigger_response
        #   When `true`, the injected messages immediately trigger an assistant
        #   response/turn instead of waiting for the next natural turn or idle timeout. This
        #   may interrupt a user who is still speaking. How the turn starts depends on the
        #   last message in `messages`: if it is a `user` message, the assistant responds to
        #   that message as if the caller had said it, whether or not `trigger_response` is
        #   set. Any other last role (`system`, `developer`, `assistant`, `tool`) starts a
        #   turn with no new user input, as after a long silence. When `trigger_response` is
        #   not set, a payload that does not end in a `user` message is context only and
        #   does not start a turn. GPT Live models (`openai/gpt-live-*`) do not support a
        #   forced mid-session turn: injected `system`, `developer`, and `assistant` content
        #   is appended to the Live session's instructions and the model brings it into its
        #   next turn on its own; an injected `tool` record is not forwarded to the Live
        #   session, so it stays context only and never reaches the Live model. Any of
        #   `user`, `system`, `developer`, or `assistant` is the supported way to get
        #   content into the Live session.
        #
        #   @return [Boolean, nil]
        optional :trigger_response, Telnyx::Internal::Type::Boolean

        # @!method initialize(call_control_id:, client_state: nil, command_id: nil, messages: nil, trigger_response: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams} for more details.
        #
        #   @param call_control_id [String]
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param messages [Array<Telnyx::Models::Calls::UserMessage, Telnyx::Models::Calls::AssistantMessage, Telnyx::Models::Calls::ToolMessage, Telnyx::Models::Calls::SystemMessage, Telnyx::Models::Calls::DeveloperMessage>] The messages to add to the conversation.
        #
        #   @param trigger_response [Boolean] When `true`, the injected messages immediately trigger an assistant response/tur
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Messages sent by an end user
        module Message
          extend Telnyx::Internal::Type::Union

          discriminator :role

          # Messages sent by an end user
          variant :user, -> { Telnyx::Calls::UserMessage }

          # Messages sent by the model in response to user messages.
          variant :assistant, -> { Telnyx::Calls::AssistantMessage }

          variant :tool, -> { Telnyx::Calls::ToolMessage }

          # Developer-provided instructions that the model should follow, regardless of messages sent by the user.
          variant :system, -> { Telnyx::Calls::SystemMessage }

          # Developer-provided instructions that the model should follow, regardless of messages sent by the user.
          variant :developer, -> { Telnyx::Calls::DeveloperMessage }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::UserMessage, Telnyx::Models::Calls::AssistantMessage, Telnyx::Models::Calls::ToolMessage, Telnyx::Models::Calls::SystemMessage, Telnyx::Models::Calls::DeveloperMessage)]
        end
      end
    end
  end
end
