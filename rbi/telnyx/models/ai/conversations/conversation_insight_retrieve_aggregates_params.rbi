# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class ConversationInsightRetrieveAggregatesParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::ConversationInsightRetrieveAggregatesParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by creation datetime to scope the aggregation window. Supports range
          # operators (e.g., `created_at=gte.2025-01-01T00:00:00Z` for the start of the
          # range, `created_at=lt.2025-01-02T00:00:00Z` for the end). To build per-day time
          # series (as the portal does for the 'Insights Over Time' chart), issue one
          # request per day bounded by `created_at=gte.<day_start>` and
          # `created_at=lt.<next_day_start>`.
          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

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
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :group_by

          sig { params(group_by: T::Array[String]).void }
          attr_writer :group_by

          # Optional insight ID to filter conversation insights. Only insights matching this
          # ID will be included in the aggregation.
          sig { returns(T.nilable(String)) }
          attr_reader :insight_id

          sig { params(insight_id: String).void }
          attr_writer :insight_id

          sig do
            returns(
              T.nilable(
                Telnyx::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata
              )
            )
          end
          attr_reader :metadata

          sig do
            params(
              metadata:
                Telnyx::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata::OrHash
            ).void
          end
          attr_writer :metadata

          # Fields to include in the result (can be comma-separated or multiple parameters).
          # Supports the same 'metadata.<key>' prefix as group_by. Each returned row will
          # contain the grouped field values plus a `record_count` indicating how many
          # conversation insights match that combination.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :show

          sig { params(show: T::Array[String]).void }
          attr_writer :show

          sig do
            params(
              created_at: String,
              group_by: T::Array[String],
              insight_id: String,
              metadata:
                Telnyx::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata::OrHash,
              show: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
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

          sig do
            override.returns(
              {
                created_at: String,
                group_by: T::Array[String],
                insight_id: String,
                metadata:
                  Telnyx::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata,
                show: T::Array[String],
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Metadata < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Conversations::ConversationInsightRetrieveAggregatesParams::Metadata,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter by assistant ID (e.g., `metadata.assistant_id=eq.<assistant_id>`). When
            # provided, only conversation insights for the specified assistant are aggregated.
            # Used by the portal to scope the 'Insights Over Time' chart to a single
            # assistant.
            sig { returns(T.nilable(String)) }
            attr_reader :assistant_id

            sig { params(assistant_id: String).void }
            attr_writer :assistant_id

            sig { params(assistant_id: String).returns(T.attached_class) }
            def self.new(
              # Filter by assistant ID (e.g., `metadata.assistant_id=eq.<assistant_id>`). When
              # provided, only conversation insights for the specified assistant are aggregated.
              # Used by the portal to scope the 'Insights Over Time' chart to a single
              # assistant.
              assistant_id: nil
            )
            end

            sig { override.returns({ assistant_id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
