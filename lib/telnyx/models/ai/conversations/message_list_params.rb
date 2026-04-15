# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::Messages#list
        class MessageListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute conversation_id
          #
          #   @return [String]
          required :conversation_id, String

          # @!attribute page_number
          #   The page number to retrieve.
          #
          #   @return [Integer, nil]
          optional :page_number, Integer

          # @!attribute page_size
          #   The number of messages to return per page.
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!method initialize(conversation_id:, page_number: nil, page_size: nil, request_options: {})
          #   @param conversation_id [String]
          #
          #   @param page_number [Integer] The page number to retrieve.
          #
          #   @param page_size [Integer] The number of messages to return per page.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
