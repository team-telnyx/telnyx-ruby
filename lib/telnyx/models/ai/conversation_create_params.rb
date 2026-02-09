# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#create
      class ConversationCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute metadata
        #   Metadata associated with the conversation. Set `ai_disabled` to `true` to create
        #   the conversation with AI message responses disabled.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[String]

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(metadata: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ConversationCreateParams} for more details.
        #
        #   @param metadata [Hash{Symbol=>String}] Metadata associated with the conversation. Set `ai_disabled` to `true` to create
        #
        #   @param name [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
