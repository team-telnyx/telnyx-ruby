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
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::User,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Tool,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::System,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Developer
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
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::User::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Tool::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::System::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Developer::OrHash
                )
              ]
          ).void
        end
        attr_writer :messages

        sig do
          params(
            client_state: String,
            command_id: String,
            messages:
              T::Array[
                T.any(
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::User::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Tool::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::System::OrHash,
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Developer::OrHash
                )
              ],
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
          # The messages to add to the conversation.
          messages: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              command_id: String,
              messages:
                T::Array[
                  T.any(
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::User,
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant,
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Tool,
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::System,
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Developer
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
                Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::User,
                Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant,
                Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Tool,
                Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::System,
                Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Developer
              )
            end

          class User < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::User,
                  Telnyx::Internal::AnyHash
                )
              end

            # The contents of the user message.
            sig { returns(String) }
            attr_accessor :content

            # The role of the messages author, in this case `user`.
            sig { returns(Symbol) }
            attr_accessor :role

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            # Messages sent by an end user
            sig do
              params(
                content: String,
                metadata: T::Hash[Symbol, T.anything],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the user message.
              content:,
              # Metadata to add to the message
              metadata: nil,
              # The role of the messages author, in this case `user`.
              role: :user
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  role: Symbol,
                  metadata: T::Hash[Symbol, T.anything]
                }
              )
            end
            def to_hash
            end
          end

          class Assistant < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant,
                  Telnyx::Internal::AnyHash
                )
              end

            # The role of the messages author, in this case `assistant`.
            sig { returns(Symbol) }
            attr_accessor :role

            # The contents of the assistant message. Required unless `tool_calls`
            sig { returns(T.nilable(String)) }
            attr_reader :content

            sig { params(content: String).void }
            attr_writer :content

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            # The tool calls generated by the model, such as function calls.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall
                  ]
                )
              )
            end
            attr_reader :tool_calls

            sig do
              params(
                tool_calls:
                  T::Array[
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::OrHash
                  ]
              ).void
            end
            attr_writer :tool_calls

            # Messages sent by the model in response to user messages.
            sig do
              params(
                content: String,
                metadata: T::Hash[Symbol, T.anything],
                tool_calls:
                  T::Array[
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::OrHash
                  ],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the assistant message. Required unless `tool_calls`
              content: nil,
              # Metadata to add to the message
              metadata: nil,
              # The tool calls generated by the model, such as function calls.
              tool_calls: nil,
              # The role of the messages author, in this case `assistant`.
              role: :assistant
            )
            end

            sig do
              override.returns(
                {
                  role: Symbol,
                  content: String,
                  metadata: T::Hash[Symbol, T.anything],
                  tool_calls:
                    T::Array[
                      Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall
                    ]
                }
              )
            end
            def to_hash
            end

            class ToolCall < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The ID of the tool call.
              sig { returns(String) }
              attr_accessor :id

              # The function that the model called.
              sig do
                returns(
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Function
                )
              end
              attr_reader :function

              sig do
                params(
                  function:
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Function::OrHash
                ).void
              end
              attr_writer :function

              # The type of the tool. Currently, only `function` is supported.
              sig do
                returns(
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Type::OrSymbol
                )
              end
              attr_accessor :type

              # A call to a function tool created by the model.
              sig do
                params(
                  id: String,
                  function:
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Function::OrHash,
                  type:
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The ID of the tool call.
                id:,
                # The function that the model called.
                function:,
                # The type of the tool. Currently, only `function` is supported.
                type:
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    function:
                      Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Function,
                    type:
                      Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              class Function < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Function,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # The name of the function to call.
                sig { returns(String) }
                attr_accessor :name

                # The function that the model called.
                sig { params(name: String).returns(T.attached_class) }
                def self.new(
                  # The name of the function to call.
                  name:
                )
                end

                sig { override.returns({ name: String }) }
                def to_hash
                end
              end

              # The type of the tool. Currently, only `function` is supported.
              module Type
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FUNCTION =
                  T.let(
                    :function,
                    Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Assistant::ToolCall::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end

          class Tool < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Tool,
                  Telnyx::Internal::AnyHash
                )
              end

            # The contents of the tool message.
            sig { returns(String) }
            attr_accessor :content

            # The role of the messages author, in this case `tool`.
            sig { returns(Symbol) }
            attr_accessor :role

            # Tool call that this message is responding to.
            sig { returns(String) }
            attr_accessor :tool_call_id

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            sig do
              params(
                content: String,
                tool_call_id: String,
                metadata: T::Hash[Symbol, T.anything],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the tool message.
              content:,
              # Tool call that this message is responding to.
              tool_call_id:,
              # Metadata to add to the message
              metadata: nil,
              # The role of the messages author, in this case `tool`.
              role: :tool
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  role: Symbol,
                  tool_call_id: String,
                  metadata: T::Hash[Symbol, T.anything]
                }
              )
            end
            def to_hash
            end
          end

          class System < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::System,
                  Telnyx::Internal::AnyHash
                )
              end

            # The contents of the system message.
            sig { returns(String) }
            attr_accessor :content

            # The role of the messages author, in this case `system`.
            sig { returns(Symbol) }
            attr_accessor :role

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            # Developer-provided instructions that the model should follow, regardless of
            # messages sent by the user.
            sig do
              params(
                content: String,
                metadata: T::Hash[Symbol, T.anything],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the system message.
              content:,
              # Metadata to add to the message
              metadata: nil,
              # The role of the messages author, in this case `system`.
              role: :system
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  role: Symbol,
                  metadata: T::Hash[Symbol, T.anything]
                }
              )
            end
            def to_hash
            end
          end

          class Developer < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionAddAIAssistantMessagesParams::Message::Developer,
                  Telnyx::Internal::AnyHash
                )
              end

            # The contents of the developer message.
            sig { returns(String) }
            attr_accessor :content

            # The role of the messages author, in this case developer.
            sig { returns(Symbol) }
            attr_accessor :role

            # Metadata to add to the message
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            # Developer-provided instructions that the model should follow, regardless of
            # messages sent by the user.
            sig do
              params(
                content: String,
                metadata: T::Hash[Symbol, T.anything],
                role: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The contents of the developer message.
              content:,
              # Metadata to add to the message
              metadata: nil,
              # The role of the messages author, in this case developer.
              role: :developer
            )
            end

            sig do
              override.returns(
                {
                  content: String,
                  role: Symbol,
                  metadata: T::Hash[Symbol, T.anything]
                }
              )
            end
            def to_hash
            end
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
