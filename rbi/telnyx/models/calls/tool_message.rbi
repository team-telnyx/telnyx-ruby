# typed: strong

module Telnyx
  module Models
    module Calls
      class ToolMessage < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ToolMessage, Telnyx::Internal::AnyHash)
          end

        # The contents of the tool message.
        sig { returns(String) }
        attr_accessor :content

        # The role of the messages author, in this case `tool`.
        sig { returns(Telnyx::Calls::ToolMessage::Role::OrSymbol) }
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
            role: Telnyx::Calls::ToolMessage::Role::OrSymbol,
            tool_call_id: String,
            metadata: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          # The contents of the tool message.
          content:,
          # The role of the messages author, in this case `tool`.
          role:,
          # Tool call that this message is responding to.
          tool_call_id:,
          # Metadata to add to the message
          metadata: nil
        )
        end

        sig do
          override.returns(
            {
              content: String,
              role: Telnyx::Calls::ToolMessage::Role::OrSymbol,
              tool_call_id: String,
              metadata: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end

        # The role of the messages author, in this case `tool`.
        module Role
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Calls::ToolMessage::Role) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOOL = T.let(:tool, Telnyx::Calls::ToolMessage::Role::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Calls::ToolMessage::Role::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
