# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#update
      class ConversationUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute metadata
        #   Metadata associated with the conversation. Set `ai_disabled` to `true` to stop
        #   AI from responding to messages (e.g., when a human agent takes over). Set to
        #   `false` to re-enable AI responses.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[String]

        # @!method initialize(metadata: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ConversationUpdateParams} for more details.
        #
        #   @param metadata [Hash{Symbol=>String}] Metadata associated with the conversation. Set `ai_disabled` to `true` to stop A
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
