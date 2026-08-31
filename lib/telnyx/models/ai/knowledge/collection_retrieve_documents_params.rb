# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Knowledge
        # @see Telnyx::Resources::AI::Knowledge::Collections#retrieve_documents
        class CollectionRetrieveDocumentsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute slug
          #
          #   @return [String]
          required :slug, String

          # @!attribute filter
          #   Field filters applied before ranking, using `filter[field][operator]=value`.
          #   Supported operators: `eq` (default), `in`, `gte`, `gt`, `lte`, `lt`, `contains`.
          #   Known fields: `record_type`, `record_id`, `user_id`, `record_created_at`,
          #   `ingested_at`; any other name resolves to a `metadata.<field>` filter. Example:
          #   `filter[record_id][eq]=rec_123`.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :filter, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute page_number
          #   Page number to return (1-based). Defaults to 1.
          #
          #   @return [Integer, nil]
          optional :page_number, Integer

          # @!attribute page_size
          #   Number of results per page. Defaults to 20.
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute query
          #   Natural-language search query. When provided, the text is matched against the
          #   collection's document chunks using the collection's `retrieval_type` (vector or
          #   hybrid). When omitted, documents are returned as a plain catalog listing.
          #
          #   @return [String, nil]
          optional :query, String

          # @!attribute retrieval_type
          #   Reserved; not yet functional. A value supplied here is accepted but ignored — it
          #   does not override the collection's configured strategy, and it is not echoed
          #   back. Searches run `vector` retrieval, and `meta.retrieval_type` reports the
          #   mode that actually ran. To change retrieval strategy, set it on the collection's
          #   settings subresource.
          #
          #   @return [Symbol, Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType, nil]
          optional :retrieval_type,
                   enum: -> { Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType }

          # @!attribute sources
          #   Comma-separated list of source types to restrict the search to. When omitted,
          #   all of the collection's sources are searched.
          #
          #   @return [String, nil]
          optional :sources, String

          # @!attribute top_k
          #   Maximum number of ranked results to consider. When omitted, the collection's
          #   configured `top_k` setting is used.
          #
          #   @return [Integer, nil]
          optional :top_k, Integer

          # @!method initialize(slug:, filter: nil, page_number: nil, page_size: nil, query: nil, retrieval_type: nil, sources: nil, top_k: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsParams} for more
          #   details.
          #
          #   @param slug [String]
          #
          #   @param filter [Hash{Symbol=>Object}] Field filters applied before ranking, using `filter[field][operator]=value`. Sup
          #
          #   @param page_number [Integer] Page number to return (1-based). Defaults to 1.
          #
          #   @param page_size [Integer] Number of results per page. Defaults to 20.
          #
          #   @param query [String] Natural-language search query. When provided, the text is matched against the co
          #
          #   @param retrieval_type [Symbol, Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType] Reserved; not yet functional. A value supplied here is accepted but ignored — it
          #
          #   @param sources [String] Comma-separated list of source types to restrict the search to. When omitted, al
          #
          #   @param top_k [Integer] Maximum number of ranked results to consider. When omitted, the collection's con
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # Reserved; not yet functional. A value supplied here is accepted but ignored — it
          # does not override the collection's configured strategy, and it is not echoed
          # back. Searches run `vector` retrieval, and `meta.retrieval_type` reports the
          # mode that actually ran. To change retrieval strategy, set it on the collection's
          # settings subresource.
          module RetrievalType
            extend Telnyx::Internal::Type::Enum

            VECTOR = :vector
            HYBRID = :hybrid
            KEYWORD = :keyword

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
