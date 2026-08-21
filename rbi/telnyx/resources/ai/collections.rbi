# typed: strong

module Telnyx
  module Resources
    class AI
      # Create and manage logical collections of your Telnyx data, tune retrieval
      # settings, manage sources, and run collection-scoped semantic search.
      class Collections
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        sig { returns(Telnyx::Resources::AI::Collections::Settings) }
        attr_reader :settings

        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        sig { returns(Telnyx::Resources::AI::Collections::Sources) }
        attr_reader :sources

        # Creates a new collection scoped to your organization. Optionally attach sources
        # and retrieval settings at creation time. If `slug` is omitted, one is derived
        # from `name` and must be unique within your organization.
        sig do
          params(
            name: String,
            description: String,
            settings: Telnyx::AI::Collections::RetrievalSettingsWrapper::OrHash,
            slug: String,
            sources: T::Array[Telnyx::AI::Collections::SourceRequest::OrHash],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::CollectionEnvelope)
        end
        def create(
          # Human-readable collection name.
          name:,
          # Optional description.
          description: nil,
          # Optional retrieval settings.
          settings: nil,
          # Optional slug (unique per organization). Derived from `name` when omitted.
          slug: nil,
          # Optional sources to attach at creation time.
          sources: nil,
          request_options: {}
        )
        end

        # Fetches a single collection by its `slug`.
        sig do
          params(
            slug: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::CollectionEnvelope)
        end
        def retrieve(
          # The collection's slug (unique within your organization).
          slug,
          request_options: {}
        )
        end

        # Updates a collection's metadata (`name` and/or `description`). Sources and
        # settings are managed through their own sub-resources.
        sig do
          params(
            uuid: String,
            description: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::CollectionEnvelope)
        end
        def update(
          # The collection's unique identifier.
          uuid,
          description: nil,
          name: nil,
          request_options: {}
        )
        end

        # Returns a paginated list of collections in your organization.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[Telnyx::AI::Collection]
          )
        end
        def list(
          # Page number to return (1-based). Defaults to 1.
          page_number: nil,
          # Number of results per page. Defaults to 20.
          page_size: nil,
          request_options: {}
        )
        end

        # Soft-deletes a collection. Its `slug` is freed and may be reused by a new
        # collection.
        sig do
          params(
            uuid: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The collection's unique identifier.
          uuid,
          request_options: {}
        )
        end

        # Fetches a single collection by its `uuid`.
        sig do
          params(
            uuid: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::CollectionEnvelope)
        end
        def retrieve_by_id(
          # The collection's unique identifier.
          uuid,
          request_options: {}
        )
        end

        # Runs search over the documents in a collection, ranked by relevance to `query`.
        # The collection's `retrieval_type` setting selects the strategy: `vector`
        # (semantic similarity), `hybrid` (vector similarity fused with keyword matching),
        # or `keyword` (lexical BM25 matching). When `query` is omitted, returns a plain
        # catalog listing of the collection's documents.
        #
        # **How it works:**
        #
        # 1. For `vector` and `hybrid`, the `query` text is embedded into a
        #    1024-dimensional vector using the multilingual-e5-large model.
        # 2. For `vector`, the embedding is compared against the collection's indexed
        #    document chunks using semantic similarity; for `hybrid`, those similarity
        #    scores are fused with keyword-match scores; for `keyword`, only lexical BM25
        #    matching is applied.
        # 3. Results are ranked by `score` (descending) and paginated via `page[number]` /
        #    `page[size]`.
        #
        # **Authentication:** Requires a Telnyx API key via `Authorization: Bearer <key>`.
        # Results are automatically scoped to your organization and cannot be overridden.
        #
        # **Filtering:** Use `filter[field][operator]=value` query parameters to narrow
        # results before search. Supported operators: `eq` (default), `in`, `gte`, `gt`,
        # `lte`, `lt`, `contains`. Metadata fields resolve to `metadata.<field>`.
        #
        # **Examples:**
        #
        # - `GET /v2/ai/collections/my-collection/documents?query=billing+issue&top_k=10`
        # - `GET /v2/ai/collections/my-collection/documents?query=refund&sources=voice,message`
        # - `GET /v2/ai/collections/my-collection/documents?query=outage&filter[record_created_at][gte]=2026-01-01T00:00:00Z`
        sig do
          params(
            slug: String,
            filter: T::Hash[Symbol, T.anything],
            page_number: Integer,
            page_size: Integer,
            query: String,
            retrieval_type:
              Telnyx::AI::CollectionRetrieveDocumentsParams::RetrievalType::OrSymbol,
            sources: String,
            top_k: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::AI::CollectionRetrieveDocumentsResponse
            ]
          )
        end
        def retrieve_documents(
          # The collection's slug (unique within your organization).
          slug,
          # Field filters applied before ranking, using `filter[field][operator]=value`.
          # Supported operators: `eq` (default), `in`, `gte`, `gt`, `lte`, `lt`, `contains`.
          # Known fields: `record_type`, `record_id`, `user_id`, `record_created_at`,
          # `ingested_at`; any other name resolves to a `metadata.<field>` filter. Example:
          # `filter[record_id][eq]=rec_123`.
          filter: nil,
          # Page number to return (1-based). Defaults to 1.
          page_number: nil,
          # Number of results per page. Defaults to 20.
          page_size: nil,
          # Natural-language search query. When provided, the text is matched against the
          # collection's document chunks using the collection's `retrieval_type` (vector or
          # hybrid). When omitted, documents are returned as a plain catalog listing.
          query: nil,
          # Override the collection's configured retrieval strategy for this request. Echoed
          # back in `meta.retrieval_type`.
          retrieval_type: nil,
          # Comma-separated list of source types to restrict the search to. When omitted,
          # all of the collection's sources are searched.
          sources: nil,
          # Maximum number of ranked results to consider. When omitted, the collection's
          # configured `top_k` setting is used.
          top_k: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
