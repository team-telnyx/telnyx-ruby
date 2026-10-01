# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#whatsapp
      class AssistantWhatsappResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute conversation_id
        #   ID of the conversation created for this WhatsApp chat.
        #
        #   @return [String]
        required :conversation_id, String

        # @!attribute message_id
        #   ID of the WhatsApp template message that was sent.
        #
        #   @return [String]
        required :message_id, String

        # @!method initialize(conversation_id:, message_id:)
        #   @param conversation_id [String] ID of the conversation created for this WhatsApp chat.
        #
        #   @param message_id [String] ID of the WhatsApp template message that was sent.
      end
    end
  end
end
