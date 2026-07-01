# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#retrieve_conversation_histories
    class AIRetrieveConversationHistoriesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute q
      #   Natural language search query. The text is embedded into a 1024-dimensional
      #   vector and compared against indexed record chunks using semantic similarity.
      #
      #   @return [String]
      required :q, String

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

      # @!attribute page_number
      #   Page number to return (1-based). Defaults to 1.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page. Defaults to 20, maximum 100.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute region
      #   Restrict search to a specific region. When omitted, all regions are queried in
      #   parallel (fan-out) and results are merged by similarity score.
      #
      #   @return [Symbol, Telnyx::Models::AIRetrieveConversationHistoriesParams::Region, nil]
      optional :region, enum: -> { Telnyx::AIRetrieveConversationHistoriesParams::Region }

      # @!method initialize(q:, filter_ingested_at_gte: nil, filter_ingested_at_lte: nil, filter_record_created_at_gte: nil, filter_record_created_at_lte: nil, filter_record_id: nil, filter_region_in: nil, filter_retention: nil, filter_user_id: nil, min_score: nil, page_number: nil, page_size: nil, region: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AIRetrieveConversationHistoriesParams} for more details.
      #
      #   @param q [String] Natural language search query. The text is embedded into a 1024-dimensional vect
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
      #   @param page_number [Integer] Page number to return (1-based). Defaults to 1.
      #
      #   @param page_size [Integer] Number of results per page. Defaults to 20, maximum 100.
      #
      #   @param region [Symbol, Telnyx::Models::AIRetrieveConversationHistoriesParams::Region] Restrict search to a specific region. When omitted, all regions are queried in p
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Restrict search to a specific region. When omitted, all regions are queried in
      # parallel (fan-out) and results are merged by similarity score.
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
