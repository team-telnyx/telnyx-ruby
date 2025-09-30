# typed: strong

module Telnyx
  module Resources
    class AI
      class Clusters
        # Fetch a cluster
        sig do
          params(
            task_id: String,
            show_subclusters: T::Boolean,
            top_n_nodes: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::ClusterRetrieveResponse)
        end
        def retrieve(
          task_id,
          # Whether or not to include subclusters and their nodes in the response.
          show_subclusters: nil,
          # The number of nodes in the cluster to return in the response. Nodes will be
          # sorted by their centrality within the cluster.
          top_n_nodes: nil,
          request_options: {}
        )
        end

        # List all clusters
        sig do
          params(
            page: Telnyx::AI::ClusterListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::ClusterListResponse)
        end
        def list(
          # Consolidated page parameter (deepObject style). Originally: page[number],
          # page[size]
          page: nil,
          request_options: {}
        )
        end

        # Delete a cluster
        sig do
          params(
            task_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(task_id, request_options: {})
        end

        # Starts a background task to compute how the data in an
        # [embedded storage bucket](https://developers.telnyx.com/api/inference/inference-embedding/post-embedding)
        # is clustered. This helps identify common themes and patterns in the data.
        sig do
          params(
            bucket: String,
            files: T::Array[String],
            min_cluster_size: Integer,
            min_subcluster_size: Integer,
            prefix: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::ClusterComputeResponse)
        end
        def compute(
          # The embedded storage bucket to compute the clusters from. The bucket must
          # already be
          # [embedded](https://developers.telnyx.com/api/inference/inference-embedding/post-embedding).
          bucket:,
          # Array of files to filter which are included.
          files: nil,
          # Smallest number of related text chunks to qualify as a cluster. Top-level
          # clusters should be thought of as identifying broad themes in your data.
          min_cluster_size: nil,
          # Smallest number of related text chunks to qualify as a sub-cluster. Sub-clusters
          # should be thought of as identifying more specific topics within a broader theme.
          min_subcluster_size: nil,
          # Prefix to filter whcih files in the buckets are included.
          prefix: nil,
          request_options: {}
        )
        end

        # Fetch a cluster visualization
        sig do
          params(
            task_id: String,
            cluster_id: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def fetch_graph(task_id, cluster_id: nil, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
