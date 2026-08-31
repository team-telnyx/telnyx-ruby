# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Knowledge
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        class Collections
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsParams} for more
          # details.
          #
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
          #
          # @overload retrieve_documents(slug, filter: nil, page_number: nil, page_size: nil, query: nil, retrieval_type: nil, sources: nil, top_k: nil, request_options: {})
          #
          # @param slug [String] The collection's slug (unique within your organization).
          #
          # @param filter [Hash{Symbol=>Object}] Field filters applied before ranking, using `filter[field][operator]=value`. Sup
          #
          # @param page_number [Integer] Page number to return (1-based). Defaults to 1.
          #
          # @param page_size [Integer] Number of results per page. Defaults to 20.
          #
          # @param query [String] Natural-language search query. When provided, the text is matched against the co
          #
          # @param retrieval_type [Symbol, Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType] Reserved; not yet functional. A value supplied here is accepted but ignored — it
          #
          # @param sources [String] Comma-separated list of source types to restrict the search to. When omitted, al
          #
          # @param top_k [Integer] Maximum number of ranked results to consider. When omitted, the collection's con
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse]
          #
          # @see Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsParams
          def retrieve_documents(slug, params = {})
            parsed, options = Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["ai/knowledge/collections/%1$s/documents", slug],
              query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              model: Telnyx::Models::AI::Knowledge::CollectionRetrieveDocumentsResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
