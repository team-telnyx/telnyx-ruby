# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#add_ai_assistant_messages
      class ActionAddAIAssistantMessagesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

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
        #   @return [Array<Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::User, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Tool, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::System, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Developer>, nil]
        optional :messages,
                 -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message] }

        # @!method initialize(client_state: nil, command_id: nil, messages: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param messages [Array<Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::User, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Tool, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::System, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Developer>] The messages to add to the conversation.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Messages sent by an end user
        module Message
          extend Telnyx::Internal::Type::Union

          discriminator :role

          # Messages sent by an end user
          variant :user, -> { Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::User }

          # Messages sent by the model in response to user messages.
          variant :assistant, -> { Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant }

          variant :tool, -> { Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Tool }

          # Developer-provided instructions that the model should follow, regardless of messages sent by the user.
          variant :system, -> { Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::System }

          # Developer-provided instructions that the model should follow, regardless of messages sent by the user.
          variant :developer, -> { Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Developer }

          class User < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The contents of the user message.
            #
            #   @return [String]
            required :content, String

            # @!attribute role
            #   The role of the messages author, in this case `user`.
            #
            #   @return [Symbol, :user]
            required :role, const: :user

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(content:, metadata: nil, role: :user)
            #   Messages sent by an end user
            #
            #   @param content [String] The contents of the user message.
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param role [Symbol, :user] The role of the messages author, in this case `user`.
          end

          class Assistant < Telnyx::Internal::Type::BaseModel
            # @!attribute role
            #   The role of the messages author, in this case `assistant`.
            #
            #   @return [Symbol, :assistant]
            required :role, const: :assistant

            # @!attribute content
            #   The contents of the assistant message. Required unless `tool_calls`
            #
            #   @return [String, nil]
            optional :content, String

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute tool_calls
            #   The tool calls generated by the model, such as function calls.
            #
            #   @return [Array<Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall>, nil]
            optional :tool_calls,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall] }

            # @!method initialize(content: nil, metadata: nil, tool_calls: nil, role: :assistant)
            #   Messages sent by the model in response to user messages.
            #
            #   @param content [String] The contents of the assistant message. Required unless `tool_calls`
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param tool_calls [Array<Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall>] The tool calls generated by the model, such as function calls.
            #
            #   @param role [Symbol, :assistant] The role of the messages author, in this case `assistant`.

            class ToolCall < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   The ID of the tool call.
              #
              #   @return [String]
              required :id, String

              # @!attribute function
              #   The function that the model called.
              #
              #   @return [Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Function]
              required :function,
                       -> { Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Function }

              # @!attribute type
              #   The type of the tool. Currently, only `function` is supported.
              #
              #   @return [Symbol, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Type]
              required :type,
                       enum: -> { Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Type }

              # @!method initialize(id:, function:, type:)
              #   A call to a function tool created by the model.
              #
              #   @param id [String] The ID of the tool call.
              #
              #   @param function [Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Function] The function that the model called.
              #
              #   @param type [Symbol, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Type] The type of the tool. Currently, only `function` is supported.

              # @see Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall#function
              class Function < Telnyx::Internal::Type::BaseModel
                # @!attribute name
                #   The name of the function to call.
                #
                #   @return [String]
                required :name, String

                # @!method initialize(name:)
                #   The function that the model called.
                #
                #   @param name [String] The name of the function to call.
              end

              # The type of the tool. Currently, only `function` is supported.
              #
              # @see Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall#type
              module Type
                extend Telnyx::Internal::Type::Enum

                FUNCTION = :function

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Tool < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The contents of the tool message.
            #
            #   @return [String]
            required :content, String

            # @!attribute role
            #   The role of the messages author, in this case `tool`.
            #
            #   @return [Symbol, :tool]
            required :role, const: :tool

            # @!attribute tool_call_id
            #   Tool call that this message is responding to.
            #
            #   @return [String]
            required :tool_call_id, String

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(content:, tool_call_id:, metadata: nil, role: :tool)
            #   @param content [String] The contents of the tool message.
            #
            #   @param tool_call_id [String] Tool call that this message is responding to.
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param role [Symbol, :tool] The role of the messages author, in this case `tool`.
          end

          class System < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The contents of the system message.
            #
            #   @return [String]
            required :content, String

            # @!attribute role
            #   The role of the messages author, in this case `system`.
            #
            #   @return [Symbol, :system]
            required :role, const: :system

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(content:, metadata: nil, role: :system)
            #   Developer-provided instructions that the model should follow, regardless of
            #   messages sent by the user.
            #
            #   @param content [String] The contents of the system message.
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param role [Symbol, :system] The role of the messages author, in this case `system`.
          end

          class Developer < Telnyx::Internal::Type::BaseModel
            # @!attribute content
            #   The contents of the developer message.
            #
            #   @return [String]
            required :content, String

            # @!attribute role
            #   The role of the messages author, in this case developer.
            #
            #   @return [Symbol, :developer]
            required :role, const: :developer

            # @!attribute metadata
            #   Metadata to add to the message
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!method initialize(content:, metadata: nil, role: :developer)
            #   Developer-provided instructions that the model should follow, regardless of
            #   messages sent by the user.
            #
            #   @param content [String] The contents of the developer message.
            #
            #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message
            #
            #   @param role [Symbol, :developer] The role of the messages author, in this case developer.
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::User, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Tool, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::System, Telnyx::Models::Calls::ActionAddAIAssistantMessagesParams::Message::Developer)]
        end
      end
    end
  end
end
