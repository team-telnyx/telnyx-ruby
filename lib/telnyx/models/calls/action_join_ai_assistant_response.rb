# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#join_ai_assistant
      class ActionJoinAIAssistantResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Calls::CallControlCommandResultWithConversationID, nil]
        optional :data, -> { Telnyx::Calls::CallControlCommandResultWithConversationID }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Calls::CallControlCommandResultWithConversationID]
      end
    end
  end
end
