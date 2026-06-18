# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#retrieve_conversation_histories
    class AIRetrieveConversationHistoriesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute q
      #   Natural language search query. The text is embedded into a 1024-dimensional
      #   vector and compared against indexed record chunks using kNN cosine similarity.
      #
      #   @return [String]
      required :q, String

      # @!attribute record_type
      #   The type of records to search. Each record type is stored in a separate vector
      #   index.
      #
      #   @return [Symbol, Telnyx::Models::AIRetrieveConversationHistoriesParams::RecordType]
      required :record_type, enum: -> { Telnyx::AIRetrieveConversationHistoriesParams::RecordType }

      # @!attribute filter_document_id
      #   Filter by document identifier (exact match). Populated for knowledge_base
      #   records.
      #
      #   @return [String, nil]
      optional :filter_document_id, String

      # @!attribute filter_ingested_at_gte
      #   Only include records ingested (chunked, embedded, and indexed) on or after this
      #   ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :filter_ingested_at_gte, Time

      # @!attribute filter_ingested_at_lte
      #   Only include records ingested (chunked, embedded, and indexed) on or before this
      #   ISO 8601 timestamp.
      #
      #   @return [Time, nil]
      optional :filter_ingested_at_lte, Time

      # @!attribute filter_record_created_at_gte
      #   Only include records whose original creation time is on or after this ISO 8601
      #   timestamp.
      #
      #   @return [Time, nil]
      optional :filter_record_created_at_gte, Time

      # @!attribute filter_record_created_at_lte
      #   Only include records whose original creation time is on or before this ISO 8601
      #   timestamp.
      #
      #   @return [Time, nil]
      optional :filter_record_created_at_lte, Time

      # @!attribute filter_record_id
      #   Filter to chunks belonging to a specific parent record (exact match).
      #
      #   @return [String, nil]
      optional :filter_record_id, String

      # @!attribute filter_region_in
      #   Filter by the region stored on the record. Comma-separated to match multiple
      #   regions (USA, DEU, AUS, UAE). Distinct from the `region` parameter, which
      #   selects which cluster(s) are queried.
      #
      #   @return [String, nil]
      optional :filter_region_in, String

      # @!attribute filter_retention
      #   Filter by retention policy (exact match). Filter-only: not returned in the
      #   response body.
      #
      #   @return [String, nil]
      optional :filter_retention, String

      # @!attribute filter_user_id
      #   Filter to records owned by a specific user (exact match).
      #
      #   @return [String, nil]
      optional :filter_user_id, String

      # @!attribute min_score
      #   Minimum cosine similarity score threshold (0.0 to 1.0). Results below this
      #   threshold are excluded.
      #
      #   @return [Float, nil]
      optional :min_score, Float

      # @!attribute region
      #   Restrict search to a specific region's OpenSearch cluster. When omitted, all
      #   regions are queried in parallel (fan-out) and results are merged by cosine
      #   similarity score.
      #
      #   @return [Symbol, Telnyx::Models::AIRetrieveConversationHistoriesParams::Region, nil]
      optional :region, enum: -> { Telnyx::AIRetrieveConversationHistoriesParams::Region }

      # @!attribute top_k
      #   Maximum number of results to return. Defaults to 20, maximum 100.
      #
      #   @return [Integer, nil]
      optional :top_k, Integer

      # @!method initialize(q:, record_type:, filter_document_id: nil, filter_ingested_at_gte: nil, filter_ingested_at_lte: nil, filter_record_created_at_gte: nil, filter_record_created_at_lte: nil, filter_record_id: nil, filter_region_in: nil, filter_retention: nil, filter_user_id: nil, min_score: nil, region: nil, top_k: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AIRetrieveConversationHistoriesParams} for more details.
      #
      #   @param q [String] Natural language search query. The text is embedded into a 1024-dimensional vect
      #
      #   @param record_type [Symbol, Telnyx::Models::AIRetrieveConversationHistoriesParams::RecordType] The type of records to search. Each record type is stored in a separate vector i
      #
      #   @param filter_document_id [String] Filter by document identifier (exact match). Populated for knowledge_base record
      #
      #   @param filter_ingested_at_gte [Time] Only include records ingested (chunked, embedded, and indexed) on or after this
      #
      #   @param filter_ingested_at_lte [Time] Only include records ingested (chunked, embedded, and indexed) on or before this
      #
      #   @param filter_record_created_at_gte [Time] Only include records whose original creation time is on or after this ISO 8601 t
      #
      #   @param filter_record_created_at_lte [Time] Only include records whose original creation time is on or before this ISO 8601
      #
      #   @param filter_record_id [String] Filter to chunks belonging to a specific parent record (exact match).
      #
      #   @param filter_region_in [String] Filter by the region stored on the record. Comma-separated to match multiple reg
      #
      #   @param filter_retention [String] Filter by retention policy (exact match). Filter-only: not returned in the respo
      #
      #   @param filter_user_id [String] Filter to records owned by a specific user (exact match).
      #
      #   @param min_score [Float] Minimum cosine similarity score threshold (0.0 to 1.0). Results below this thres
      #
      #   @param region [Symbol, Telnyx::Models::AIRetrieveConversationHistoriesParams::Region] Restrict search to a specific region's OpenSearch cluster. When omitted, all reg
      #
      #   @param top_k [Integer] Maximum number of results to return. Defaults to 20, maximum 100.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The type of records to search. Each record type is stored in a separate vector
      # index.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        VOICE = :voice
        MESSAGE = :message
        AI_PIPELINE_STORAGE = :ai_pipeline_storage
        KNOWLEDGE_BASE = :knowledge_base

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Restrict search to a specific region's OpenSearch cluster. When omitted, all
      # regions are queried in parallel (fan-out) and results are merged by cosine
      # similarity score.
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
