# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class MessageListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Conversations::MessageListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Telnyx::Models::AI::Conversations::MessageListResponse::Data
              ]
            )
          end
          attr_accessor :data

          sig { returns(Telnyx::AI::Assistants::Tests::TestSuites::Meta) }
          attr_reader :meta

          sig do
            params(
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
            ).void
          end
          attr_writer :meta

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::AI::Conversations::MessageListResponse::Data::OrHash
                ],
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:, meta:)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data
                  ],
                meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Conversations::MessageListResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # The role of the message sender.
            sig do
              returns(
                Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role::TaggedSymbol
              )
            end
            attr_accessor :role

            # The message content. Can be null for tool calls.
            sig { returns(String) }
            attr_accessor :text

            # The datetime the message was created on the conversation. This does not
            # necesarily correspond to the time the message was sent. The best field to use to
            # determine the time the end user experienced the message is `sent_at`.
            sig { returns(T.nilable(Time)) }
            attr_reader :created_at

            sig { params(created_at: Time).void }
            attr_writer :created_at

            # The datetime the message was sent to the end user.
            sig { returns(T.nilable(Time)) }
            attr_reader :sent_at

            sig { params(sent_at: Time).void }
            attr_writer :sent_at

            # Optional tool calls made by the assistant.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall
                  ]
                )
              )
            end
            attr_reader :tool_calls

            sig do
              params(
                tool_calls:
                  T::Array[
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::OrHash
                  ]
              ).void
            end
            attr_writer :tool_calls

            sig do
              params(
                role:
                  Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role::OrSymbol,
                text: String,
                created_at: Time,
                sent_at: Time,
                tool_calls:
                  T::Array[
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The role of the message sender.
              role:,
              # The message content. Can be null for tool calls.
              text:,
              # The datetime the message was created on the conversation. This does not
              # necesarily correspond to the time the message was sent. The best field to use to
              # determine the time the end user experienced the message is `sent_at`.
              created_at: nil,
              # The datetime the message was sent to the end user.
              sent_at: nil,
              # Optional tool calls made by the assistant.
              tool_calls: nil
            )
            end

            sig do
              override.returns(
                {
                  role:
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role::TaggedSymbol,
                  text: String,
                  created_at: Time,
                  sent_at: Time,
                  tool_calls:
                    T::Array[
                      Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall
                    ]
                }
              )
            end
            def to_hash
            end

            # The role of the message sender.
            module Role
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USER =
                T.let(
                  :user,
                  Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role::TaggedSymbol
                )
              ASSISTANT =
                T.let(
                  :assistant,
                  Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role::TaggedSymbol
                )
              TOOL =
                T.let(
                  :tool,
                  Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::Role::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class ToolCall < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Unique identifier for the tool call.
              sig { returns(String) }
              attr_accessor :id

              sig do
                returns(
                  Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Function
                )
              end
              attr_reader :function

              sig do
                params(
                  function:
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Function::OrHash
                ).void
              end
              attr_writer :function

              # Type of the tool call.
              sig do
                returns(
                  Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  id: String,
                  function:
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Function::OrHash,
                  type:
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Unique identifier for the tool call.
                id:,
                function:,
                # Type of the tool call.
                type:
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    function:
                      Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Function,
                    type:
                      Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              class Function < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Function,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # JSON-formatted arguments to pass to the function.
                sig { returns(String) }
                attr_accessor :arguments

                # Name of the function to call.
                sig { returns(String) }
                attr_accessor :name

                sig do
                  params(arguments: String, name: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # JSON-formatted arguments to pass to the function.
                  arguments:,
                  # Name of the function to call.
                  name:
                )
                end

                sig { override.returns({ arguments: String, name: String }) }
                def to_hash
                end
              end

              # Type of the tool call.
              module Type
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FUNCTION =
                  T.let(
                    :function,
                    Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::AI::Conversations::MessageListResponse::Data::ToolCall::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
