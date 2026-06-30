# typed: strong

module Telnyx
  module Models
    class AIListConversationHistoriesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AIListConversationHistoriesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique chunk identifier.
      sig { returns(String) }
      attr_accessor :id

      # Zero-based index of this chunk within the parent record.
      sig { returns(Integer) }
      attr_accessor :chunk_index

      # Total number of chunks the parent record was split into.
      sig { returns(Integer) }
      attr_accessor :chunk_total

      # When the record was chunked, embedded, and indexed (ISO 8601).
      sig { returns(Time) }
      attr_accessor :ingested_at

      # Identifier of the organization that owns this record.
      sig { returns(String) }
      attr_accessor :organization_id

      # When the original record was created (ISO 8601).
      sig { returns(Time) }
      attr_accessor :record_created_at

      # Identifier of the parent record. Multiple chunks from the same record share this
      # ID.
      sig { returns(String) }
      attr_accessor :record_id

      # The region where this record is stored.
      sig do
        returns(
          Telnyx::Models::AIListConversationHistoriesResponse::Region::TaggedSymbol
        )
      end
      attr_accessor :region

      # Cosine similarity score between the query vector and this chunk's vector. Higher
      # values indicate greater semantic relevance.
      sig { returns(Float) }
      attr_accessor :score

      # The text content of this chunk (up to 480 tokens).
      sig { returns(String) }
      attr_accessor :text

      # Identifier of the user who owns this record.
      sig { returns(String) }
      attr_accessor :user_id

      # Arbitrary metadata attached to the record at ingestion time. Filterable via
      # filter[field]=value query parameters.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # A single search result representing one chunk of a conversation history record.
      # Records are split into chunks of up to 480 tokens with 64-token overlap at
      # ingestion time.
      sig do
        params(
          id: String,
          chunk_index: Integer,
          chunk_total: Integer,
          ingested_at: Time,
          organization_id: String,
          record_created_at: Time,
          record_id: String,
          region:
            Telnyx::Models::AIListConversationHistoriesResponse::Region::OrSymbol,
          score: Float,
          text: String,
          user_id: String,
          metadata: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique chunk identifier.
        id:,
        # Zero-based index of this chunk within the parent record.
        chunk_index:,
        # Total number of chunks the parent record was split into.
        chunk_total:,
        # When the record was chunked, embedded, and indexed (ISO 8601).
        ingested_at:,
        # Identifier of the organization that owns this record.
        organization_id:,
        # When the original record was created (ISO 8601).
        record_created_at:,
        # Identifier of the parent record. Multiple chunks from the same record share this
        # ID.
        record_id:,
        # The region where this record is stored.
        region:,
        # Cosine similarity score between the query vector and this chunk's vector. Higher
        # values indicate greater semantic relevance.
        score:,
        # The text content of this chunk (up to 480 tokens).
        text:,
        # Identifier of the user who owns this record.
        user_id:,
        # Arbitrary metadata attached to the record at ingestion time. Filterable via
        # filter[field]=value query parameters.
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            chunk_index: Integer,
            chunk_total: Integer,
            ingested_at: Time,
            organization_id: String,
            record_created_at: Time,
            record_id: String,
            region:
              Telnyx::Models::AIListConversationHistoriesResponse::Region::TaggedSymbol,
            score: Float,
            text: String,
            user_id: String,
            metadata: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end

      # The region where this record is stored.
      module Region
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::AIListConversationHistoriesResponse::Region
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USA =
          T.let(
            :USA,
            Telnyx::Models::AIListConversationHistoriesResponse::Region::TaggedSymbol
          )
        DEU =
          T.let(
            :DEU,
            Telnyx::Models::AIListConversationHistoriesResponse::Region::TaggedSymbol
          )
        AUS =
          T.let(
            :AUS,
            Telnyx::Models::AIListConversationHistoriesResponse::Region::TaggedSymbol
          )
        UAE =
          T.let(
            :UAE,
            Telnyx::Models::AIListConversationHistoriesResponse::Region::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::AIListConversationHistoriesResponse::Region::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
