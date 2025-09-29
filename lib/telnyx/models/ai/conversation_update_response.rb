# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#update
      class ConversationUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AI::Conversation, nil]
        optional :data, -> { Telnyx::AI::Conversation }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::AI::Conversation]
      end
    end
  end
end
