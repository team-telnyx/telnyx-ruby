# typed: strong

module Telnyx
  module Models
    module AI
      class ConversationListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::ConversationListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::AI::Conversation]) }
        attr_accessor :data

        sig do
          params(data: T::Array[Telnyx::AI::Conversation::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: T::Array[Telnyx::AI::Conversation] }) }
        def to_hash
        end
      end
    end
  end
end
