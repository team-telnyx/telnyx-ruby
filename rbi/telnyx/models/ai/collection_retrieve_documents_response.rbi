# typed: strong

module Telnyx
  module Models
    module AI
      class CollectionRetrieveDocumentsResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::CollectionRetrieveDocumentsResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(Integer)) }
        attr_reader :chunk_index

        sig { params(chunk_index: Integer).void }
        attr_writer :chunk_index

        sig { returns(T.nilable(Integer)) }
        attr_reader :chunk_total

        sig { params(chunk_total: Integer).void }
        attr_writer :chunk_total

        sig { returns(T.nilable(Time)) }
        attr_reader :ingested_at

        sig { params(ingested_at: Time).void }
        attr_writer :ingested_at

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :organization_id

        sig { params(organization_id: String).void }
        attr_writer :organization_id

        sig { returns(T.nilable(Time)) }
        attr_reader :record_created_at

        sig { params(record_created_at: Time).void }
        attr_writer :record_created_at

        sig { returns(T.nilable(String)) }
        attr_reader :record_id

        sig { params(record_id: String).void }
        attr_writer :record_id

        # The source record kind this chunk came from (e.g. `voice`, `meeting_bot`,
        # `message`).
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig { returns(T.nilable(String)) }
        attr_reader :region

        sig { params(region: String).void }
        attr_writer :region

        # Relevance score (higher = more relevant) for ranked search. `0.0` for plain
        # catalog listings (when `query` is omitted).
        sig { returns(T.nilable(Float)) }
        attr_reader :score

        sig { params(score: Float).void }
        attr_writer :score

        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        sig do
          params(
            id: String,
            chunk_index: Integer,
            chunk_total: Integer,
            ingested_at: Time,
            metadata: T::Hash[Symbol, T.anything],
            organization_id: String,
            record_created_at: Time,
            record_id: String,
            record_type: String,
            region: String,
            score: Float,
            text: String,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          chunk_index: nil,
          chunk_total: nil,
          ingested_at: nil,
          metadata: nil,
          organization_id: nil,
          record_created_at: nil,
          record_id: nil,
          # The source record kind this chunk came from (e.g. `voice`, `meeting_bot`,
          # `message`).
          record_type: nil,
          region: nil,
          # Relevance score (higher = more relevant) for ranked search. `0.0` for plain
          # catalog listings (when `query` is omitted).
          score: nil,
          text: nil,
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              chunk_index: Integer,
              chunk_total: Integer,
              ingested_at: Time,
              metadata: T::Hash[Symbol, T.anything],
              organization_id: String,
              record_created_at: Time,
              record_id: String,
              record_type: String,
              region: String,
              score: Float,
              text: String,
              user_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
