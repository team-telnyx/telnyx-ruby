# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class ConversationInsightRetrieveAggregatesResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # Aggregation result rows. Each row contains the grouped field values and a
          # `record_count`.
          sig do
            returns(
              T::Array[
                Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse::Data
              ]
            )
          end
          attr_accessor :data

          # Aggregated conversation insight counts grouped by the specified fields. Each
          # item in `data` contains the grouped field values and a `record_count` indicating
          # how many conversation insights match that combination.
          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse::Data::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Aggregation result rows. Each row contains the grouped field values and a
            # `record_count`.
            data:
          )
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse::Data
                  ]
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Conversations::ConversationInsightRetrieveAggregatesResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # Number of conversation insights that match this combination of grouped field
            # values.
            sig { returns(Integer) }
            attr_accessor :record_count

            # An aggregation row. Contains the grouped field values (keyed by the group_by
            # field names) and a `record_count` integer. For example, when grouping by
            # `score`, each row has a `score` value and a `record_count` of conversations with
            # that score. When also splitting by `metadata.assistant_version_id`, each row
            # includes both `score` and `metadata.assistant_version_id` plus their combined
            # `record_count`.
            sig { params(record_count: Integer).returns(T.attached_class) }
            def self.new(
              # Number of conversation insights that match this combination of grouped field
              # values.
              record_count:
            )
            end

            sig { override.returns({ record_count: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
