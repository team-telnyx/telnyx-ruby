# typed: strong

module Telnyx
  module Models
    module AI
      class ConversationUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::ConversationUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::AI::Conversation)) }
        attr_reader :data

        sig { params(data: Telnyx::AI::Conversation::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::AI::Conversation::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::AI::Conversation }) }
        def to_hash
        end
      end
    end
  end
end
