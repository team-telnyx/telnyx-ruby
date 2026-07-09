# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Conversations
        # Manage historical AI assistant conversations
        class ConversationInsights
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesParams}
          # for more details.
          #
          # Aggregate conversation insights by specified fields
          #
          # @overload retrieve_aggregates(created_at: nil, group_by: nil, insight_id: nil, metadata: nil, show: nil, request_options: {})
          #
          # @param created_at [String] Filter by creation datetime to scope the aggregation window. Supports range oper
          #
          # @param group_by [Array<String>] Fields to group by (can be comma-separated or multiple parameters). Prefix a fie
          #
          # @param insight_id [String] Optional insight ID to filter conversation insights. Only insights matching this
          #
          # @param metadata [Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata]
          #
          # @param show [Array<String>] Fields to include in the result (can be comma-separated or multiple parameters).
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse]
          #
          # @see Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesParams
          def retrieve_aggregates(params = {})
            parsed, options =
              Telnyx::AI::Conversations::ConversationInsightRetrieveAggregatesParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "ai/conversations/conversation-insights/aggregates",
              query: query,
              model: Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse,
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
