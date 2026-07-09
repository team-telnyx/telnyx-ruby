# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::ConversationInsights#retrieve_aggregates
        class ConversationInsightRetrieveAggregatesResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   Aggregation result rows. Each row contains the grouped field values and a
          #   `record_count`.
          #
          #   @return [Array<Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse::Data>]
          required :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse::Data] }

          # @!method initialize(data:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse}
          #   for more details.
          #
          #   Aggregated conversation insight counts grouped by the specified fields. Each
          #   item in `data` contains the grouped field values and a `record_count` indicating
          #   how many conversation insights match that combination.
          #
          #   @param data [Array<Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse::Data>] Aggregation result rows. Each row contains the grouped field values and a `recor

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute record_count
            #   Number of conversation insights that match this combination of grouped field
            #   values.
            #
            #   @return [Integer]
            required :record_count, Integer

            # @!method initialize(record_count:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse::Data}
            #   for more details.
            #
            #   An aggregation row. Contains the grouped field values (keyed by the group_by
            #   field names) and a `record_count` integer. For example, when grouping by
            #   `score`, each row has a `score` value and a `record_count` of conversations with
            #   that score. When also splitting by `metadata.assistant_version_id`, each row
            #   includes both `score` and `metadata.assistant_version_id` plus their combined
            #   `record_count`.
            #
            #   @param record_count [Integer] Number of conversation insights that match this combination of grouped field val
          end
        end
      end
    end
  end
end
