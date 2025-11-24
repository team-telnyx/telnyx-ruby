# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#send_sms
      class AssistantSendSMSResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute conversation_id
        #
        #   @return [String, nil]
        optional :conversation_id, String

        # @!method initialize(conversation_id: nil)
        #   @param conversation_id [String]
      end
    end
  end
end
