# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Conversations
        class Messages
          # Retrieve messages for a specific conversation, including tool calls made by the
          # assistant.
          #
          # @overload list(conversation_id, request_options: {})
          #
          # @param conversation_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::MessageListResponse]
          #
          # @see Telnyx::Models::AI::Conversations::MessageListParams
          def list(conversation_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/conversations/%1$s/messages", conversation_id],
              model: Telnyx::Models::AI::Conversations::MessageListResponse,
              options: params[:request_options]
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
