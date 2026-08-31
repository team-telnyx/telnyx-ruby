# typed: strong

module Telnyx
  module Resources
    class AI
      class Knowledge
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        class Collections
          # Runs search over the documents in a collection, ranked by relevance to `query`.
          # Searches currently run `vector` retrieval (semantic similarity). The
          # collection's `retrieval_type` setting is the forward-compatible selector:
          # `hybrid` (vector similarity fused with keyword matching) can be set but cannot
          # be searched yet, and `keyword` (lexical BM25 matching) is not accepted yet --
          # setting it returns 422 `unsupported_retrieval_type`. A per-request
          # `retrieval_type` is accepted but ignored; `meta.retrieval_type` echoes the mode
          # that actually ran. When `query` is omitted, returns a plain catalog listing of
          # the collection's documents.
          #
          # **How it works:**
          #
          # 1. The `query` text is embedded into a 1024-dimensional vector using the
          #    multilingual-e5-large model.
          # 2. The embedding is compared against the collection's indexed document chunks
          #    using semantic similarity. When `hybrid` and `keyword` execution ship, those
          #    scores will be fused with, or replaced by, lexical BM25 matching.
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
          # - `GET /v2/ai/knowledge/collections/my-collection/documents?query=billing+issue&top_k=10`
          # - `GET /v2/ai/knowledge/collections/my-collection/documents?query=refund&sources=voice,message`
          # - `GET /v2/ai/knowledge/collections/my-collection/documents?query=outage&filter[record_created_at][gte]=2026-01-01T00:00:00Z`
          sig do
            params(
              slug: String,
              filter: T::Hash[Symbol, T.anything],
              page_number: Integer,
              page_size: Integer,
              query: String,
              retrieval_type:
                Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType::OrSymbol,
              sources: String,
              top_k: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse
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
            # Reserved; not yet functional. A value supplied here is accepted but ignored — it
            # does not override the collection's configured strategy, and it is not echoed
            # back. Searches run `vector` retrieval, and `meta.retrieval_type` reports the
            # mode that actually ran. To change retrieval strategy, set it on the collection's
            # settings subresource.
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
end
