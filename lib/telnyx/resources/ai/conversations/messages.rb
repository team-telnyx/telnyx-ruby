# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Conversations
        # Manage historical AI assistant conversations
        class Messages
          # Retrieve messages for a specific conversation, including tool calls made by the
          # assistant.
          #
          # @overload list(conversation_id, page_number: nil, page_size: nil, request_options: {})
          #
          # @param conversation_id [String]
          #
          # @param page_number [Integer] The page number to retrieve.
          #
          # @param page_size [Integer] The number of messages to return per page.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Conversations::MessageListResponse>]
          #
          # @see Telnyx::Models::AI::Conversations::MessageListParams
          def list(conversation_id, params = {})
            parsed, options = Telnyx::AI::Conversations::MessageListParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["ai/conversations/%1$s/messages", conversation_id],
              query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::Models::AI::Conversations::MessageListResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
