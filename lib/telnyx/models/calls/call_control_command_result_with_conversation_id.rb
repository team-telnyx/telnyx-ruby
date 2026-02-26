# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class CallControlCommandResultWithConversationID < Telnyx::Internal::Type::BaseModel
        # @!attribute conversation_id
        #   The ID of the conversation created by the command.
        #
        #   @return [String, nil]
        optional :conversation_id, String

        # @!attribute result
        #
        #   @return [String, nil]
        optional :result, String

        # @!method initialize(conversation_id: nil, result: nil)
        #   @param conversation_id [String] The ID of the conversation created by the command.
        #
        #   @param result [String]
      end
    end

    CallControlCommandResultWithConversationID = Calls::CallControlCommandResultWithConversationID
  end
end
