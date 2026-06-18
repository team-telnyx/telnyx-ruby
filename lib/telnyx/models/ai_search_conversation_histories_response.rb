# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#search_conversation_histories
    class AISearchConversationHistoriesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Ranked list of matching text chunks, sorted by cosine similarity score
      #   descending.
      #
      #   @return [Array<Telnyx::Models::AISearchConversationHistoriesResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AISearchConversationHistoriesResponse::Data] }

      # @!attribute meta
      #   Pagination metadata following the standard Telnyx V2 API format.
      #
      #   @return [Telnyx::Models::AISearchConversationHistoriesResponse::Meta]
      required :meta, -> { Telnyx::Models::AISearchConversationHistoriesResponse::Meta }

      # @!method initialize(data:, meta:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AISearchConversationHistoriesResponse} for more details.
      #
      #   Search response following the standard Telnyx V2 API format.
      #
      #   @param data [Array<Telnyx::Models::AISearchConversationHistoriesResponse::Data>] Ranked list of matching text chunks, sorted by cosine similarity score descendin
      #
      #   @param meta [Telnyx::Models::AISearchConversationHistoriesResponse::Meta] Pagination metadata following the standard Telnyx V2 API format.

      class Data < Telnyx::Internal::Type::BaseModel
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

        # @!attribute document_id
        #   Document identifier. Present only for knowledge_base records; null for all other
        #   record types.
        #
        #   @return [String, nil]
        required :document_id, String, nil?: true

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

        # @!attribute record_type
        #   Type of the record.
        #
        #   @return [Symbol, Telnyx::Models::AISearchConversationHistoriesResponse::Data::RecordType]
        required :record_type,
                 enum: -> { Telnyx::Models::AISearchConversationHistoriesResponse::Data::RecordType }

        # @!attribute region
        #   The region where this record is stored.
        #
        #   @return [Symbol, Telnyx::Models::AISearchConversationHistoriesResponse::Data::Region]
        required :region, enum: -> { Telnyx::Models::AISearchConversationHistoriesResponse::Data::Region }

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
        #   Arbitrary metadata attached to the record at ingestion time. Stored as a
        #   flat_object in OpenSearch and filterable via filter[field]=value query
        #   parameters.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(id:, chunk_index:, chunk_total:, document_id:, ingested_at:, organization_id:, record_created_at:, record_id:, record_type:, region:, score:, text:, user_id:, metadata: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AISearchConversationHistoriesResponse::Data} for more details.
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
        #   @param document_id [String, nil] Document identifier. Present only for knowledge_base records; null for all other
        #
        #   @param ingested_at [Time] When the record was chunked, embedded, and indexed (ISO 8601).
        #
        #   @param organization_id [String] Identifier of the organization that owns this record.
        #
        #   @param record_created_at [Time] When the original record was created (ISO 8601).
        #
        #   @param record_id [String] Identifier of the parent record. Multiple chunks from the same record share this
        #
        #   @param record_type [Symbol, Telnyx::Models::AISearchConversationHistoriesResponse::Data::RecordType] Type of the record.
        #
        #   @param region [Symbol, Telnyx::Models::AISearchConversationHistoriesResponse::Data::Region] The region where this record is stored.
        #
        #   @param score [Float] Cosine similarity score between the query vector and this chunk's vector. Higher
        #
        #   @param text [String] The text content of this chunk (up to 480 tokens).
        #
        #   @param user_id [String] Identifier of the user who owns this record.
        #
        #   @param metadata [Hash{Symbol=>Object}] Arbitrary metadata attached to the record at ingestion time. Stored as a flat_ob

        # Type of the record.
        #
        # @see Telnyx::Models::AISearchConversationHistoriesResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          VOICE = :voice
          MESSAGE = :message
          AI_PIPELINE_STORAGE = :ai_pipeline_storage
          KNOWLEDGE_BASE = :knowledge_base

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The region where this record is stored.
        #
        # @see Telnyx::Models::AISearchConversationHistoriesResponse::Data#region
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

      # @see Telnyx::Models::AISearchConversationHistoriesResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #   Current page number (always 1 — this API does not support pagination, use top_k
        #   instead).
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #   Number of results per page (equals the effective top_k value).
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute total_pages
        #   Total number of pages.
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!attribute total_results
        #   Total number of matching results across all queried regions (before top_k
        #   truncation).
        #
        #   @return [Integer]
        required :total_results, Integer

        # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AISearchConversationHistoriesResponse::Meta} for more details.
        #
        #   Pagination metadata following the standard Telnyx V2 API format.
        #
        #   @param page_number [Integer] Current page number (always 1 — this API does not support pagination, use top_k
        #
        #   @param page_size [Integer] Number of results per page (equals the effective top_k value).
        #
        #   @param total_pages [Integer] Total number of pages.
        #
        #   @param total_results [Integer] Total number of matching results across all queried regions (before top_k trunca
      end
    end
  end
end
