# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::Messages#list
        class MessageListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Conversations::MessageListResponse::Data>]
          required :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Conversations::MessageListResponse::Data] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]
          required :meta, -> { Telnyx::AI::Assistants::Tests::TestSuites::Meta }

          # @!method initialize(data:, meta:)
          #   @param data [Array<Telnyx::Models::AI::Conversations::MessageListResponse::Data>]
          #   @param meta [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute role
            #   The role of the message sender.
            #
            #   @return [Symbol, Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role]
            required :role, enum: -> { Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role }

            # @!attribute text
            #   The message content. Can be null for tool calls.
            #
            #   @return [String]
            required :text, String

            # @!attribute created_at
            #   The datetime the message was created on the conversation. This does not
            #   necesarily correspond to the time the message was sent. The best field to use to
            #   determine the time the end user experienced the message is `sent_at`.
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute sent_at
            #   The datetime the message was sent to the end user.
            #
            #   @return [Time, nil]
            optional :sent_at, Time

            # @!attribute tool_calls
            #   Optional tool calls made by the assistant.
            #
            #   @return [Array<Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall>, nil]
            optional :tool_calls,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall] }

            # @!method initialize(role:, text:, created_at: nil, sent_at: nil, tool_calls: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Conversations::MessageListResponse::Data} for more details.
            #
            #   @param role [Symbol, Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role] The role of the message sender.
            #
            #   @param text [String] The message content. Can be null for tool calls.
            #
            #   @param created_at [Time] The datetime the message was created on the conversation. This does not necesari
            #
            #   @param sent_at [Time] The datetime the message was sent to the end user.
            #
            #   @param tool_calls [Array<Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall>] Optional tool calls made by the assistant.

            # The role of the message sender.
            #
            # @see Telnyx::Models::AI::Conversations::MessageListResponse::Data#role
            module Role
              extend Telnyx::Internal::Type::Enum

              USER = :user
              ASSISTANT = :assistant
              TOOL = :tool

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class ToolCall < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Unique identifier for the tool call.
              #
              #   @return [String]
              required :id, String

              # @!attribute function
              #
              #   @return [Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Function]
              required :function,
                       -> { Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Function }

              # @!attribute type
              #   Type of the tool call.
              #
              #   @return [Symbol, Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Type]
              required :type, enum: -> { Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Type }

              # @!method initialize(id:, function:, type:)
              #   @param id [String] Unique identifier for the tool call.
              #
              #   @param function [Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Function]
              #
              #   @param type [Symbol, Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Type] Type of the tool call.

              # @see Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall#function
              class Function < Telnyx::Internal::Type::BaseModel
                # @!attribute arguments
                #   JSON-formatted arguments to pass to the function.
                #
                #   @return [String]
                required :arguments, String

                # @!attribute name
                #   Name of the function to call.
                #
                #   @return [String]
                required :name, String

                # @!method initialize(arguments:, name:)
                #   @param arguments [String] JSON-formatted arguments to pass to the function.
                #
                #   @param name [String] Name of the function to call.
              end

              # Type of the tool call.
              #
              # @see Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall#type
              module Type
                extend Telnyx::Internal::Type::Enum

                FUNCTION = :function

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
