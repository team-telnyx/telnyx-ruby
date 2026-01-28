# typed: strong

module Telnyx
  module Models
    module AI
      class ClusterComputeParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ClusterComputeParams, Telnyx::Internal::AnyHash)
          end

        # The embedded storage bucket to compute the clusters from. The bucket must
        # already be
        # [embedded](https://developers.telnyx.com/api-reference/embeddings/embed-documents).
        sig { returns(String) }
        attr_accessor :bucket

        # Array of files to filter which are included.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :files

        sig { params(files: T::Array[String]).void }
        attr_writer :files

        # Smallest number of related text chunks to qualify as a cluster. Top-level
        # clusters should be thought of as identifying broad themes in your data.
        sig { returns(T.nilable(Integer)) }
        attr_reader :min_cluster_size

        sig { params(min_cluster_size: Integer).void }
        attr_writer :min_cluster_size

        # Smallest number of related text chunks to qualify as a sub-cluster. Sub-clusters
        # should be thought of as identifying more specific topics within a broader theme.
        sig { returns(T.nilable(Integer)) }
        attr_reader :min_subcluster_size

        sig { params(min_subcluster_size: Integer).void }
        attr_writer :min_subcluster_size

        # Prefix to filter whcih files in the buckets are included.
        sig { returns(T.nilable(String)) }
        attr_reader :prefix

        sig { params(prefix: String).void }
        attr_writer :prefix

        sig do
          params(
            bucket: String,
            files: T::Array[String],
            min_cluster_size: Integer,
            min_subcluster_size: Integer,
            prefix: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The embedded storage bucket to compute the clusters from. The bucket must
          # already be
          # [embedded](https://developers.telnyx.com/api-reference/embeddings/embed-documents).
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

        sig do
          override.returns(
            {
              bucket: String,
              files: T::Array[String],
              min_cluster_size: Integer,
              min_subcluster_size: Integer,
              prefix: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
