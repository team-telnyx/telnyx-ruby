# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Clusters
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::ClusterRetrieveParams} for more details.
        #
        # Fetch a cluster
        #
        # @overload retrieve(task_id, show_subclusters: nil, top_n_nodes: nil, request_options: {})
        #
        # @param task_id [String]
        #
        # @param show_subclusters [Boolean] Whether or not to include subclusters and their nodes in the response.
        #
        # @param top_n_nodes [Integer] The number of nodes in the cluster to return in the response. Nodes will be sort
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::ClusterRetrieveResponse]
        #
        # @see Telnyx::Models::AI::ClusterRetrieveParams
        def retrieve(task_id, params = {})
          parsed, options = Telnyx::AI::ClusterRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["ai/clusters/%1$s", task_id],
            query: parsed,
            model: Telnyx::Models::AI::ClusterRetrieveResponse,
            options: options
          )
        end

        # List all clusters
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::ClusterListResponse>]
        #
        # @see Telnyx::Models::AI::ClusterListParams
        def list(params = {})
          parsed, options = Telnyx::AI::ClusterListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "ai/clusters",
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::AI::ClusterListResponse,
            options: options
          )
        end

        # Delete a cluster
        #
        # @overload delete(task_id, request_options: {})
        #
        # @param task_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::AI::ClusterDeleteParams
        def delete(task_id, params = {})
          @client.request(
            method: :delete,
            path: ["ai/clusters/%1$s", task_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::ClusterComputeParams} for more details.
        #
        # Starts a background task to compute how the data in an
        # [embedded storage bucket](https://developers.telnyx.com/api-reference/embeddings/embed-documents)
        # is clustered. This helps identify common themes and patterns in the data.
        #
        # @overload compute(bucket:, files: nil, min_cluster_size: nil, min_subcluster_size: nil, prefix: nil, request_options: {})
        #
        # @param bucket [String] The embedded storage bucket to compute the clusters from. The bucket must alread
        #
        # @param files [Array<String>] Array of files to filter which are included.
        #
        # @param min_cluster_size [Integer] Smallest number of related text chunks to qualify as a cluster. Top-level cluste
        #
        # @param min_subcluster_size [Integer] Smallest number of related text chunks to qualify as a sub-cluster. Sub-clusters
        #
        # @param prefix [String] Prefix to filter whcih files in the buckets are included.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::ClusterComputeResponse]
        #
        # @see Telnyx::Models::AI::ClusterComputeParams
        def compute(params)
          parsed, options = Telnyx::AI::ClusterComputeParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/clusters",
            body: parsed,
            model: Telnyx::Models::AI::ClusterComputeResponse,
            options: options
          )
        end

        # Fetch a cluster visualization
        #
        # @overload fetch_graph(task_id, cluster_id: nil, request_options: {})
        #
        # @param task_id [String]
        # @param cluster_id [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see Telnyx::Models::AI::ClusterFetchGraphParams
        def fetch_graph(task_id, params = {})
          parsed, options = Telnyx::AI::ClusterFetchGraphParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["ai/clusters/%1$s/graph", task_id],
            query: parsed,
            headers: {"accept" => "image/png"},
            model: StringIO,
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
