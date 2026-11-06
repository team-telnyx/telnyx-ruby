# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#delete_delete
      class ConversationDeleteDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute conversation_id
        #
        #   @return [String]
        required :conversation_id, String

        # @!attribute insight_id
        #
        #   @return [String]
        required :insight_id, String

        # @!method initialize(conversation_id:, insight_id:, request_options: {})
        #   @param conversation_id [String]
        #   @param insight_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
