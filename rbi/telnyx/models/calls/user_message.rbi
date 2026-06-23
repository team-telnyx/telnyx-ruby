# typed: strong

module Telnyx
  module Models
    module Calls
      class UserMessage < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::UserMessage, Telnyx::Internal::AnyHash)
          end

        # The contents of the user message.
        sig { returns(String) }
        attr_accessor :content

        # The role of the messages author, in this case `user`.
        sig { returns(Telnyx::Calls::UserMessage::Role::OrSymbol) }
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
            role: Telnyx::Calls::UserMessage::Role::OrSymbol,
            metadata: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          # The contents of the user message.
          content:,
          # The role of the messages author, in this case `user`.
          role:,
          # Metadata to add to the message
          metadata: nil
        )
        end

        sig do
          override.returns(
            {
              content: String,
              role: Telnyx::Calls::UserMessage::Role::OrSymbol,
              metadata: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end

        # The role of the messages author, in this case `user`.
        module Role
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Calls::UserMessage::Role) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USER = T.let(:user, Telnyx::Calls::UserMessage::Role::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Calls::UserMessage::Role::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
