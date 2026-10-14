# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantWhatsappResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::AssistantWhatsappResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # ID of the conversation created for this WhatsApp chat.
        sig { returns(String) }
        attr_accessor :conversation_id

        # ID of the WhatsApp template message that was sent.
        sig { returns(String) }
        attr_accessor :message_id

        sig do
          params(conversation_id: String, message_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # ID of the conversation created for this WhatsApp chat.
          conversation_id:,
          # ID of the WhatsApp template message that was sent.
          message_id:
        )
        end

        sig do
          override.returns({ conversation_id: String, message_id: String })
        end
        def to_hash
        end
      end
    end
  end
end
