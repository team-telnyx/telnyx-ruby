# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Clusters#retrieve
      class ClusterRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute show_subclusters
        #   Whether or not to include subclusters and their nodes in the response.
        #
        #   @return [Boolean, nil]
        optional :show_subclusters, Telnyx::Internal::Type::Boolean

        # @!attribute top_n_nodes
        #   The number of nodes in the cluster to return in the response. Nodes will be
        #   sorted by their centrality within the cluster.
        #
        #   @return [Integer, nil]
        optional :top_n_nodes, Integer

        # @!method initialize(show_subclusters: nil, top_n_nodes: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ClusterRetrieveParams} for more details.
        #
        #   @param show_subclusters [Boolean] Whether or not to include subclusters and their nodes in the response.
        #
        #   @param top_n_nodes [Integer] The number of nodes in the cluster to return in the response. Nodes will be sort
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
