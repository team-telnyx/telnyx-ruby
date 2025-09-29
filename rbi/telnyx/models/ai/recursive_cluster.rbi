# typed: strong

module Telnyx
  module Models
    module AI
      class RecursiveCluster < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::RecursiveCluster, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :cluster_id

        sig { returns(String) }
        attr_accessor :cluster_summary

        sig { returns(Integer) }
        attr_accessor :total_number_of_nodes

        sig { returns(T.nilable(String)) }
        attr_reader :cluster_header

        sig { params(cluster_header: String).void }
        attr_writer :cluster_header

        sig { returns(T.nilable(T::Array[Telnyx::AI::RecursiveCluster::Node])) }
        attr_reader :nodes

        sig do
          params(
            nodes: T::Array[Telnyx::AI::RecursiveCluster::Node::OrHash]
          ).void
        end
        attr_writer :nodes

        sig { returns(T.nilable(T::Array[Telnyx::AI::RecursiveCluster])) }
        attr_reader :subclusters

        sig { params(subclusters: T::Array[Telnyx::AI::RecursiveCluster]).void }
        attr_writer :subclusters

        sig do
          params(
            cluster_id: String,
            cluster_summary: String,
            total_number_of_nodes: Integer,
            cluster_header: String,
            nodes: T::Array[Telnyx::AI::RecursiveCluster::Node::OrHash],
            subclusters: T::Array[Telnyx::AI::RecursiveCluster]
          ).returns(T.attached_class)
        end
        def self.new(
          cluster_id:,
          cluster_summary:,
          total_number_of_nodes:,
          cluster_header: nil,
          nodes: nil,
          subclusters: nil
        )
        end

        sig do
          override.returns(
            {
              cluster_id: String,
              cluster_summary: String,
              total_number_of_nodes: Integer,
              cluster_header: String,
              nodes: T::Array[Telnyx::AI::RecursiveCluster::Node],
              subclusters: T::Array[Telnyx::AI::RecursiveCluster]
            }
          )
        end
        def to_hash
        end

        class Node < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::RecursiveCluster::Node,
                Telnyx::Internal::AnyHash
              )
            end

          # The corresponding source file of your embedded storage bucket that the node is
          # from.
          sig { returns(String) }
          attr_accessor :filename

          # The text of the node.
          sig { returns(String) }
          attr_accessor :text

          sig do
            params(filename: String, text: String).returns(T.attached_class)
          end
          def self.new(
            # The corresponding source file of your embedded storage bucket that the node is
            # from.
            filename:,
            # The text of the node.
            text:
          )
          end

          sig { override.returns({ filename: String, text: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
