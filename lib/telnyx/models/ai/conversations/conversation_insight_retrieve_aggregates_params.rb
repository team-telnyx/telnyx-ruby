# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::ConversationInsights#retrieve_aggregates
        class ConversationInsightRetrieveAggregatesParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute created_at
          #   Filter by creation datetime to scope the aggregation window. Supports range
          #   operators (e.g., `created_at=gte.2025-01-01T00:00:00Z` for the start of the
          #   range, `created_at=lt.2025-01-02T00:00:00Z` for the end). To build per-day time
          #   series (as the portal does for the 'Insights Over Time' chart), issue one
          #   request per day bounded by `created_at=gte.<day_start>` and
          #   `created_at=lt.<next_day_start>`.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute group_by
          #   Fields to group by (can be comma-separated or multiple parameters). Prefix a
          #   field with 'metadata.' (e.g. 'metadata.assistant_id') to group by the
          #   conversation's metadata instead of the insight result.
          #
          #   Common fields used for over-time charts:
          #
          #   - `score` — Group by the insight's score value (e.g. for Agent Instruction
          #     Following, User Satisfaction).
          #   - `metadata.assistant_id` — Group by the assistant that handled the
          #     conversation.
          #   - `metadata.assistant_version_id` — Group by the assistant version, useful for
          #     comparing performance across versions in the portal's 'Insights Over Time'
          #     chart.
          #   - `metadata.telnyx_conversation_channel` — Group by conversation channel
          #     (phone_call, web_chat, etc.).
          #
          #   @return [Array<String>, nil]
          optional :group_by, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute insight_id
          #   Optional insight ID to filter conversation insights. Only insights matching this
          #   ID will be included in the aggregation.
          #
          #   @return [String, nil]
          optional :insight_id, String

          # @!attribute metadata
          #
          #   @return [Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata, nil]
          optional :metadata,
                   -> { Telnyx::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata }

          # @!attribute show
          #   Fields to include in the result (can be comma-separated or multiple parameters).
          #   Supports the same 'metadata.<key>' prefix as group_by. Each returned row will
          #   contain the grouped field values plus a `record_count` indicating how many
          #   conversation insights match that combination.
          #
          #   @return [Array<String>, nil]
          optional :show, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(created_at: nil, group_by: nil, insight_id: nil, metadata: nil, show: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesParams}
          #   for more details.
          #
          #   @param created_at [String] Filter by creation datetime to scope the aggregation window. Supports range oper
          #
          #   @param group_by [Array<String>] Fields to group by (can be comma-separated or multiple parameters). Prefix a fie
          #
          #   @param insight_id [String] Optional insight ID to filter conversation insights. Only insights matching this
          #
          #   @param metadata [Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata]
          #
          #   @param show [Array<String>] Fields to include in the result (can be comma-separated or multiple parameters).
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          class Metadata < Telnyx::Internal::Type::BaseModel
            # @!attribute assistant_id
            #   Filter by assistant ID (e.g., `metadata.assistant_id=eq.<assistant_id>`). When
            #   provided, only conversation insights for the specified assistant are aggregated.
            #   Used by the portal to scope the 'Insights Over Time' chart to a single
            #   assistant.
            #
            #   @return [String, nil]
            optional :assistant_id, String

            # @!method initialize(assistant_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata}
            #   for more details.
            #
            #   @param assistant_id [String] Filter by assistant ID (e.g., `metadata.assistant_id=eq.<assistant_id>`). When p
          end
        end
      end
    end
  end
end
