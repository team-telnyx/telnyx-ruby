# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#update
      class ConversationUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute metadata
        #   Metadata associated with the conversation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[String]

        # @!method initialize(metadata: nil, request_options: {})
        #   @param metadata [Hash{Symbol=>String}] Metadata associated with the conversation.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
