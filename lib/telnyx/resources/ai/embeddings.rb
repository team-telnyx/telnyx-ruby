# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Embeddings
        # @return [Telnyx::Resources::AI::Embeddings::Buckets]
        attr_reader :buckets

        # Perform embedding on a Telnyx Storage Bucket using the a embedding model. The
        # current supported file types are:
        #
        # - PDF
        # - HTML
        # - txt/unstructured text files
        # - json
        # - csv
        # - audio / video (mp3, mp4, mpeg, mpga, m4a, wav, or webm ) - Max of 100mb file
        #   size.
        #
        # Any files not matching the above types will be attempted to be embedded as
        # unstructured text.
        #
        # This process can be slow, so it runs in the background and the user can check
        # the status of the task using the endpoint `/ai/embeddings/{task_id}`.
        #
        # **Important Note**: When you update documents in a Telnyx Storage bucket, their
        # associated embeddings are automatically kept up to date. If you add or update a
        # file, it is automatically embedded. If you delete a file, the embeddings are
        # deleted for that particular file.
        #
        # You can also specify a custom `loader` param. Currently the only supported
        # loader value is `intercom` which loads Intercom article jsons as specified by
        # [the Intercom article API](https://developers.intercom.com/docs/references/rest-api/api.intercom.io/Articles/article/)
        # This loader will split each article into paragraphs and save additional
        # parameters relevant to Intercom docs, such as `article_url` and `heading`. These
        # values will be returned by the `/v2/ai/embeddings/similarity-search` endpoint in
        # the `loader_metadata` field.
        #
        # @overload create(bucket_name:, document_chunk_overlap_size: nil, document_chunk_size: nil, embedding_model: nil, loader: nil, request_options: {})
        #
        # @param bucket_name [String]
        #
        # @param document_chunk_overlap_size [Integer]
        #
        # @param document_chunk_size [Integer]
        #
        # @param embedding_model [Symbol, Telnyx::Models::AI::EmbeddingCreateParams::EmbeddingModel] Supported models to vectorize and embed documents.
        #
        # @param loader [Symbol, Telnyx::Models::AI::EmbeddingCreateParams::Loader] Supported types of custom document loaders for embeddings.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::EmbeddingResponse]
        #
        # @see Telnyx::Models::AI::EmbeddingCreateParams
        def create(params)
          parsed, options = Telnyx::AI::EmbeddingCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/embeddings",
            body: parsed,
            model: Telnyx::AI::EmbeddingResponse,
            options: options
          )
        end

        # Check the status of a current embedding task. Will be one of the following:
        #
        # - `queued` - Task is waiting to be picked up by a worker
        # - `processing` - The embedding task is running
        # - `success` - Task completed successfully and the bucket is embedded
        # - `failure` - Task failed and no files were embedded successfully
        # - `partial_success` - Some files were embedded successfully, but at least one
        #   failed
        #
        # @overload retrieve(task_id, request_options: {})
        #
        # @param task_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::EmbeddingRetrieveResponse]
        #
        # @see Telnyx::Models::AI::EmbeddingRetrieveParams
        def retrieve(task_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/embeddings/%1$s", task_id],
            model: Telnyx::Models::AI::EmbeddingRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Retrieve tasks for the user that are either `queued`, `processing`, `failed`,
        # `success` or `partial_success` based on the query string. Defaults to `queued`
        # and `processing`.
        #
        # @overload list(status: nil, request_options: {})
        #
        # @param status [Array<String>] List of task statuses i.e. `status=queued&status=processing`
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::EmbeddingListResponse]
        #
        # @see Telnyx::Models::AI::EmbeddingListParams
        def list(params = {})
          parsed, options = Telnyx::AI::EmbeddingListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "ai/embeddings",
            query: parsed,
            model: Telnyx::Models::AI::EmbeddingListResponse,
            options: options
          )
        end

        # Perform a similarity search on a Telnyx Storage Bucket, returning the most
        # similar `num_docs` document chunks to the query.
        #
        # Currently the only available distance metric is cosine similarity which will
        # return a `distance` between 0 and 1. The lower the distance, the more similar
        # the returned document chunks are to the query. A `certainty` will also be
        # returned, which is a value between 0 and 1 where the higher the certainty, the
        # more similar the document. You can read more about Weaviate distance metrics
        # here:
        # [Weaviate Docs](https://weaviate.io/developers/weaviate/config-refs/distances)
        #
        # If a bucket was embedded using a custom loader, such as `intercom`, the
        # additional metadata will be returned in the `loader_metadata` field.
        #
        # @overload similarity_search(bucket_name:, query:, num_of_docs: nil, request_options: {})
        #
        # @param bucket_name [String]
        # @param query [String]
        # @param num_of_docs [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::EmbeddingSimilaritySearchResponse]
        #
        # @see Telnyx::Models::AI::EmbeddingSimilaritySearchParams
        def similarity_search(params)
          parsed, options = Telnyx::AI::EmbeddingSimilaritySearchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/embeddings/similarity-search",
            body: parsed,
            model: Telnyx::Models::AI::EmbeddingSimilaritySearchResponse,
            options: options
          )
        end

        # Embed website content from a specified URL, including child pages up to 5 levels
        # deep within the same domain. The process crawls and loads content from the main
        # URL and its linked pages into a Telnyx Cloud Storage bucket. As soon as each
        # webpage is added to the bucket, its content is immediately processed for
        # embeddings, that can be used for
        # [similarity search](https://developers.telnyx.com/api-reference/embeddings/search-for-documents)
        # and [clustering](https://developers.telnyx.com/docs/inference/clusters).
        #
        # @overload url(bucket_name:, url:, request_options: {})
        #
        # @param bucket_name [String] Name of the bucket to store the embeddings. This bucket must already exist.
        #
        # @param url [String] The URL of the webpage to embed
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::EmbeddingResponse]
        #
        # @see Telnyx::Models::AI::EmbeddingURLParams
        def url(params)
          parsed, options = Telnyx::AI::EmbeddingURLParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/embeddings/url",
            body: parsed,
            model: Telnyx::AI::EmbeddingResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @buckets = Telnyx::Resources::AI::Embeddings::Buckets.new(client: client)
        end
      end
    end
  end
end
