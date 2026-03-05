# typed: strong

module Telnyx
  module Models
    module AI
      class ClusterRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ClusterRetrieveParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :task_id

        # Whether or not to include subclusters and their nodes in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_subclusters

        sig { params(show_subclusters: T::Boolean).void }
        attr_writer :show_subclusters

        # The number of nodes in the cluster to return in the response. Nodes will be
        # sorted by their centrality within the cluster.
        sig { returns(T.nilable(Integer)) }
        attr_reader :top_n_nodes

        sig { params(top_n_nodes: Integer).void }
        attr_writer :top_n_nodes

        sig do
          params(
            task_id: String,
            show_subclusters: T::Boolean,
            top_n_nodes: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          task_id:,
          # Whether or not to include subclusters and their nodes in the response.
          show_subclusters: nil,
          # The number of nodes in the cluster to return in the response. Nodes will be
          # sorted by their centrality within the cluster.
          top_n_nodes: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              task_id: String,
              show_subclusters: T::Boolean,
              top_n_nodes: Integer,
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
