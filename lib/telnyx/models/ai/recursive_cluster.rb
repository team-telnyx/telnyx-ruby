# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class RecursiveCluster < Telnyx::Internal::Type::BaseModel
        # @!attribute cluster_id
        #
        #   @return [String]
        required :cluster_id, String

        # @!attribute cluster_summary
        #
        #   @return [String]
        required :cluster_summary, String

        # @!attribute total_number_of_nodes
        #
        #   @return [Integer]
        required :total_number_of_nodes, Integer

        # @!attribute cluster_header
        #
        #   @return [String, nil]
        optional :cluster_header, String

        # @!attribute nodes
        #
        #   @return [Array<Telnyx::Models::AI::RecursiveCluster::Node>, nil]
        optional :nodes, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::RecursiveCluster::Node] }

        # @!attribute subclusters
        #
        #   @return [Array<Telnyx::Models::AI::RecursiveCluster>, nil]
        optional :subclusters, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::RecursiveCluster] }

        # @!method initialize(cluster_id:, cluster_summary:, total_number_of_nodes:, cluster_header: nil, nodes: nil, subclusters: nil)
        #   @param cluster_id [String]
        #   @param cluster_summary [String]
        #   @param total_number_of_nodes [Integer]
        #   @param cluster_header [String]
        #   @param nodes [Array<Telnyx::Models::AI::RecursiveCluster::Node>]
        #   @param subclusters [Array<Telnyx::Models::AI::RecursiveCluster>]

        class Node < Telnyx::Internal::Type::BaseModel
          # @!attribute filename
          #   The corresponding source file of your embedded storage bucket that the node is
          #   from.
          #
          #   @return [String]
          required :filename, String

          # @!attribute text
          #   The text of the node.
          #
          #   @return [String]
          required :text, String

          # @!method initialize(filename:, text:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::RecursiveCluster::Node} for more details.
          #
          #   @param filename [String] The corresponding source file of your embedded storage bucket that the node is f
          #
          #   @param text [String] The text of the node.
        end
      end
    end
  end
end
