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

        # @!method initialize(call_control_id:, client_state: nil, command_id: nil, messages: nil, request_options: {})
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
