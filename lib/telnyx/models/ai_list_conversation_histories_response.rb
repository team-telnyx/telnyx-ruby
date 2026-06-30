# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#list_conversation_histories
    class AIListConversationHistoriesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique chunk identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute chunk_index
      #   Zero-based index of this chunk within the parent record.
      #
      #   @return [Integer]
      required :chunk_index, Integer

      # @!attribute chunk_total
      #   Total number of chunks the parent record was split into.
      #
      #   @return [Integer]
      required :chunk_total, Integer

      # @!attribute ingested_at
      #   When the record was chunked, embedded, and indexed (ISO 8601).
      #
      #   @return [Time]
      required :ingested_at, Time

      # @!attribute organization_id
      #   Identifier of the organization that owns this record.
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute record_created_at
      #   When the original record was created (ISO 8601).
      #
      #   @return [Time]
      required :record_created_at, Time

      # @!attribute record_id
      #   Identifier of the parent record. Multiple chunks from the same record share this
      #   ID.
      #
      #   @return [String]
      required :record_id, String

      # @!attribute region
      #   The region where this record is stored.
      #
      #   @return [Symbol, Telnyx::Models::AIListConversationHistoriesResponse::Region]
      required :region, enum: -> { Telnyx::Models::AIListConversationHistoriesResponse::Region }

      # @!attribute score
      #   Cosine similarity score between the query vector and this chunk's vector. Higher
      #   values indicate greater semantic relevance.
      #
      #   @return [Float]
      required :score, Float

      # @!attribute text
      #   The text content of this chunk (up to 480 tokens).
      #
      #   @return [String]
      required :text, String

      # @!attribute user_id
      #   Identifier of the user who owns this record.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute metadata
      #   Arbitrary metadata attached to the record at ingestion time. Filterable via
      #   filter[field]=value query parameters.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(id:, chunk_index:, chunk_total:, ingested_at:, organization_id:, record_created_at:, record_id:, region:, score:, text:, user_id:, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AIListConversationHistoriesResponse} for more details.
      #
      #   A single search result representing one chunk of a conversation history record.
      #   Records are split into chunks of up to 480 tokens with 64-token overlap at
      #   ingestion time.
      #
      #   @param id [String] Unique chunk identifier.
      #
      #   @param chunk_index [Integer] Zero-based index of this chunk within the parent record.
      #
      #   @param chunk_total [Integer] Total number of chunks the parent record was split into.
      #
      #   @param ingested_at [Time] When the record was chunked, embedded, and indexed (ISO 8601).
      #
      #   @param organization_id [String] Identifier of the organization that owns this record.
      #
      #   @param record_created_at [Time] When the original record was created (ISO 8601).
      #
      #   @param record_id [String] Identifier of the parent record. Multiple chunks from the same record share this
      #
      #   @param region [Symbol, Telnyx::Models::AIListConversationHistoriesResponse::Region] The region where this record is stored.
      #
      #   @param score [Float] Cosine similarity score between the query vector and this chunk's vector. Higher
      #
      #   @param text [String] The text content of this chunk (up to 480 tokens).
      #
      #   @param user_id [String] Identifier of the user who owns this record.
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary metadata attached to the record at ingestion time. Filterable via filt

      # The region where this record is stored.
      #
      # @see Telnyx::Models::AIListConversationHistoriesResponse#region
      module Region
        extend Telnyx::Internal::Type::Enum

        USA = :USA
        DEU = :DEU
        AUS = :AUS
        UAE = :UAE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
