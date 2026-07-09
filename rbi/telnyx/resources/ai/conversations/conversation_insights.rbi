# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        # Manage historical AI assistant conversations
        class ConversationInsights
          # Aggregate conversation insights by specified fields
          sig do
            params(
              created_at: String,
              group_by: T::Array[String],
              insight_id: String,
              metadata:
                Telnyx::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata::OrHash,
              show: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse
            )
          end
          def retrieve_aggregates(
            # Filter by creation datetime to scope the aggregation window. Supports range
            # operators (e.g., `created_at=gte.2025-01-01T00:00:00Z` for the start of the
            # range, `created_at=lt.2025-01-02T00:00:00Z` for the end). To build per-day time
            # series (as the portal does for the 'Insights Over Time' chart), issue one
            # request per day bounded by `created_at=gte.<day_start>` and
            # `created_at=lt.<next_day_start>`.
            created_at: nil,
            # Fields to group by (can be comma-separated or multiple parameters). Prefix a
            # field with 'metadata.' (e.g. 'metadata.assistant_id') to group by the
            # conversation's metadata instead of the insight result.
            #
            # Common fields used for over-time charts:
            #
            # - `score` — Group by the insight's score value (e.g. for Agent Instruction
            #   Following, User Satisfaction).
            # - `metadata.assistant_id` — Group by the assistant that handled the
            #   conversation.
            # - `metadata.assistant_version_id` — Group by the assistant version, useful for
            #   comparing performance across versions in the portal's 'Insights Over Time'
            #   chart.
            # - `metadata.telnyx_conversation_channel` — Group by conversation channel
            #   (phone_call, web_chat, etc.).
            group_by: nil,
            # Optional insight ID to filter conversation insights. Only insights matching this
            # ID will be included in the aggregation.
            insight_id: nil,
            metadata: nil,
            # Fields to include in the result (can be comma-separated or multiple parameters).
            # Supports the same 'metadata.<key>' prefix as group_by. Each returned row will
            # contain the grouped field values plus a `record_count` indicating how many
            # conversation insights match that combination.
            show: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
