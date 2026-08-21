# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Collections#retrieve_documents
      class CollectionRetrieveDocumentsResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute chunk_index
        #
        #   @return [Integer, nil]
        optional :chunk_index, Integer

        # @!attribute chunk_total
        #
        #   @return [Integer, nil]
        optional :chunk_total, Integer

        # @!attribute ingested_at
        #
        #   @return [Time, nil]
        optional :ingested_at, Time

        # @!attribute metadata
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute organization_id
        #
        #   @return [String, nil]
        optional :organization_id, String

        # @!attribute record_created_at
        #
        #   @return [Time, nil]
        optional :record_created_at, Time

        # @!attribute record_id
        #
        #   @return [String, nil]
        optional :record_id, String

        # @!attribute record_type
        #   The source record kind this chunk came from (e.g. `voice`, `meeting_bot`,
        #   `message`).
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute region
        #
        #   @return [String, nil]
        optional :region, String

        # @!attribute score
        #   Relevance score (higher = more relevant) for ranked search. `0.0` for plain
        #   catalog listings (when `query` is omitted).
        #
        #   @return [Float, nil]
        optional :score, Float

        # @!attribute text
        #
        #   @return [String, nil]
        optional :text, String

        # @!attribute user_id
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!method initialize(id: nil, chunk_index: nil, chunk_total: nil, ingested_at: nil, metadata: nil, organization_id: nil, record_created_at: nil, record_id: nil, record_type: nil, region: nil, score: nil, text: nil, user_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::CollectionRetrieveDocumentsResponse} for more details.
        #
        #   @param id [String]
        #
        #   @param chunk_index [Integer]
        #
        #   @param chunk_total [Integer]
        #
        #   @param ingested_at [Time]
        #
        #   @param metadata [Hash{Symbol=>Object}]
        #
        #   @param organization_id [String]
        #
        #   @param record_created_at [Time]
        #
        #   @param record_id [String]
        #
        #   @param record_type [String] The source record kind this chunk came from (e.g. `voice`, `meeting_bot`, `messa
        #
        #   @param region [String]
        #
        #   @param score [Float] Relevance score (higher = more relevant) for ranked search. `0.0` for plain cata
        #
        #   @param text [String]
        #
        #   @param user_id [String]
      end
    end
  end
end
