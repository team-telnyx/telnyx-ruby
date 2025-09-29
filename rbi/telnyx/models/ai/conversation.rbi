# typed: strong

module Telnyx
  module Models
    module AI
      class Conversation < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::Conversation, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # The datetime the conversation was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The datetime of the latest message in the conversation.
        sig { returns(Time) }
        attr_accessor :last_message_at

        # Metadata associated with the conversation. Telnyx provides several pieces of
        # metadata, but customers can also add their own.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            id: String,
            created_at: Time,
            last_message_at: Time,
            metadata: T::Hash[Symbol, String],
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The datetime the conversation was created.
          created_at:,
          # The datetime of the latest message in the conversation.
          last_message_at:,
          # Metadata associated with the conversation. Telnyx provides several pieces of
          # metadata, but customers can also add their own.
          metadata:,
          name: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              last_message_at: Time,
              metadata: T::Hash[Symbol, String],
              name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
