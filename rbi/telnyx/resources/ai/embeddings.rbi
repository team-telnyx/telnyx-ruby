# typed: strong

module Telnyx
  module Resources
    class AI
      class Embeddings
        sig { returns(Telnyx::Resources::AI::Embeddings::Buckets) }
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
        sig do
          params(
            bucket_name: String,
            document_chunk_overlap_size: Integer,
            document_chunk_size: Integer,
            embedding_model:
              Telnyx::AI::EmbeddingCreateParams::EmbeddingModel::OrSymbol,
            loader: Telnyx::AI::EmbeddingCreateParams::Loader::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::EmbeddingResponse)
        end
        def create(
          bucket_name:,
          document_chunk_overlap_size: nil,
          document_chunk_size: nil,
          # Supported models to vectorize and embed documents.
          embedding_model: nil,
          # Supported types of custom document loaders for embeddings.
          loader: nil,
          request_options: {}
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
        sig do
          params(
            task_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::EmbeddingRetrieveResponse)
        end
        def retrieve(task_id, request_options: {})
        end

        # Retrieve tasks for the user that are either `queued`, `processing`, `failed`,
        # `success` or `partial_success` based on the query string. Defaults to `queued`
        # and `processing`.
        sig do
          params(
            status: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::EmbeddingListResponse)
        end
        def list(
          # List of task statuses i.e. `status=queued&status=processing`
          status: nil,
          request_options: {}
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
        sig do
          params(
            bucket_name: String,
            query: String,
            num_of_docs: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::EmbeddingSimilaritySearchResponse)
        end
        def similarity_search(
          bucket_name:,
          query:,
          num_of_docs: nil,
          request_options: {}
        )
        end

        # Embed website content from a specified URL, including child pages up to 5 levels
        # deep within the same domain. The process crawls and loads content from the main
        # URL and its linked pages into a Telnyx Cloud Storage bucket. As soon as each
        # webpage is added to the bucket, its content is immediately processed for
        # embeddings, that can be used for
        # [similarity search](https://developers.telnyx.com/api/inference/inference-embedding/post-embedding-similarity-search)
        # and [clustering](https://developers.telnyx.com/docs/inference/clusters).
        sig do
          params(
            bucket_name: String,
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::EmbeddingResponse)
        end
        def url(
          # Name of the bucket to store the embeddings. This bucket must already exist.
          bucket_name:,
          # The URL of the webpage to embed
          url:,
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
