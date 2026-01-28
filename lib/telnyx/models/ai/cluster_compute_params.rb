# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Clusters#compute
      class ClusterComputeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute bucket
        #   The embedded storage bucket to compute the clusters from. The bucket must
        #   already be
        #   [embedded](https://developers.telnyx.com/api-reference/embeddings/embed-documents).
        #
        #   @return [String]
        required :bucket, String

        # @!attribute files
        #   Array of files to filter which are included.
        #
        #   @return [Array<String>, nil]
        optional :files, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute min_cluster_size
        #   Smallest number of related text chunks to qualify as a cluster. Top-level
        #   clusters should be thought of as identifying broad themes in your data.
        #
        #   @return [Integer, nil]
        optional :min_cluster_size, Integer

        # @!attribute min_subcluster_size
        #   Smallest number of related text chunks to qualify as a sub-cluster. Sub-clusters
        #   should be thought of as identifying more specific topics within a broader theme.
        #
        #   @return [Integer, nil]
        optional :min_subcluster_size, Integer

        # @!attribute prefix
        #   Prefix to filter whcih files in the buckets are included.
        #
        #   @return [String, nil]
        optional :prefix, String

        # @!method initialize(bucket:, files: nil, min_cluster_size: nil, min_subcluster_size: nil, prefix: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ClusterComputeParams} for more details.
        #
        #   @param bucket [String] The embedded storage bucket to compute the clusters from. The bucket must alread
        #
        #   @param files [Array<String>] Array of files to filter which are included.
        #
        #   @param min_cluster_size [Integer] Smallest number of related text chunks to qualify as a cluster. Top-level cluste
        #
        #   @param min_subcluster_size [Integer] Smallest number of related text chunks to qualify as a sub-cluster. Sub-clusters
        #
        #   @param prefix [String] Prefix to filter whcih files in the buckets are included.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
