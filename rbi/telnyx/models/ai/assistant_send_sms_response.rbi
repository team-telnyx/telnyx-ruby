# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantSendSMSResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::AssistantSendSMSResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :conversation_id

        sig { params(conversation_id: String).void }
        attr_writer :conversation_id

        sig { params(conversation_id: String).returns(T.attached_class) }
        def self.new(conversation_id: nil)
        end

        sig { override.returns({ conversation_id: String }) }
        def to_hash
        end
      end
    end
  end
end
