# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#gather_using_ai
      class ActionGatherUsingAIResponse < Telnyx::Internal::Type::BaseModel
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
