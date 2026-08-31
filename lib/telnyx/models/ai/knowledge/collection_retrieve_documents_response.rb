# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Knowledge
        # @see Telnyx::Resources::AI::Knowledge::Collections#retrieve_documents
        class CollectionRetrieveDocumentsResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse::Data>, nil]
          optional :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse::Data] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse::Meta, nil]
          optional :meta, -> { Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse::Meta }

          # @!method initialize(data: nil, meta: nil)
          #   @param data [Array<Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse::Data>]
          #   @param meta [Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse::Meta]

          class Data < Telnyx::Internal::Type::BaseModel
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
            #   {Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse::Data} for
            #   more details.
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

          # @see Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse#meta
          class Meta < Telnyx::Internal::Type::BaseModel
            # @!attribute collection_slug
            #
            #   @return [String, nil]
            optional :collection_slug, String

            # @!attribute page_number
            #
            #   @return [Integer, nil]
            optional :page_number, Integer

            # @!attribute page_size
            #
            #   @return [Integer, nil]
            optional :page_size, Integer

            # @!attribute retrieval_type
            #
            #   @return [String, nil]
            optional :retrieval_type, String

            # @!attribute searched_sources
            #
            #   @return [Array<String>, nil]
            optional :searched_sources, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute top_k
            #
            #   @return [Integer, nil]
            optional :top_k, Integer

            # @!attribute total_pages
            #
            #   @return [Integer, nil]
            optional :total_pages, Integer

            # @!attribute total_results
            #
            #   @return [Integer, nil]
            optional :total_results, Integer

            # @!method initialize(collection_slug: nil, page_number: nil, page_size: nil, retrieval_type: nil, searched_sources: nil, top_k: nil, total_pages: nil, total_results: nil)
            #   @param collection_slug [String]
            #   @param page_number [Integer]
            #   @param page_size [Integer]
            #   @param retrieval_type [String]
            #   @param searched_sources [Array<String>]
            #   @param top_k [Integer]
            #   @param total_pages [Integer]
            #   @param total_results [Integer]
          end
        end
      end
    end
  end
end
