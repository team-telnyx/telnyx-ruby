# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#list
      class ConversationListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::Conversation>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Conversation] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AI::Conversation>]
      end
    end
  end
end
